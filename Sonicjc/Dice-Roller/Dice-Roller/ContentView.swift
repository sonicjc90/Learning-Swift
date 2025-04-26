//
//  ContentView.swift
//  Dice-Roller
//
//  Created by Student on 4/26/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var numberOfDice = 1
    @State var totalNumber = 0
    
    var body: some View {
        
        VStack {
            Text("Dice Game")
                .font(.largeTitle.monospaced())
                .bold()
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    Dice_View()
//                    totalNumber = Dice_View(numberOfPips: Int 
                }
            }
        
            HStack {
                withAnimation{
                    Button("Add Dice", systemImage: "plus.circle.fill") {
                        numberOfDice += 1
                        
                    }
                }
                .disabled(numberOfDice == 5)
                .padding()
                .background(Color.green)
                .foregroundStyle(.white)
                .cornerRadius(20)
                .padding()
                
                withAnimation{
                    Button("Remove Dice", systemImage: "minus.circle.fill") {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                .padding()
                .background(Color.red)
                .foregroundStyle(.white)
                .cornerRadius(20)
                .padding()
            }
        
            HStack{
                Text("Your Total is: ", totalNumber)
                    .font(.largeTitle.monospaced())
                    .bold()
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.jcpurple)
        .tint(.white)
        .foregroundStyle(.white)
    }
}
#Preview {
    ContentView()
}
