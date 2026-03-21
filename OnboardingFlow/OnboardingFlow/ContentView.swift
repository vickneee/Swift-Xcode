//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Victoria Vavulina on 21.3.2026.
//

import SwiftUI

let gradientColors: [Color] = [
    .crandientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}
