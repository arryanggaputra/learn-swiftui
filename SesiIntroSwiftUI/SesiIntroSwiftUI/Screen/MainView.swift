//
//  ContentView.swift
//  SesiIntroSwiftUI
//
//  Created by Arry on 24/02/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Image(.cat)
                .resizable()
                .scaledToFill()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipShape(Circle())
                .background(
                    Circle()
                        .stroke(Color.red, lineWidth: 20)
                )
            
            VStack {
                Text("Hello, I'm iOS Developer")
                    .font(.system(.title, design: .serif))
                Text("You can do it").font(.system(.headline, design: .monospaced))
                Spacer()
                HStack (alignment: .bottom, content: {
                    Image(systemName: "apple.terminal.fill")
                        //.font(.title) this is for spesific child styling
                    Text("Wakanda Forever")
                        //.font(.system(.footnote, design: .serif))
                }).font(.system(.footnote, design: .serif)) // parent styling
                
            }
        }
    }
}

#Preview {
    MainView()
}
