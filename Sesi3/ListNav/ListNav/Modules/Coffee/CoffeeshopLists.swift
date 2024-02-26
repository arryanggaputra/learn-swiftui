//
//  CoffeeshopLists.swift
//  ListNav
//
//  Created by Arry on 24/02/24.
//

import SwiftUI

struct CoffeeshopLists: View {
    private var coffeeshop: [Coffeeshop] = CoffeeshopProvider.allData()
    var body: some View {
        NavigationStack {
            List {
                ForEach(coffeeshop) { shop in
                    NavigationLink(destination: CoffeeshopDetail(coffeeshop: shop)){
                        CoffeeshopRowView(coffeeshop: shop)
                    }
                    
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Coffeeshop")
        }
        .tint(.white)
        
    }
}

#Preview {
    CoffeeshopLists()
}
