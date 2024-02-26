//
//  JokeFetcher.swift
//  Sesi6FirstAPI
//
//  Created by Hidayat Abisena on 29/01/24.
//

import Foundation

class JokeFetcher {
    static func fetchNewJoke(jokeVM: JokeVM) async {
        await jokeVM.fetchJoke()
    }
}
