//
//  PlatformView.swift
//  iOS-NavigationStack
//
//  Created by Junaed Muhammad Chowdhury on 5/4/23.
//

import SwiftUI

struct PlatformView: View {
    let platform: Platform
    @EnvironmentObject var environmentObject : EnvironmentClass
    
    var body: some View {
        ZStack {
            platform.color.ignoresSafeArea()
            VStack{
                Label(platform.name, systemImage: platform.imageName)
                    .font(.largeTitle)
                    .bold()
                
                List{
                    ForEach(environmentObject.games, id: \.name) { game in
                        NavigationLink(value: game){
                            Text(game.name)
                        }
                    }
                }
//                .navigationDestination(for: Game.self){ game in
//                    GameView(game: game)
//                }
            }
        }
        .navigationBarTitle("Platform")
        
    }
}

struct PlatformView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            PlatformView(platform: MockData.mockPlatform)
                .environmentObject(EnvironmentClass())
        }
    }
}
