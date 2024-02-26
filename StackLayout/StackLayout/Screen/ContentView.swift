//
//  ContentView.swift
//  StackLayout
//
//  Created by Arry on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:15) {
                        ForEach(Food.foodData){
                            food in FoodCard(food: food)
                                .frame(width: 300)
                        }
                    }
                }
            }.padding(.horizontal)
            .navigationTitle("Food")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(){
                Button(action: {
                    print("Cart button tapped")
                }, label: {
                    Image(systemName: "cart")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.pink)
                        .padding()
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
