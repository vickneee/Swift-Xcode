
import SwiftUI

struct ChildView2: View {
    @Binding var numbersxxx: [Int]
    // see https://developer.apple.com/documentation/swiftui/binding
    var body: some View {
        Text("ChildView2")
        Text("\(numbersxxx)")
        Button("ChildView2 hit") {
            numbersxxx.append((numbersxxx.max() ?? 0)+1)
        }
    }
}

#Preview {
    ChildView2(numbersxxx: .constant([1,3,5]))
}
