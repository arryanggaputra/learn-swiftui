//
//  FoodCard.swift
//  StackLayout
//
//  Created by Arry on 24/02/24.
//

import SwiftUI

struct FoodCard: View {
    var food: Food
    var body: some View {
        VStack {
            foodImage
            foodHeadline
        }
        .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
        .overlay(
            RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .stroke(
                    //Color(.sRGB, red:149/256, green:165/256, blue:166/256, opacity: 1)
                    Color.concrete.opacity(0.8),
                    lineWidth: 2
                )
        )
//        .padding([.top, .horizontal])
    }
}

#Preview {
    FoodCard(food: Food.foodData[1])
//        .padding(20)
}

extension FoodCard {
    // MARK: - Food Image
    private var foodImage: some View {
        ZStack (alignment: .topLeading) {
            Image(food.image)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            ZStack {
                HStack {
                    Image(systemName: "mappin.square.fill")
                    Text(food.location).lineLimit(1).truncationMode(.middle)
                }.font(.system(.subheadline))
                    .padding(10)
                    .foregroundStyle(.white)
            }.background(
                UnevenRoundedRectangle(cornerRadii: .init(topLeading: 1, bottomTrailing: 10), style: .continuous).foregroundColor(Color.black.opacity(0.8))
                
            )
            
        }
    }
    
    // MARK: - Food Headline
    private var foodHeadline: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(food.category.joined(separator: ", "))
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
                Text(food.heading)
                    .font(.system(size:30))
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3, reservesSpace: true)
                    .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
//                    .minimumScaleFactor(0.5)
                
                Text("Chef by: \(food.chef)".uppercased())
                    .foregroundStyle(.secondary)

            }
            Spacer()
        }
        .padding(10)

    }
}
