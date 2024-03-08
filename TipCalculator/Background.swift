
import Foundation
import SwiftUI

struct Background: View {
    let colors: [Color]
    let opacity: Double
    var body: some View {
        LinearGradient(
            colors: colors,
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing
                        )
        .opacity(opacity)
                .ignoresSafeArea()
    }
}


#Preview {
    Background(colors: [Color.black, Color.white, Color.blue], opacity: 0.7)
}
