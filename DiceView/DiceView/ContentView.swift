//
//  ContentView.swift
//  DiceView
//
//  Created by 浅見弦徳 on 2026/05/27.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            Text("Dice Rollber")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            HStack{
                ForEach(1...numberOfDice,id:\.description){ _ in
                    DiceView()
                    
                }
            }
            
            HStack{
                Button("Remove Dice",systemImage: "minus.circle.fill"){
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice",systemImage: "plus.circle.fill"){
                    withAnimation {
                      numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
                
        }
        .padding()
        .frame(maxWidth:.infinity,maxHeight:.infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
