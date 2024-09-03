//
//  ContentView.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .play
    
    enum Tab {
        case play
        case collection
        case search
        case profile
    }
    
    var body: some View {
        TabView(selection: $selection, content: {
            PlayerView(cards: .constant(testCards))
                .tabItem {
                    Label("Jouer", systemImage: "play.circle")
                }
                .tag(Tab.play)
            Text("Collection")
                .tabItem {
                    Label("Collection", systemImage: "books.vertical")
                }
                .tag(Tab.collection)
            Text("Chercher")
                .tabItem {
                    Label("Rechercher", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
            Text("Profile")
                .tabItem {
                    Label("Jouer", systemImage: "person")
                }
                .tag(Tab.profile)
        })
    }
}

#Preview {
    ContentView()
}
