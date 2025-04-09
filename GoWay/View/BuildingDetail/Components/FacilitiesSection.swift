import SwiftUI

struct FacilitiesSection: View {
    var building: Building
    @State private var searchText: String = ""
    @State private var selectedFacility: Facility?
    @State private var showNavigateButton: Bool = false
    @State private var showModal: Bool = false  // State to control modal visibility
    //Test
    var facilities: [Facility] {
        if let facilityBuilding = building as? FacilitiesBuilding {
            return facilityBuilding.facilities
        }
        return []
    }
    
    var filteredFacilities: [Facility] {
        if searchText.isEmpty {
            return facilities
        } else {
            return facilities.filter {
                $0.name.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    private func openNavigationModal(facility: Facility?) {
        guard let facility = facility else { return }
        selectedFacility = facility
        showModal.toggle()  // Trigger the modal by toggling the state
    }
    
    var body: some View {
        if !facilities.isEmpty {
            ZStack {
                Color.white
                VStack(alignment: .leading, spacing: 4) {
                    Text("Facilities")
                        .font(.headline)
                        .padding(.horizontal)
                        .foregroundStyle(Color.black)
                    
                    SearchBar(searchText: $searchText)
                    
                    ScrollView {
                        LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 10), count: 3), spacing: 12) {
                            ForEach(filteredFacilities) { facility in
                                VStack(alignment: .leading) {
                                    ZStack {
                                        Image(facility.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 100)
                                            .clipped()
                                            .cornerRadius(10)
                                        
                                        // Only darken the image if not selected
                                        if let selected = selectedFacility, selected.id != facility.id {
                                            Color.black.opacity(0.4)
                                                .frame(width: 100, height: 100)
                                                .cornerRadius(10)
                                        }
                                    }
                                    
                                    Spacer()
                                    VStack{
                                        Text(facility.name)
                                            .foregroundStyle(Color.black)
                                            .font(.footnote)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 100)
                                        Spacer()
                                    }
                    
                                    
                                }
                                .frame(width: 100, height: 175)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    selectedFacility = facility
                                    showModal.toggle()
                                }
                                .allowsHitTesting(selectedFacility == nil || selectedFacility?.id == facility.id)
                            }
                            .frame(minHeight: 120)
                            .padding(.horizontal)
                        }
                        .padding(.bottom, showNavigateButton ? 80 : 0)
                    }
                    .scrollIndicators(.hidden)
                    .padding(.top, 20)
                }.frame(width: 360)
                
                
                if showNavigateButton {
                    VStack {
                        Spacer()
                        Button(action: {
                            showNavigateButton = false
                            openNavigationModal(facility: selectedFacility)
                        }) {
                            Text("Navigate")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                                .padding(.horizontal)
                                .shadow(radius: 8)
                        }
                        .transition(.move(edge: .bottom))
                        .animation(.easeInOut, value: showNavigateButton)
                    }
                }
            }
            .sheet(isPresented: $showModal) {
                if let selectedFacility = selectedFacility {
                    StepNavigationView(
                        facility: selectedFacility,
                        onDismiss: {
                            self.selectedFacility = nil
                            self.showNavigateButton = false
                        }
                    ).onDisappear {
                        // Ensure that the modal triggers the onDismiss logic when it is closed
                        self.selectedFacility = nil
                        self.showNavigateButton = false
                    }
                }
            }

        }else{
            Spacer().frame(height: 460)
        }
    }
}



#Preview{
    FacilitiesSection(building: BuildingData.facilitiesBuildings[0])
}
