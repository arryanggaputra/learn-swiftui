//
//  EnumsJokeType.swift
//  Sesi6FirstAPI
//
//  Created by Hidayat Abisena on 28/01/24.
//

import Foundation

enum JokeType: String, CaseIterable, Identifiable {
    case general
    case knockKnock = "knock-knock"
    case programming
    case anime
    case food
    case dad

    var id: String { self.rawValue }
}

