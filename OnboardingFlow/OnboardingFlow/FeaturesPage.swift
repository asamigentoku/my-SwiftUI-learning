//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by 浅見弦徳 on 2026/05/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack (spacing:30){
            Text("Features")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.bottom)
                        .padding(.top,100)
                    
            FeatureCard(iconName: "person.2.crop.square.stack.fill",
                                description: "A multiline description about a feature paired with the image on the left.")
            FeatureCard(iconName: "quote.bubble.fill", description: "Short summary")
            Spacer()
                }
                
        .padding()
        .background {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundStyle(.tint)
                        .opacity(0.25)
                        .brightness(-0.4)
                }
        .foregroundStyle(.white)
        }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight:.infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
