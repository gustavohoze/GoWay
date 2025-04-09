import SwiftUI
struct ListView: View {
    var buildings: [Building] // Directly accept the filtered list of buildings
    @Binding var distances: [UUID: Double]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(buildings) { building in
                    BuildingCard(building: building, distances: $distances)
                }
            }
            .padding()
        }
    }
}

