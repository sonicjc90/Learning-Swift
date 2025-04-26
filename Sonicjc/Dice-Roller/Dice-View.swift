//
//  Dice-View.swift
//  Dice-Roller
//
//  Created by Student on 4/26/25.
//

//ZStack, HStack, VStack (This is default)

import SwiftUI

struct Dice_View: View {
    
   @State var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.blue, .red)
            
            Button("Roll"){
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            
            }
            .padding()
            .background(Color.black)
            .foregroundStyle(.white)
            .cornerRadius(20)
        }
    }
}

#Preview {
    Dice_View()
}
