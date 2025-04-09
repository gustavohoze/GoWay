import SwiftUI

struct StepNavigationView: View {
    // Configuration
    @State var currentStep: Int = 0
    let facility: Facility
    let onDismiss: () -> Void
    
    // Optional configuration for customization
    var activeColor: Color = .blue
    var inactiveColor: Color = .gray
    
    // Dummy steps to cheat the logic
    private var allSteps: [FacilitiesStepGuide] {
        if !facility.stepGuides.description.contains("Coming soon"){
            let dummyStepStart = FacilitiesStepGuide(image: facility.imageName, description: "Start Here")
            let dummyStepEnd = FacilitiesStepGuide(image: facility.imageName, description: "You Have Arrived!")
            return [dummyStepStart] + facility.stepGuides + [dummyStepEnd]
        }
        return facility.stepGuides
    }
    
    private func indexInVisibleRange() -> CGFloat {
        let visibleStepsArray = Array(visibleSteps)
        
        // Find the index of the current step within the visible steps
        guard let indexInRange = visibleStepsArray.firstIndex(of: currentStep) else {
            return 0
        }
        
        return CGFloat(indexInRange)
    }
    
    // Computed property to determine visible steps
    private var visibleSteps: Range<Int> {
        let totalSteps = allSteps.count
        
        if totalSteps <= 3 {
            // If total steps are 3 or less (including the dummy steps), show all
            return 0..<totalSteps
        }
        
        if currentStep == 0 {
            // First step: show first 3 steps (including the dummy step at the start)
            return 0..<3
        }
        
        if currentStep == totalSteps - 1 {
            // Last step: show last 3 steps (including the dummy step at the end)
            return (totalSteps - 3)..<totalSteps
        }
        
        // Middle steps: show current step and adjacent steps, including dummy steps
        return (currentStep - 1)..<(currentStep + 2)
    }
    
    var body: some View {
        ZStack {
            VStack {
                Image(allSteps[currentStep].image)
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
                            if allSteps[currentStep].description.contains("Coming Soon") {
                                Text("Coming Soon")
                                    .foregroundStyle(.black)
                                    .font(.title)
                                    .fontWeight(.bold)
                            } else if currentStep == 0 && !allSteps[currentStep].description.contains("Coming soon"){
                                
                                Text("Start Here") // Text for the dummy start step
                                    .foregroundStyle(.black)
                                    .font(.title)
                                    .fontWeight(.bold)
                                Spacer().frame(height: 25)
                            } else if currentStep == allSteps.count - 1 && !allSteps[currentStep].description.contains("Coming soon"){
                                Text("You Have Arrived!") // Text for the dummy end step
                                    .foregroundStyle(.black)
                                    .font(.title)
                                    .fontWeight(.bold)
                                Spacer().frame(height: 25)
                            } else {
                                Text(facility.stepGuides.description.contains("Coming soon") ? "Coming Soon" : facility.name)
                                    .foregroundStyle(.black)
                                    .font(.title)
                                    .fontWeight(.bold)
                                Spacer().frame(height: 40)
                            }
                        }

                        
                        // Progress Indicator
                        if currentStep != 0 && currentStep != allSteps.count - 1 {
                            // The progress indicator will not show for dummy steps
                            HStack(alignment: .center) {
                                // Vertical Line and Dots
                                Spacer().frame(width: 30)
                                VStack(spacing: 15) {
                                    ForEach(visibleSteps, id: \.self) { index in
                                        Circle()
                                            .fill(index <= currentStep ? activeColor : inactiveColor)
                                            .frame(width: 20, height: 20)
                                            .opacity(index < allSteps.count ? 1.0 : 0.0)
                                    }
                                }
                                .overlay(
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
                                        Text(allSteps[index].description) // Use allSteps instead of facility.stepGuides
                                            .frame(width: 200, alignment: .leading)
                                            .foregroundColor(index <= currentStep ? .black : inactiveColor)
                                            .font(.body)
                                            .opacity(index < allSteps.count ? 1.0 : 0.0)
                                            .multilineTextAlignment(.leading) // Align text to leading (left)

                                    }
                                }
                                .padding(.leading, 25)
                            }.frame(maxHeight: 150)
                            
                            .overlay(
                                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(1), Color.white.opacity(0.7), Color.white.opacity(0), Color.white.opacity(0), Color.white.opacity(0.7), Color.white.opacity(1)]), startPoint: .top, endPoint: .bottom)
                                    .frame(maxWidth: .infinity)
                            )
                            Spacer().frame(height: 60)
                        } else {
                            Spacer().frame(maxHeight: 225)
                        }
                        
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
                            .opacity(currentStep == 0 ? 0.3 : 1)
                            
                            // Next Button
                            Button(action: {
                                withAnimation {
                                    if currentStep < allSteps.count - 1 {
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
                            .disabled(currentStep == allSteps.count - 1)
                            .opacity(currentStep == allSteps.count - 1 ? 0.3 : 1)
                        }
                    }
                    .frame(maxWidth: 295)
                    .padding().padding(.bottom, 30)
                }
            }
        }
    }
}

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
