//
//  DiceView.swift
//  DiceRoller
//
//  Created by Victoria Vavulina on 28.3.2026.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.white)
            
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.borderedProminent)  // use borderedProminent, not bordered
            .buttonBorderShape(.roundedRectangle(radius: 10))
            .tint(.green)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    DiceView()
}
