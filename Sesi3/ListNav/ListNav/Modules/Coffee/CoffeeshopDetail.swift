//
//  CoffeeshopDetail.swift
//  ListNav
//
//  Created by Arry on 24/02/24.
//

import SwiftUI

struct CoffeeshopDetail: View {
    var coffeeshop: Coffeeshop
    var body: some View {
        ScrollView{
            heading
            
            VStack {
                Text(coffeeshop.description)
                    .font(.headline)
                
                Divider()
                
                Text(coffeeshop.overview)
            }
            .padding()
        }
        .ignoresSafeArea(edges:.top)
    }
}

#Preview {
    CoffeeshopDetail( coffeeshop: Coffeeshop.coffeeshopPreviewData[0])
}


extension CoffeeshopDetail {
    private var heading: some View {
        ZStack(alignment: .bottom) {
            Image(coffeeshop.image)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
            
            HStack{
                VStack(alignment: .leading, content: {
                    Text(coffeeshop.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                    
                    Text(coffeeshop.location)
                        .font(.subheadline)
                        .foregroundStyle(.white)
                })
                
                Spacer()
                
                Image(systemName: "fork.knife.circle.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .padding(.top, 100)
            .padding()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .foregroundStyle(.orange)
            .background(
                LinearGradient(colors: [Color.black.opacity(0), Color.black], startPoint: .top, endPoint: .bottom)
            )
        }
    }
}
