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
            DayForecast()
            
            DayForecast()
        }
    }
}

struct DayForecast: View {
    var body: some View {
        VStack {
            Text("Mon")
            Image(systemName: "sun.max.fill")
                .foregroundStyle(Color.yellow)
            Text("High: 70")
            Text("Low: 50")
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
