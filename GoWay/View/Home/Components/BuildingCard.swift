import SwiftUI
import CoreLocation

struct BuildingCard: View {
    var building: Building
    @Binding var distances: [UUID: Double]
    
    @StateObject private var locationManager = LocationManager()
    @State private var distanceText: String = "..."
    
    var body: some View {
        NavigationLink(destination: BuildingDetailView(building: building)) {
            HStack {
                Image(building.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 10) {
                    Spacer()
                    
                    HStack {
                        Text(building.name)
                            .foregroundColor(.black)
                            .font(.subheadline)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text(distanceText)
                            .foregroundColor(.black)
                            .font(.caption2)
                    }

                    
                    Text(building.categories.joined(separator: ", "))
                        .font(.caption)
                        .foregroundColor(.blue)

                    
                    Text(building.description)
                        .foregroundColor(.black)
                        .frame(width: 180,height: 40, alignment: .leading)
                        .font(.caption2)
                        .lineLimit(2)
                        .truncationMode(.tail)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    
                }
                .padding(.horizontal, 10)
            }
            .frame(maxWidth: 330, maxHeight: 100)
            .padding()
            .background(Color.white)
            //            .cornerRadius(15)
            //            .shadow(radius: 2)
            .padding(5)
        }.navigationBarBackButtonHidden(true)
            .task {
                await calculateDistance()
            }
    }
    
    private func calculateDistance() async {
        guard let userLocation = locationManager.userLocation else { return }
        let buildingLocation = CLLocation(latitude: building.latitude, longitude: building.longitude)
        let distanceInMeters = userLocation.distance(from: buildingLocation)
        let distanceInKilometers = distanceInMeters / 1000
        let formatted = String(format: "%.2f KM", distanceInKilometers)
        
        DispatchQueue.main.async {
            self.distanceText = formatted
            self.distances[building.id] = distanceInMeters
        }
    }
    
    private func formatBuildingName(_ name: String) -> String {
        if name.hasPrefix("Green Office Park") {
            let numberPart = name.dropFirst("Green Office Park".count).trimmingCharacters(in: .whitespaces)
            return "GOP \(numberPart)"
        } else {
            return name
        }
    }
}

