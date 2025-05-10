//
//  ContentView.swift
//  MoviesWithFriends
//
//  Created by Student on 5/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FriendList()
            Text("Friends")
                .tabItem{
                    Label("Friends",systemImage: "person.and.person")
                    
                }
            MovieList()
            Text("Movies")
                .tabItem{
                    Label("Movies",systemImage: "film.stack")
                    
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
