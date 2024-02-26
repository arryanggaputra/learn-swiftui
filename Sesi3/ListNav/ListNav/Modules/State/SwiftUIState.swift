//
//  ContentView.swift
//  ListNav
//
//  Created by Arry on 24/02/24.
//

import SwiftUI
// Property Wrapper

struct SwiftUIState: View {
//    @State private var isPlaying: Bool = false
    
    @State private var counter: Int = 1
    
    var body: some View {
        VStack {
            CounterButton(counter: $counter)
            HStack {
                Button {
                    counter=counter-1
                }label: {
                    Image(systemName: "minus.circle")
                        .foregroundStyle(.red)
                }
                Button {
                    counter=counter+1
                }label: {
                    Image(systemName: "plus.circle")
                        .foregroundStyle(.green)
                }
            }.font(.system(size: 40))
            
//            Button{
//                
//                isPlaying = isPlaying ? false : true
//                
//            } label: {
//                Image(systemName: isPlaying ? "pause.circle.fill" :"play.circle.fill")
//                    .font(.system(size: 150))
//                    .foregroundStyle(isPlaying ? .red :.green)
//                
//            }
        }
        .padding()
    }
}

#Preview {
    SwiftUIState()
}


struct CounterButton: View {
    @Binding var counter: Int
    
    var body: some View {
        Button {} label: {
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .foregroundStyle(.red)
                .overlay{
                    Text("\(counter)")
                        .font(.title)
                        .foregroundStyle(.white)
                }
            
        }
    }
}
