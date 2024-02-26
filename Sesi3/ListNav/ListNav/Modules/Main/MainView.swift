//
//  MainView.swift
//  ListNav
//
//  Created by Arry on 24/02/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            CoffeeshopLists()
                .tabItem {
                    Label("Coffeeshop", systemImage: "cup.and.saucer")
                }
            SwiftUIState()
                .tabItem {
                    Label("State", systemImage: "number.square")
                }
            
            VideosView()
                .tabItem {
                    Label ("Videos", systemImage: "popcorn")
                }
            
            Text("Setting View")
                .tabItem {
                    Label("Setting", systemImage: "gear")
                        
                }
                .badge(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    MainView()
}
