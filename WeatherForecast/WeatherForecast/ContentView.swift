//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Victoria Vavulina on 17.3.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Wed", isRainy: true, tHigh: 80, tLow: 50)
            
            DayForecast(day: "Thu", isRainy: false, tHigh: 70, tLow: 45)
        }
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let tHigh: Int
    let tLow: Int
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        isRainy ? .blue : .yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("Hight: \(tHigh)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(tLow)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
