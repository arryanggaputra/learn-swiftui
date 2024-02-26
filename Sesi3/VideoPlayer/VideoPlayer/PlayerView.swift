//
//  PlayerView.swift
//  VideoPlayer
//
//  Created by Arry on 25/02/24.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        PlayerViewControllerRepresentable()
                    .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    PlayerView()
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
