import Foundation

class BuswayBuilding: Building {
    var busSchedule: [String]  // Array of strings representing bus routes
    
    // Custom initializer
    init(id: UUID, name: String, categories: [String], description: String, latitude: Double, longitude: Double, image: String, busSchedule: [String]) {
        self.busSchedule = busSchedule
        super.init(id: id, name: name, categories: categories, description: description, latitude: latitude, longitude: longitude, image: image)
    }
    
    // Required initializer to conform to Codable
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // Decode the busRoutes
        busSchedule = try container.decode([String].self, forKey: .busRoutes)
        
        // Decode the parent class properties
        let id = try container.decode(UUID.self, forKey: .id)
        let name = try container.decode(String.self, forKey: .name)
        let categories = try container.decode([String].self, forKey: .categories)
        let description = try container.decode(String.self, forKey: .description)
        let latitude = try container.decode(Double.self, forKey: .latitude)
        let longitude = try container.decode(Double.self, forKey: .longitude)
        let image = try container.decode(String.self, forKey: .image)
        
        // Initialize the parent class
        super.init(id: id, name: name, categories: categories, description: description, latitude: latitude, longitude: longitude, image: image)
    }
    
    // Encoding function to conform to Codable
    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        // Encode the busRoutes
        try container.encode(busSchedule, forKey: .busRoutes)
        
        // Encode the parent class properties
        try super.encode(to: encoder)
    }
    
    // CodingKeys for BuswayBuilding
    enum CodingKeys: String, CodingKey {
        case busRoutes
        case id
        case name
        case categories
        case description
        case latitude
        case longitude
        case image
    }
}
