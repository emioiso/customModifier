//
//  ContentView.swift
//  customModifier
//
//  Created by emi oiso on 2023/10/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button{
                print("ボタン1が押されたよ")
            } label: {
                Text("BOTTAN DESHITA / AW")
                    .modifier(ButtonModifier(backgrondColer: .brown))
            }
            .padding()
            Button{
                print("ボタン2が押されたよ")
            } label: {
                Text("BOTTAN DESHITA / SS")
                    .modifier(ButtonModifier(backgrondColer: .black))
                
            }
            .padding()
        }
    }
}

struct ButtonModifier: ViewModifier{
    let backgrondColer: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width: 350,height: 60)
            .background(backgrondColer)
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(30)
        
    }
}

#Preview {
    ContentView()
}
