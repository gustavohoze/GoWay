import SwiftUI
import CoreLocation

struct HomeView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var selectedCategories: Set<String> = []
    @State private var searchText: String = ""
    @State private var buildingDistances: [UUID: Double] = [:] // Distance cache
    
    // Computed property to filter and sort buildings
    var filteredBuildings: [Building] {
        var filtered = BuildingData.facilitiesBuildings + BuildingData.buswayBuildings
        
        if !selectedCategories.isEmpty {
            filtered = filtered.filter { building in
                building.categories.contains { selectedCategories.contains($0) }
            }
        }
        
        if !searchText.isEmpty {
            filtered = filtered.filter { building in
                if let busway = building as? BuswayBuilding {
                    return busway.busSchedule.contains { $0.lowercased().contains(searchText.lowercased()) }
                } else if let facilities = building as? FacilitiesBuilding {
                    let nameMatch = facilities.name.lowercased().contains(searchText.lowercased())
                    let facilityMatch = facilities.facilities.contains {
                        $0.name.lowercased().contains(searchText.lowercased())
                    }
                    return nameMatch || facilityMatch
                }
                return false
            }
        }
        
        // Sort by distance if available
        return filtered.sorted {
            let d1 = buildingDistances[$0.id] ?? Double.greatestFiniteMagnitude
            let d2 = buildingDistances[$1.id] ?? Double.greatestFiniteMagnitude
            return d1 < d2
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 10) {
                    GreetingHome(greeting: getGreeting())
                    
                    SearchBar(searchText: $searchText)
                    
                    FilterCard(selectedCategories: $selectedCategories)
                        .padding(.horizontal, 24)
                    
                    ScrollView {
                        LazyVStack {
                            ForEach(filteredBuildings) { building in
                                BuildingCard(
                                    building: building,
                                    distances: $buildingDistances
                                )
                            }
                        }
                    }
                }
                .padding(.top, 15)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

#Preview{
    HomeView()
}
