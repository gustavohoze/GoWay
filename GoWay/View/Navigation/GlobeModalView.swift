import SwiftUI
import MapKit
import CoreLocation
import Combine

struct MapLocation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct GlobeModalView: View {
    var buildingLatitude: CLLocationDegrees
    var buildingLongitude: CLLocationDegrees
    @Environment(\.dismiss) private var dismiss
    
    @StateObject private var locationManager = LocationManager()
    
    @State private var cameraPosition: MapCameraPosition
    @State private var routePolyline: MKPolyline?
    @State private var selectedRoute: MKRoute?
    @State private var hasCalculatedInitialRoute = false
    
    // Create a MapLocation instance for the building location
    private var buildingLocation: MapLocation {
        MapLocation(coordinate: CLLocationCoordinate2D(latitude: buildingLatitude, longitude: buildingLongitude))
    }
    
    init(buildingLatitude: CLLocationDegrees, buildingLongitude: CLLocationDegrees) {
        self.buildingLatitude = buildingLatitude
        self.buildingLongitude = buildingLongitude
        
        // Initialize camera position with the building's location
        _cameraPosition = State(initialValue: .camera(MapCamera(
            centerCoordinate: CLLocationCoordinate2D(latitude: buildingLatitude, longitude: buildingLongitude),
            distance: 1000, // Approximate distance in meters
            heading: 0,
            pitch: 0
        )))
    }
    
    var body: some View {
        
        ZStack {
            Color.white
            VStack {
                Text("Building Location Map")
                    .font(.title)
                    .padding()
                
                // Display the map with user location and building location
                Map(position: $cameraPosition, interactionModes: .all) {
                    // User location marker
                    UserAnnotation()
                    
                    // Building location marker
                    Marker("Destination", coordinate: buildingLocation.coordinate)
                        .tint(.blue)
                    
                    // Render route polyline if available
                    if let polyline = routePolyline {
                        MapPolyline(polyline)
                            .stroke(.blue, lineWidth: 5)
                    }
                }
                .mapStyle(.standard(elevation: .realistic))
                .frame(height: 400)
                .onAppear {
                    // Attempt to calculate route only once
                    if !hasCalculatedInitialRoute {
                        calculateRouteWhenReady()
                    }
                }
                
                // Show directions from the user's location to the building if available
                if let route = selectedRoute {
                    VStack(alignment: .center, spacing: 10) {
//                        Text("Directions:")
//                            .font(.headline)
//                        
//                        // Display step-by-step instructions
//                        ForEach(route.steps.indices, id: \.self) { index in
//                            HStack {
//                                Text("\(index + 1).")
//                                    .foregroundColor(.secondary)
//                                Text(route.steps[index].instructions)
//                            }
//                            .font(.body)
//                            .padding(.vertical, 2)
//                        }
                        
                        HStack {
                            Text("Estimated Time:")
                                .fontWeight(.semibold)
                            Text(String(format: "%.0f minutes", route.expectedTravelTime / 60))
                        }
                    }
                    .padding()
                }
                
                Button("Close") {
                    dismiss()  // Close the modal
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .foregroundStyle(Color.black)
            .padding()
            .onReceive(locationManager.$userLocation) { location in
                // Recalculate route if location changes and route hasn't been calculated
                if !hasCalculatedInitialRoute, let _ = location {
                    calculateRouteWhenReady()
                }
            }
        }
    }
    
    private func calculateRouteWhenReady() {
        // Check location authorization status
        guard CLLocationManager().authorizationStatus == .authorizedWhenInUse ||
              CLLocationManager().authorizationStatus == .authorizedAlways else {
            print("Location authorization not granted")
            return
        }
        
        // Try to get directions if location is available
        if let userLocation = locationManager.userLocation {
            getDirections(from: userLocation)
            hasCalculatedInitialRoute = true
        }
    }
    
    private func getDirections(from userLocation: CLLocation) {
        let userPlacemark = MKPlacemark(coordinate: userLocation.coordinate)
        let destinationPlacemark = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: buildingLatitude, longitude: buildingLongitude))
        
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: userPlacemark)
        request.destination = MKMapItem(placemark: destinationPlacemark)
        request.transportType = .any
        
        let directions = MKDirections(request: request)
        directions.calculate { response, error in
            if let error = error {
                print("Error calculating directions: \(error)")
                return
            }
            
            guard let route = response?.routes.first else {
                print("No routes found")
                return
            }
            
            // Update on the main thread
            DispatchQueue.main.async {
                // Store the route polyline for rendering
                self.routePolyline = route.polyline
                self.selectedRoute = route
                
                // Adjust camera to show entire route
                let rect = route.polyline.boundingMapRect
                self.cameraPosition = .rect(rect)
            }
        }
    }
}

#Preview {
    GlobeModalView(buildingLatitude: 37.7749, buildingLongitude: -122.4194) // Example coordinates
}
