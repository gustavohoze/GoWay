import SwiftUI

struct BuildingDetails: View {
    var building: Building
    // Test
    var body: some View {
        VStack(spacing: 12) {
            Text(building.categories.first ?? "Category")
                .font(.subheadline)
                .foregroundColor(.blue)
            
            Text(building.name)
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
            Text(building.description)
                .font(.body)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text("Monday–Friday: 08.00 AM – 06.00 PM")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.top, 8)
        }
        .frame(width: 375, height: 250)
        .padding(.horizontal, 16)
        .padding(.top, 16)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 60, style: .continuous))
    }
}

#Preview {
    BuildingDetails(building: BuildingData.facilitiesBuildings[0])
        .preferredColorScheme(.dark)
}
