//
//  DiceView.swift
//  DiceView
//
//  Created by 浅見弦徳 on 2026/06/05.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body:some View{
        VStack{
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(1,contentMode:.fit)
                .foregroundStyle(.black,.white)
            Button("Roll"){
                numberOfPips = Int.random(in: 1...6)
            }
        }
    }
}

#Preview {
    DiceView()
}
