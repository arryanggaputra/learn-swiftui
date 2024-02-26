//
//  JokeViewModel.swift
//  Sesi6FirstAPI
//
//  Created by Hidayat Abisena on 28/01/24.
//

import Foundation

@MainActor
class NewsVM: ObservableObject {
    @Published var news  = [NewsArticle]()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    func loadNews() async {
        isLoading = true
        defer {
            isLoading = false
        }
        errorMessage = nil
        
        do {
            news = try await NewsApi.shared.fetchLists()
        } catch {
            errorMessage = "\(error.localizedDescription) Failed to fetch news!!!"
            print(error)
        }
      
    }
    
    enum LoadingOverlayState {
        case loading
        case error(String)
        case none
    }
    
    var loadingOverlay: LoadingOverlayState {
        if (isLoading) {
            return .loading
        }
        if let errorMessage = errorMessage, !errorMessage.isEmpty {
            return .error(errorMessage)
        }
        return .none
    }
}

