//
//  ContentView.swift
//  iOS-NavigationStack
//
//  Created by Junaed Muhammad Chowdhury on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    
    var platform: [Platform] = [
        .init(name: "Xbox", imageName: "xbox.logo", color: .green),
        .init(name: "Playstation", imageName: "playstation.logo", color: .indigo),
        .init(name: "PC", imageName: "pc", color: .pink),
        .init(name: "Mobile", imageName: "iphone", color: .mint)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Platforms") {
                    ForEach(platform, id: \.name) { platform in
                        Label(platform.name, systemImage: platform.imageName)
                            .foregroundColor(platform.color)
                    }
                }
            }
            .navigationTitle("Gaming")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Platform{
    let name: String
    let imageName: String
    let color: Color
}
