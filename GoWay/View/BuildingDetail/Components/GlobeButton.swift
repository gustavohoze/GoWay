import SwiftUI

struct GlobeButton: View {
    var onTap: () -> Void  // Closure to trigger the modal
    //Test
    var body: some View {
        Button(action: {
            onTap()  // Call the closure when the button is tapped
        }) {
            Image("planet-earth")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)  // Adjust the size of the globe image if needed
        }
        .padding(.trailing, 12)
    }
}
