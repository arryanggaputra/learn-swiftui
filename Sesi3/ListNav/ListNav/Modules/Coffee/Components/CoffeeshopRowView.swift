//
//  CoffeeshopRowView.swift
//  ListNav
//
//  Created by Arry on 24/02/24.
//

import SwiftUI

struct CoffeeshopRowView: View {
    var coffeeshop: Coffeeshop
    var body: some View {
        HStack(alignment: .top) {
            Image(coffeeshop.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 10) {
                Text(coffeeshop.name)
                    .font(.system(.headline, design: .rounded))
                    .foregroundStyle(.blue)
                Text(coffeeshop.description)
                    .font(.caption)
                    .lineLimit(3)
                Text(coffeeshop.location)
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    CoffeeshopRowView(coffeeshop: Coffeeshop.coffeeshopPreviewData[0])
}
