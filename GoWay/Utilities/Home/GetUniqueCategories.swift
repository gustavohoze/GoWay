import Foundation

// Function to get unique categories from an array
func getUniqueCategories(from buildings: [Building]) -> [String] {
    var uniqueCategories = [String]()
    var seenCategories = Set<String>()
    for building in buildings {
        for category in building.categories {
            if !seenCategories.contains(category) {
                        seenCategories.insert(category)
                        uniqueCategories.append(category)
                    }
        }
    }
    return uniqueCategories
}

