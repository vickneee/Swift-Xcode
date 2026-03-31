//
//  Player.swift
//  ScoreKeeper
//
//  Created by Victoria Vavulina on 31.3.2026.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    
    var name:  String
    var score: Int
    
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
    mutating func addScore(_ score: Int) {
        self.score += score
    }
}
