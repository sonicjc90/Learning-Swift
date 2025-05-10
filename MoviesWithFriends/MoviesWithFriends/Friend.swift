//
//  Friend.swift
//  MoviesWithFriends
//
//  Created by Student on 5/10/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleData = [
        Friend(name: "Kyle"),
        Friend(name: "Remone"),
        Friend(name: "Justin"),
        Friend(name: "Suru"),
        Friend(name: "Steven"),
    ]
}
