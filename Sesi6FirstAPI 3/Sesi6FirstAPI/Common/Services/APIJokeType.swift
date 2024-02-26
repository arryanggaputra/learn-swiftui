//
//  APIJokeType.swift
//  Sesi6FirstAPI
//
//  Created by Hidayat Abisena on 29/01/24.
//

import Foundation

class APIJokeType {
    static let shared = APIJokeType()
    
    private init() {}
    
    // New method to fetch a joke by type
    func fetchJokeByType(jokeType: JokeType) async throws -> Joke {
        let urlString = Constants.jokeAPI + "/type/\(jokeType.rawValue)/1"
        guard let url = URL(string: urlString) else {
            print("😡 ERROR: Could not convert \(urlString) to a URL")
            throw URLError(.badURL)
        }
        
        print("🕸️ We are accessing the url \(url)")
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }
        
        guard (200...299).contains(httpResponse.statusCode) else {
            throw URLError(.init(rawValue: httpResponse.statusCode))
        }
        
        let jokes = try JSONDecoder().decode([Joke].self, from: data)
        guard let firstJoke = jokes.first else {
            throw NSError(domain: "No jokes found", code: 0, userInfo: nil)
        }
        return firstJoke
    }
}
