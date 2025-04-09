import Foundation

struct FacilitiesStepGuide: Codable {
    let image: String
    let description: String
    
    init(image: String, description: String) {
        self.image = image
        self.description = description
    }
}

