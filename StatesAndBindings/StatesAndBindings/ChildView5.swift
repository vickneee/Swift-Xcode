//
//  ChildView5.swift
//  StatesAndBindings
//
//  Created by Peter Hjort työ on 31.10.2025.
//

import SwiftUI

struct ChildView5: View {
    let nums: [Int]
    let f: (Int,Int) -> Void
    var body: some View {
        VStack {
            Text("ChildView5: \(nums)")
            Button("ChildView5 klik") {
                f(10,2)
            }
        }
    }
}
