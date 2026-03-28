
import SwiftUI

struct ChildView1: View {
    @State var numberszap: [Int]
    @Binding var n: Int
    var body: some View {
        VStack {
            Text("ChildView1")
            Text("\(numberszap)")
            Button("add") {
                numberszap.append(666)
                n += 1
            }
        }
    }
}

