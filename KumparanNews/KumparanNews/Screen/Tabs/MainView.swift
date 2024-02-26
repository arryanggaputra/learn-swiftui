//
//  MainView.swift
//  KumparanNews
//
//  Created by Hidayat Abisena on 11/02/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            RepublikaNews()
                .tabItem {
                    Label("Home", systemImage: "newspaper.circle")
                }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.yellow)
                Text("Search Functions")
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass.circle")
            }
            
            ZStack {    
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.indigo)
                Text("Settings Page")
            }
            .tabItem {
                Label("Setting", systemImage: "gear.circle")
            }
        }
        .tint(.purple)
    }
}

#Preview {
    MainView()
}
