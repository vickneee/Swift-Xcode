//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Victoria Vavulina on 31.3.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Joe", score: 0),
        Player(name: "Elvis", score: 0),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            
            
            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)
            
            Button("Add Player", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
