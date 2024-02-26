//
//  JokeViewModel.swift
//  Sesi6FirstAPI
//
//  Created by Hidayat Abisena on 28/01/24.
//

import Foundation

class JokeVM: ObservableObject {
    @Published var joke: Joke?
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    @Published var jokeTypes: [JokeType] = JokeType.allCases
    @Published var selectedJokeType: JokeType = .general
    
    func fetchJoke() async {
        DispatchQueue.main.async {
            self.isLoading = true
            self.errorMessage = nil
        }
        
        do {
            // let fetchedJoke = try await APIService.shared.fetchJokeServices()
            let fetchedJoke = try await APIJokeType.shared.fetchJokeByType(jokeType: selectedJokeType)
            DispatchQueue.main.async {
                self.joke = fetchedJoke
                print("Setup: \(self.joke?.setup ?? "No setup")")
                print("Punchline: \(self.joke?.punchline ?? "No punchline")")
                self.isLoading = false
            }
        } catch {
            DispatchQueue.main.async {
                self.errorMessage = error.localizedDescription
                self.isLoading = false
                print("😡 ERROR: Could not get data from URL: \(Constants.jokeAPI). \(error.localizedDescription)")
                print("😡 ERROR: Could not get data for type \(self.selectedJokeType.rawValue). \(error.localizedDescription)")
            }
        }
    }
}
