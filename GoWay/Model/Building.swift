import Foundation
import CoreLocation

class Building: Identifiable, Codable {
    let id: UUID
    let name: String
    let categories: [String]
    let description: String
    let latitude: Double
    let longitude: Double
    let image: String
    
    var location: CLLocation {
        return CLLocation(latitude: latitude, longitude: longitude)
    }
    
    init(id: UUID = UUID(), name: String, categories: [String], description: String, latitude: Double, longitude: Double, image: String) {
        self.id = id
        self.name = name
        self.categories = categories
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.image = image
    }
}
