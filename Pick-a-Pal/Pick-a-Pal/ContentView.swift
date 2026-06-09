//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by 浅見弦徳 on 2026/06/06.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToadd=""
    @State private var pickedName=""
    @State private var ShouldRemovePickedName=false
    var body: some View {
        VStack {
            VStack(spacing:8){
                Image(systemName:"person.3.sequence.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                Text("Pick-a-Pal")
            }
            .font(.title)
            .bold()
            
            
            
            Text(pickedName.isEmpty ? "":pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            List{
                ForEach(names,id:\.description){name in Text(name)}
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            TextField("Add Name",text:$nameToadd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nameToadd.isEmpty {
                        names.append(nameToadd)
                        nameToadd=""
                    }
                }
            Divider()
            
            Toggle("Remove when picked",isOn:$ShouldRemovePickedName)
            
            Button{
                if let randomName=names.randomElement(){
                    pickedName=randomName
                    if ShouldRemovePickedName{
                        names.removeAll{
                            name in return (name==randomName)
                        }
                    }
                } else{
                    pickedName=""
                }
            } label:{
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
       

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
