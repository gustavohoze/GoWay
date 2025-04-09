import Foundation

struct Facility: Identifiable, Codable {
    let id: UUID
    let name: String
    let imageName: String
    var stepGuides: [FacilitiesStepGuide] // Array to store the step guides

    init(id: UUID = UUID(), name: String,  imageName: String, stepGuides: [FacilitiesStepGuide] = []) {
        self.id = id
        self.name = name
        self.imageName = imageName  
        self.stepGuides = stepGuides
    }
}
