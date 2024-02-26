//
//  Coffeeshop.swift
//  ListNav
//
//  Created by Arry on 24/02/24.
//

import Foundation


struct Coffeeshop: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var location: String
    var image: String
    var overview: String
}

struct CoffeeshopProvider {
    static func allData() -> [Coffeeshop] {
        let coffeeshopData = [
            Coffeeshop(name: "Casadela Coffee", description: "Casadela is more than just a coffee shop. It's a place where you can relax, chat, work, or read in a comfortable and friendly atmosphere.", location: "Jl. Kemunging, Kota Bandung", image: "casadela", overview: """
                Are you looking for a cozy place to enjoy a delicious cup of coffee and a **mouthwatering pastry?** Look no further than Casadela, the best coffee shop in town!

                Casadela is more than just a coffee shop. It's a place where you can relax, chat, work, or read in a comfortable and friendly atmosphere. Whether you prefer a classic espresso, a creamy latte, or a refreshing iced coffee, we have something for everyone. And don't forget to try our signature cakes, muffins, and croissants, freshly baked every day.

                Come to Casadela today and get 10% off your first order with this coupon. You'll be glad you did!
                """),
            
            Coffeeshop(name: "Imah Kai Coffee", description: "If you love coffee, you'll love Imah Kai. Imah Kai is a local coffee shop that serves the finest quality of Arabica and Robusta beans, roasted to perfection and brewed with care.", location: "Jl. Suniaraja, Kota Bandung", image: "imahkai", overview: """
                If you love coffee, you'll love Imah Kai. Imah Kai is a local coffee shop that serves the finest **quality of Arabica and Robusta beans**, roasted to perfection and brewed with care. Whether you need a morning boost, an afternoon break, or a nightcap, Imah Kai has the perfect drink for you.

                Imah Kai also offers a variety of snacks and desserts to satisfy your cravings. From sandwiches and salads to cookies and brownies, you'll find something to pair with your coffee. And if you're feeling adventurous, you can try our special menu items, such as the spicy chocolate mocha, the coconut latte, or the banana split frappe.

                Visit Imah Kai today and enjoy a free cookie with any purchase of a large coffee. Just show this coupon to the cashier and get ready to experience the best coffee in town!
                """),
            
            Coffeeshop(name: "Kilogram Coffee", description: "Kilogram is not your average coffee shop. It's a place where you can learn about the origin, processing, and roasting of each coffee bean, and how it affects the flavor and aroma of your drink.", location: "Jl. Cipaganti, Kota Bandung", image: "kilogram", overview: """
                Do you have a passion for coffee? Do you want to taste the difference between a good cup and a great cup? Then you need to visit Kilogram, the coffee shop that takes coffee seriously.

                Kilogram is not your average coffee shop. It's a place where you can learn about the origin, processing, and roasting of each coffee bean, and how it affects the flavor and aroma of your drink. You can also choose from a variety of brewing methods, such as pour-over, French press, or cold brew, and customize your coffee to your liking.

                At Kilogram, we believe that **coffee is an art and a science**, and we want to share our knowledge and passion with you. That's why we offer free coffee workshops, tastings, and events every week. You can also enjoy our delicious pastries, sandwiches, and salads, made with fresh and local ingredients.

                Come to Kilogram today and get a free coffee mug with any purchase of a medium or large coffee. Just mention this coupon to the barista and discover the true meaning of coffee.
                """),
            
            Coffeeshop(name: "Nannys Coffee", description: "Nannys coffee shop serves the most delicious and affordable coffee in the area, made with 100% organic and fair-trade beans.", location: "Jl. Bima, Kota Bandung", image: "nannys", overview: """
                If you're looking for a home away from home, you'll love Nannys coffee shop. Nannys is a family-owned and operated coffee shop that treats every customer like a **part of the family**.

                Nannys coffee shop serves the most delicious and affordable coffee in the area, made with 100% organic and fair-trade beans. You can also enjoy our homemade cakes, pies, and cookies, baked with love and fresh ingredients. And if you need a hearty meal, we have you covered with our soups, salads, and sandwiches, all made to order.

                Nannys coffee shop is more than just a place to eat and drink. It's a place to relax, connect, and have fun. We have free Wi-Fi, board games, books, and magazines for your entertainment. We also host live music, trivia nights, and bingo nights every week.

                Come to Nannys today and get a free slice of cake with any purchase of a small or large coffee. Just show this coupon to the cashier and join the Nannys family!
                """),
            
            Coffeeshop(name: "Urra Cafe", description: "Urra Cafe is more than just a coffee shop. It's a place to meet, socialize, and have fun.", location: "Jl. Teuku Umar, Kota Bandung", image: "urracafe", overview: """
                Are you a coffee lover who wants to try something new and exciting? Then you need to check out Urra Cafe, the coffee shop that offers the most unique and exotic flavors in town!

                Urra Cafe is not your ordinary coffee shop. It's a place where you can explore the world of coffee, from the traditional to the adventurous. You can choose from a variety of beans, roasts, and blends, and customize your drink with our special syrups, toppings, and spices. You can also sample our international menu items, such as the Turkish coffee, the Vietnamese iced coffee, or the Ethiopian coffee ceremony.

                Urra Cafe is more than just a coffee shop. It's a place to meet, socialize, and have fun. We have a cozy and colorful ambiance, a friendly and knowledgeable staff, and a lively and diverse community. We also host cultural events, art exhibitions, and music performances every week.

                Visit Urra Cafe today and get a free sample of any coffee flavor of your choice. Just bring this coupon and your curiosity and get ready to embark on a coffee adventure!
                """),
        ]
        
        return coffeeshopData
    }
}


extension Coffeeshop {
    static var coffeeshopPreviewData: [Coffeeshop] {
        return [
        
            Coffeeshop(name: "Casadela Coffee", description: "Casadela is more than just a coffee shop. It's a place where you can relax, chat, work, or read in a comfortable and friendly atmosphere.", location: "Jl. Kemunging, Kota Bandung", image: "casadela", overview: """
                Are you looking for a cozy place to enjoy a delicious cup of coffee and a **mouthwatering pastry?** Look no further than Casadela, the best coffee shop in town!

                Casadela is more than just a coffee shop. It's a place where you can relax, chat, work, or read in a comfortable and friendly atmosphere. Whether you prefer a classic espresso, a creamy latte, or a refreshing iced coffee, we have something for everyone. And don't forget to try our signature cakes, muffins, and croissants, freshly baked every day.

                Come to Casadela today and get 10% off your first order with this coupon. You'll be glad you did!
                """),
            
            Coffeeshop(name: "Imah Kai Coffee", description: "If you love coffee, you'll love Imah Kai. Imah Kai is a local coffee shop that serves the finest quality of Arabica and Robusta beans, roasted to perfection and brewed with care.", location: "Jl. Suniaraja, Kota Bandung", image: "imahkai", overview: """
                If you love coffee, you'll love Imah Kai. Imah Kai is a local coffee shop that serves the finest **quality of Arabica and Robusta beans**, roasted to perfection and brewed with care. Whether you need a morning boost, an afternoon break, or a nightcap, Imah Kai has the perfect drink for you.

                Imah Kai also offers a variety of snacks and desserts to satisfy your cravings. From sandwiches and salads to cookies and brownies, you'll find something to pair with your coffee. And if you're feeling adventurous, you can try our special menu items, such as the spicy chocolate mocha, the coconut latte, or the banana split frappe.

                Visit Imah Kai today and enjoy a free cookie with any purchase of a large coffee. Just show this coupon to the cashier and get ready to experience the best coffee in town!
                """),
        ]
    }
    
}
