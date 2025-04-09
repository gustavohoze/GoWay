import SwiftUI

struct StepNavigationView: View {
    // Configuration
    @State var currentStep: Int = 0
    let facility: Facility
    let onDismiss: () -> Void
    
    // Optional configuration for customization
    var activeColor: Color = .blue
    var inactiveColor: Color = .gray
    
    private func indexInVisibleRange() -> CGFloat {
        _ = facility.stepGuides.count
        let visibleStepsArray = Array(visibleSteps)
        
        // Find the index of the current step within the visible steps
        guard let indexInRange = visibleStepsArray.firstIndex(of: currentStep) else {
            return 0
        }
        
        return CGFloat(indexInRange)
    }
    
    // Computed property to determine visible steps
    private var visibleSteps: Range<Int> {
        let totalSteps = facility.stepGuides.count
        
        if totalSteps <= 3 {
            // If total steps are 3 or less, show all
            return 0..<totalSteps
        }
        
        if currentStep == 0 {
            // First step: show first 3 steps
            return 0..<3
        }
        
        if currentStep == totalSteps - 1 {
            // Last step: show last 3 steps
            return (totalSteps - 3)..<totalSteps
        }
        
        // Middle steps: show current step and adjacent steps
        return (currentStep - 1)..<(currentStep + 2)
    }
    
    var body: some View {
        ZStack {
            VStack {
                Image(facility.stepGuides[currentStep].image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 422)
                    .clipped()
                    .edgesIgnoringSafeArea(.top)
                
                Spacer()
            }
            
            ZStack {
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 45)
                        .fill(Color.white)
                        .frame(height: 450)
                }
                
                VStack {
                    Spacer()
                    VStack(spacing: 0) {
                        // Header
                        VStack {
                            Text(facility.name)
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        .padding(.bottom, 60)
                        
                        // Progress Indicator
                        HStack(alignment: .center) {
                            // Vertical Line and Dots
                            VStack(spacing: 15) {
                                ForEach(visibleSteps, id: \.self) { index in
                                    Circle()
                                        .fill(index <= currentStep ? activeColor : inactiveColor)
                                        .frame(width: 20, height: 20)
                                        .opacity(index < facility.stepGuides.count ? 1.0 : 0.0)
                                }
                            }
                            .overlay(
                                // Vertical Line Behind Dots with Dynamic Centering
                                // Vertical Line Behind Dots with Dynamfic Centering
                                GeometryReader { geometry in
                                    ZStack(alignment: .center) {
                                        // Inactive background line
                                        Rectangle()
                                            .fill(inactiveColor.opacity(0.3))
                                            .frame(width: 2)
                                            .frame(height: geometry.size.height - 40) // Subtract circle diameters
                                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                                        
                                        // Active colored line
                                        Rectangle()
                                            .fill(activeColor)
                                            .frame(width: 2)
                                            .frame(height: (geometry.size.height - 40) * CGFloat(indexInVisibleRange()) / CGFloat(visibleSteps.count - 1))
                                            .position(x: geometry.size.width / 2, y: 20 + (geometry.size.height - 40) * CGFloat(indexInVisibleRange()) / CGFloat(visibleSteps.count - 1) / 2)
                                    }
                                }
                            )
                            
                            // Step Labels
                            VStack(alignment: .leading, spacing: 15) {
                                ForEach(visibleSteps, id: \.self) { index in
                                    Text(facility.stepGuides[index].description)
                                        .foregroundColor(index <= currentStep ? .black : inactiveColor)
                                        .font(.body)
                                        .opacity(index < facility.stepGuides.count ? 1.0 : 0.0)
                                }
                            }
                            .padding(.leading, 25)
                        }
                        .padding(.bottom, 70)
                        
                        // Navigation Buttons
                        HStack(spacing: 50) {
                            // Previous Button
                            Button(action: {
                                withAnimation {
                                    if currentStep > 0 {
                                        currentStep -= 1
                                    }
                                }
                            }) {
                                Image(systemName: "chevron.left")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(activeColor)
                                    .padding()
                                    .background(activeColor.opacity(0.1))
                                    .clipShape(Circle())
                            }
                            .disabled(currentStep == 0)
                            
                            // Next Button
                            Button(action: {
                                withAnimation {
                                    if currentStep < facility.stepGuides.count - 1 {
                                        currentStep += 1
                                    }
                                }
                            }) {
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(activeColor)
                                    .padding()
                                    .background(activeColor.opacity(0.1))
                                    .clipShape(Circle())
                            }
                            .disabled(currentStep == facility.stepGuides.count - 1)
                        }
                    }
                    .padding()
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

// Preview for Xcode
#Preview {
    let sampleFacility = Facility(
        name: "Bathroom",
        imageName: "bathroom",
        stepGuides: [
            FacilitiesStepGuide(image: "gop_1", description: "Turn Left"),
            FacilitiesStepGuide(image: "gop_2", description: "Turn Right"),
            FacilitiesStepGuide(image: "gop_3", description: "Go straight"),
            FacilitiesStepGuide(image: "gop_4", description: "Turn Left"),
            FacilitiesStepGuide(image: "gop_5", description: "Turn Right")
        ]
    )
    
    return StepNavigationView(
        facility: sampleFacility,
        onDismiss: {}
    )
}
