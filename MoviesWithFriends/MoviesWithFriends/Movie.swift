//
//  Movie.swift
//  MoviesWithFriends
//
//  Created by Student on 5/10/25.
//

import Foundation
import SwiftData

@Model

class Movie {
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date){
        self.title = title
        self.releaseDate = releaseDate
    }
    static let sampleData = [
        Movie(title: "Sinners",
             releaseDate: Date(timeIntervalSinceReferenceDate: -766_617_600)),
        
        Movie(title: "Five Nights at Fredy's",
             releaseDate: Date(timeIntervalSinceReferenceDate: -720_504_000)),
        
        Movie(title: "Spider-Man Across the SpiderVerse",
             releaseDate: Date(timeIntervalSinceReferenceDate: -707_500_800)),
        
        Movie(title: "Avengers: Endgame",
             releaseDate: Date(timeIntervalSinceReferenceDate: -578_304_000)),
        
        Movie(title: "Ready Player One",
             releaseDate: Date(timeIntervalSinceReferenceDate: -543_868_800)),
        
        Movie(title: "Deadpool",
             releaseDate: Date(timeIntervalSinceReferenceDate: -477_014_400))
    ]
    
}
