import SwiftUI
struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            // Search Icon
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .padding(.leading, 12)
            
            // Text Field
            TextField("Buildings, Place, or Facilities...", text: $searchText)
                .padding(10)
                .foregroundColor(.gray)
                .padding(.horizontal, 10)
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding([.top, .horizontal], 16)
    }
}

#Preview {
    SearchBar(searchText: .constant(""))
}
