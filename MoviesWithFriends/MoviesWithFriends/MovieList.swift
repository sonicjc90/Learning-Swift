//
//  MovieList.swift
//  MoviesWithFriends
//
//  Created by Student on 5/10/25.
//

import SwiftUI
import SwiftData

struct MovieList: View {
    @Query (sort: \Movie.title) private var movies: [Movie]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationSplitView {
            List{
                ForEach(movies) { movie in
                    NavigationLink(movie.title){
                        Text("Detail for \(movie.title)")
                            .navigationTitle("Movie")
                            .navigationBarTitleDisplayMode(.inline)
                        Text("Movie Release Date: \(movie.releaseDate)")
                    }
                }
            }
            .navigationTitle("Movies")
        } detail: {
            Text("Select a movie")
                .navigationTitle(Text("Movie"))
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
