import Foundation

var buildings = BuildingData.buswayBuildings + BuildingData.facilitiesBuildings

func fetchBuilding() -> [Building]{
    return buildings
}

func filterBuildingByFilterButton(selectedFilter: Set<String>) -> [Building] {
    // Filter buildings based on selected categories
    let filteredBuildings = buildings.filter { building in
        // Check if any category in the building's categories is in the selectedFilter
        return building.categories.contains { selectedFilter.contains($0) }
    }
    
    return filteredBuildings
}

func updateView(buildings : [Building]){

}
