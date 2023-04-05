//
//  ContentView.swift
//  iOS-NavigationStack
//
//  Created by Junaed Muhammad Chowdhury on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var environmentObject : EnvironmentClass
    
    var body: some View {
        NavigationStack(path: $environmentObject.path) {
            List {
                Section("Platforms") {
                    ForEach(environmentObject.platforms, id: \.name) { platform in
                        //                        NavigationLink(value: platform){
                        //                            Label(platform.name, systemImage: platform.imageName)
                        //                                .foregroundColor(platform.color)
                        //                        }
                        
                        Button {
                            environmentObject.path.append(platform)
                        } label: {
                            Label(platform.name, systemImage: platform.imageName)
                                .foregroundColor(platform.color)
                        }
                        
                    }
                }
                
                
                Section("Games") {
                    ForEach(environmentObject.games, id: \.name) { game in
//                                                NavigationLink(value: game){
//                                                    Text(game.name)
//                                                }
                        
                        Button {
                            environmentObject.path.append(game)
                        } label: {
                            Text(game.name)
                        }
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Platform.self) { platform in
                PlatformView(platform: platform)
            }
            .navigationDestination(for: Game.self) { game in
                GameView(game: game)
            }
        }
        .tint(.black)  // This for tje back button color
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(EnvironmentClass())
    }
}



extension UINavigationController {
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        navigationBar.topItem?.backButtonDisplayMode = .default // This .minimal remove the text from back button
    }
}


