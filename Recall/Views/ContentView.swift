//
//  ContentView.swift
//  Recall
//
//  Created by Elouan Reymond on 03/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .play
    @StateObject private var viewModel = ContentViewModel()
    
    enum Tab {
        case play
        case collection
        case search
        case profile
    }
    
    var body: some View {
        VStack {
            if !viewModel.isPlayerActive {
                TabView(selection: $selection, content: {
                    HomeView(viewModel: viewModel)
                        .tabItem {
                            Label("Jouer", systemImage: "play.circle")
                        }
                        .tag(Tab.play)
                    Text("Collection")
                        .tabItem {
                            Label("Collection", systemImage: "books.vertical")
                        }
                        .tag(Tab.collection)
                    Text("Rechercher")
                        .tabItem {
                            Label("Rechercher", systemImage: "magnifyingglass")
                        }
                        .tag(Tab.search)
                    Text("Profile")
                        .tabItem {
                            Label("Profile", systemImage: "person")
                        }
                        .tag(Tab.profile)
                        .badge("1")
                })
            }
        }
    }
}

class ContentViewModel: ObservableObject {
    @Published var isPlayerActive: Bool = false
}

#Preview {
    ContentView()
}

