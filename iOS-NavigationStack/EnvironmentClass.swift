//
//  EnvironmentClass.swift
//  iOS-NavigationStack
//
//  Created by Junaed Muhammad Chowdhury on 5/4/23.
//

import SwiftUI

class EnvironmentClass: ObservableObject {
    var platforms: [Platform] =  [
        .init(name: "Xbox", imageName: "xbox.logo", color: .green),
        .init(name: "Playstation", imageName: "playstation.logo", color: .indigo),
        .init(name: "PC", imageName: "pc", color: .pink),
        .init(name: "Mobile", imageName: "iphone", color: .mint)
    ]
    
    var games: [Game] =  [
        .init(name: "Minecraft", rating: "99"),
        .init(name: "God of war", rating: "98"),
        .init(name: "Fortnite", rating: "92"),
        .init(name: "Madden 2023", rating: "88")
    ]
    
    @Published  var path = NavigationPath()
}
