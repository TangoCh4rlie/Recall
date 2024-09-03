//
//  ActionsButtons.swift
//  Recall
//
//  Created by Elouan Reymond on 04/09/2024.
//

import SwiftUI

struct ActionsButtons: View {
    @Binding var progress: Int
    @Binding var isFaceUp: Bool
    
    var body: some View {
        if !isFaceUp {
            Button(action: {
                progress += 1
                isFaceUp = false
            }, label: {
                Label("Passer", systemImage: "arrow.right")
                    
            })
            .buttonStyle(.bordered)
        } else {
            HStack {
                Button(action: {
                    progress += 1
                }, label: {
                    Text("Facile")
                })
                .buttonStyle(.bordered)
                
                Button(action: {
                    progress += 1
                }, label: {
                    Text("Moyen")
                })
                .buttonStyle(.bordered)
                
                Button(action: {
                    progress += 1
                }, label: {
                    Text("Difficile")
                })
                .buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    ActionsButtons(progress: .constant(0), isFaceUp: .constant(false))
}
