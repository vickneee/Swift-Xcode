
import SwiftUI

struct MainView: View {
    @Binding var n: Int
    @State private var numbers: [Int] = [4,5,6]
    // see https://developer.apple.com/documentation/swiftui/state
    var body: some View {
        VStack {
            Text("MainView, n = \(n)")
            Text("Numbers in MainView: \(numbers)")
            Button("MainView hit") {
                numbers.append((numbers.max() ?? 0)+2)
            }
            ChildView1(numberszap: numbers, n: $n)
            ChildView2(numbersxxx: $numbers)
            // why $ - see ChildView2.swift
            ChildView3(numbs: numbers)
            ChildView4(numbs: $numbers)
            ChildView5(nums: numbers) {
                numbers.append($0*$1)
            }
        }
        .padding()
    }
}

