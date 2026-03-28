//
//  ChildView3.swift
//  StatesAndBindings
//
//  Created by Peter Hjort työ on 31.1.2025.
//

import SwiftUI

struct ChildView3: View {
    let numbs: [Int]
    var body: some View {
        Text("ChildView3")
        Text("numbs \(numbs.count)")
    }
}

#Preview {
    ChildView3(numbs: [1,6,8])
}
