import Foundation

class FacilitiesBuilding: Building {
    var facilities: [Facility]
    
    // Custom initializer for FacilitiesBuilding
    init(id: UUID, name: String, categories: [String], description: String, latitude: Double, longitude: Double, image: String, facilities: [Facility]) {
        self.facilities = facilities
        super.init(id: id, name: name, categories: categories, description: description, latitude: latitude, longitude: longitude, image: image)
    }
    
    // Required initializer for Codable
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // Decode the properties specific to FacilitiesBuilding
        facilities = try container.decode([Facility].self, forKey: .facilities)
        
        // Decode the parent class properties
        let id = try container.decode(UUID.self, forKey: .id)
        let name = try container.decode(String.self, forKey: .name)
        let categories = try container.decode([String].self, forKey: .categories)
        let description = try container.decode(String.self, forKey: .description)
        let latitude = try container.decode(Double.self, forKey: .latitude)
        let longitude = try container.decode(Double.self, forKey: .longitude)
        let image = try container.decode(String.self, forKey: .image)
        
        // Call the parent class's initializer
        super.init(id: id, name: name, categories: categories, description: description, latitude: latitude, longitude: longitude, image: image)
    }
    
    // Encoding function for Codable
    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        // Encode the properties specific to FacilitiesBuilding
        try container.encode(facilities, forKey: .facilities)
        
        // Encode the parent class properties
        try super.encode(to: encoder)
    }
    
    // CodingKeys for FacilitiesBuilding
    enum CodingKeys: String, CodingKey {
        case facilities
        case id
        case name
        case categories
        case description
        case latitude
        case longitude
        case image
    }
}
