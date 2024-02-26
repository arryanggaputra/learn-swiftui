//
//  Food.swift
//  StackLayout
//
//  Created by Arry on 24/02/24.
//

import Foundation

struct Food: Identifiable { // dibuat identifiable karena Food meiliki unique ID, yang akan digunakan untuk mapping data.
    let id = UUID()
    let image: String
    let category: [String]
    let heading: String
    let chef: String
    let location: String
}

extension Food {
    static let foodData: [Food] = [
        
        Food(image: "carbonara", category: ["Pasta", "Italian"], heading: "Creamy Spaghetti Carbonara with Crispy Bacon", chef: "Chef Smith", location: "Authentic Italian Trattoria in Rome, Italy"),
        Food(image: "friedrice", category: ["Rice", "Asian"], heading: "Authentic Chinese Fried Rice with Mixed Vegetables", chef: "Chef Lee", location: "Traditional Chinese Restaurant in Beijing, China"),
        Food(image: "mieayam", category: ["Noodles", "Indonesian"], heading: "Traditional Indonesian Mie Ayam with Savory Chicken", chef: "Chef Surya", location: "Local Street Food Stall in Jakarta, Indonesia"),
        Food(image: "salmonsteak", category: ["Seafood"], heading: "Grilled Salmon Steak with Lemon Butter Sauce", chef: "Chef Johnson", location: "Fine Dining Restaurant in New York City, United States"),
        Food(image: "carbonara", category: ["Pasta", "Italian"], heading: "Creamy Spaghetti Carbonara with Crispy Bacon", chef: "Chef Smith", location: "Authentic Italian Trattoria in Rome, Italy"),
        Food(image: "friedrice", category: ["Rice", "Asian"], heading: "Authentic Chinese Fried Rice with Mixed Vegetables", chef: "Chef Lee", location: "Traditional Chinese Restaurant in Beijing, China"),
        Food(image: "mieayam", category: ["Noodles", "Indonesian"], heading: "Traditional Indonesian Mie Ayam with Savory Chicken", chef: "Chef Surya", location: "Local Street Food Stall in Jakarta, Indonesia"),
        Food(image: "salmonsteak", category: ["Seafood"], heading: "Grilled Salmon Steak with Lemon Butter Sauce", chef: "Chef Johnson", location: "Fine Dining Restaurant in New York City, United States")
        
    ]
}
