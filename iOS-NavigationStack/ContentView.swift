//
//  ContentView.swift
//  iOS-NavigationStack
//
//  Created by Junaed Muhammad Chowdhury on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    
    var platform: [Platform] =  [
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
    
    
    var body: some View {
        NavigationStack {
            List {
                Section("Platforms") {
                    ForEach(platform, id: \.name) { platform in
                        NavigationLink(value: platform){
                            Label(platform.name, systemImage: platform.imageName)
                                .foregroundColor(platform.color)
                        }
                    }
                }
                
                
                Section("Games") {
                    ForEach(games, id: \.name) { game in
                        NavigationLink(value: game){
                            Text(game.name)
                        }
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Platform.self) { platform in
                ZStack {
                    platform.color.ignoresSafeArea()
                    Label(platform.name, systemImage: platform.imageName)
                        .font(.largeTitle)
                        .bold()
                }
                
            }
            .navigationDestination(for: Game.self) { game in
                ZStack {
                    Text(game.name)
                        .font(.largeTitle)
                        .bold()
                }
                
            }
        }
        .tint(.black)  // This for tje back button color
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Platform: Hashable{
    let name: String
    let imageName: String
    let color: Color
}

struct Game: Hashable {
    let name: String
    let rating: String
}

extension UINavigationController {
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        navigationBar.topItem?.backButtonDisplayMode = .default // This .minimal remove the text from back button
    }
}
