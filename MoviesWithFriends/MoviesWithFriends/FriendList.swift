//
//  FriendList.swift
//  MoviesWithFriends
//
//  Created by Student on 5/10/25.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationSplitView{
            List {
                ForEach(friends) { friend in
                    NavigationLink(friend.name){
                        Text("Detail for \(friend.name)")
                            .navigationTitle("Friend Details")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Friends")
        } detail: {
            Text("Select a friend")
                .navigationTitle("Friend")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
