import SwiftUI
import MapKit

struct BuildingDetailView: View {
    var building: Building
    @State private var showMap: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                // Image at the top
                Image(building.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 405, height: 270)
                    .clipped()
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [Color.black.opacity(1),Color.black.opacity(0.2), Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
                            .frame(width: 405, height: 270)
                    )
                Spacer() // Space at the bottom to push content up
            }
            
            VStack {
                // Top Bar with Back and Globe buttons
                HStack {
                    BackButton().padding(.leading, 20)
                    Spacer()
                    GlobeButton {
                        showMap.toggle()  // Show the map modal when clicked
                    }
                    .padding(.trailing, 30)
                }
                .padding(.top, 50)  // Adjust top padding for the buttons
                
                Spacer()  // Make sure content is aligned properly
            }
            
            // Main content below the top bar
            VStack(alignment: .center, spacing: 16) {
                Spacer().frame(height: 160) // Adjust top spacing to avoid overlap
                
                // Building Details Section
                BuildingDetails(building: building)
                    .padding(.top, 30)
                
                // Facilities Section
                FacilitiesSection(building: building)
                    .padding(.horizontal, 30)
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .ignoresSafeArea(edges: .top)
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $showMap) {
            // Pass the building's latitude and longitude to the map modal
            GlobeModalView(buildingLatitude: building.latitude, buildingLongitude: building.longitude)
        }
    }
}

#Preview {
    BuildingDetailView(building: BuildingData.facilitiesBuildings[0])
}
