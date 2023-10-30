//
//  ContentView.swift
//  Pig
//
//  Created by Nicholas Papierniak on 10/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var turnScore = 0
    @State private var gameScore = 0
    var body: some View {
        ZStack{
            Color.gray.opacity(0.7).ignoresSafeArea()
            VStack {
                Image("Pig").resizable().frame(width:150, height: 150)
                CustomText(text: "Pig")
                CustomText(text: "Turn Score: \(turnScore)")
                CustomText(text: "Game Score: \(turnScore)")
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct CustomText: View {
    let text: String
    var body: some View {
        Text(text).font(Font.custom("Marker Felt", size : 36))
    }
}
