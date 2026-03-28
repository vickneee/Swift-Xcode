//
//  ChildView4.swift
//  StatesAndBindings
//
//  Created by Peter Hjort työ on 31.1.2025.
//

import SwiftUI

struct ChildView4: View {
    @Binding var numbs: [Int]
    var body: some View {
        Button("ChildView4 reset") {
            numbs.removeAll()
        }
    }
    
}
