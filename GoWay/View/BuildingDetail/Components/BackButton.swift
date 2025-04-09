import SwiftUI

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode
    // Test Commit
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss() // Back action
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white) // White arrow
                Text("Back")
                    .foregroundColor(.white) // White text
                    .fontWeight(.semibold)
            }
            .padding(10)
        }
        .padding(.leading, 12)
    }
}
