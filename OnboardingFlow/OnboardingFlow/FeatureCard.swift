//
//  FeatureCard.swift
//  OnboardingFlow
//
//  Created by 浅見弦徳 on 2026/05/25.
//

import SwiftUI

struct FeatureCard: View {
    let iconName:String
    let description:String
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .font(.largeTitle)
            Text(description)
            Spacer()
        }
        .padding()
        .background(.tint,in:RoundedRectangle(cornerRadius: 12))
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill",
                   description: "A multiline description about a feature paired with the image on the left.")
}
