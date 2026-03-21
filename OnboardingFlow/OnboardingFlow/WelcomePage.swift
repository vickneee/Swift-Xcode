//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Victoria Vavulina on 21.3.2026.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(Color.white)
            }
            
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                .fontDesign(.serif)
            Text("Description text")
                .font(.title2)
        
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
