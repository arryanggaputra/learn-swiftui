//
//  StringExtension.swift
//  KumparanNews
//
//  Created by Arry on 25/02/24.
//

import Foundation

extension String {
    func formatDateForNews() -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        if let date = dateFormatter.date(from: self) {
            let newsDateFormatter = DateFormatter()
            newsDateFormatter.locale = Locale(identifier: "id_ID")
            newsDateFormatter.dateFormat = "dd MMMM yyyy HH:mm"
            return newsDateFormatter.string(from: date)
        } else {
            return "Invalid Date Format"
        }
    }
}
