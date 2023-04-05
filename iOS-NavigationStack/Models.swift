//
//  Models.swift
//  iOS-NavigationStack
//
//  Created by Junaed Muhammad Chowdhury on 5/4/23.
//

import SwiftUI


struct Platform: Hashable{
    let name: String
    let imageName: String
    let color: Color
}

struct Game: Hashable {
    let name: String
    let rating: String
}

struct MockData {
    static var mockPlatforms: [Platform] =  [
        .init(name: "Xbox", imageName: "xbox.logo", color: .green),
        .init(name: "Playstation", imageName: "playstation.logo", color: .indigo),
        .init(name: "PC", imageName: "pc", color: .pink),
        .init(name: "Mobile", imageName: "iphone", color: .mint)
    ]
    
    static var mockGames: [Game] =  [
        .init(name: "Minecraft", rating: "99"),
        .init(name: "God of war", rating: "98"),
        .init(name: "Fortnite", rating: "92"),
        .init(name: "Madden 2023", rating: "88")
    ]
    
    static var mockGame : Game = .init(name: "Minecraft", rating: "99")
    
    static var mockPlatform: Platform = .init(name: "Xbox", imageName: "xbox.logo", color: .green)
}
