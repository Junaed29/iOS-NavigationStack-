//
//  GameView.swift
//  iOS-NavigationStack
//
//  Created by Junaed Muhammad Chowdhury on 5/4/23.
//

import SwiftUI

struct GameView: View {
    let game: Game
    @EnvironmentObject var environmentObject : EnvironmentClass
    
    var body: some View {
        VStack (spacing: 30){
            Text("\(game.name) - \(game.rating)")
                .font(.largeTitle)
                .bold()
            
            Button("Recommanded game") {
                print(environmentObject.path.count)
                environmentObject.path.append(environmentObject.games.randomElement()!)
            }
            
            Button("Go to another platform") {
                print(environmentObject.path.count)
                environmentObject.path.append(environmentObject.platforms.randomElement()!)
            }
            
            
            Button("Go Home") {
                print(environmentObject.path.count)
                environmentObject.path.removeLast(environmentObject.path.count)
            }
            
            
        }
        .navigationTitle("Game")
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            GameView(game: MockData.mockGame)
                .environmentObject(EnvironmentClass())
        }
    }
}
