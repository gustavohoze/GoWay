import SwiftUI
struct FilterCard: View {
    @Binding var selectedCategories: Set<String>
    var categories = getUniqueCategories(from: BuildingData.facilitiesBuildings) + getUniqueCategories(from: BuildingData.buswayBuildings)
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(categories, id: \.self) { category in
                    Button {
                        if selectedCategories.contains(category) {
                            selectedCategories.remove(category)
                        } else {
                            selectedCategories.insert(category)
                        }
                    } label: {
                        Text(category)
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(selectedCategories.contains(category) ? .white : .blue)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(selectedCategories.contains(category) ? .blue : Color.buttonBackground)
                            .cornerRadius(10)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
    }
}

#Preview {
    FilterCard(selectedCategories: .constant([]))
}
