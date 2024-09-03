//
//  CardView.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import SwiftUI

struct CardView: View {
    @Binding var isFaceUp: Bool
    @Binding var card: Card
    
    //TODO: faire en sorte que la taille s'adapte à la longeur du texte
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(isFaceUp ? Color.pastelBlue : Color.pastelPink)
                .overlay(content: {
                    VStack(content: {
                        if !isFaceUp {
                            Text(card.question)
                                .font(.callout)
                                .rotation3DEffect(
                                    Angle(degrees: 180),
                                    axis: (x: 0, y: 1, z: 0)
                                )
                        } else {
                            Text(card.answer)
                                .font(.callout)
                        }
                    })
                    .padding()
                })
                .frame(width: 300, height: 300)
                .shadow(radius: 2)
                .rotation3DEffect(
                    Angle(degrees: isFaceUp ? 0 : 180),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                .animation(.easeInOut(duration: 0.5), value: isFaceUp)
                .onTapGesture(perform: {
                    isFaceUp.toggle()
            })
        }
    }
}

extension Color {
    static let pastelBlue = Color(red: 0.85, green: 0.9, blue: 1.0)
    static let pastelPink = Color(red: 1.0, green: 0.9, blue: 0.9)
}

#Preview {
    CardView(isFaceUp: .constant(false), card: .constant(testCards[0]))
}
