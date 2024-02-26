//
//  NewsApi.swift
//  KumparanNews
//
//  Created by Arry on 25/02/24.
//

import Foundation
import Alamofire

// Define the endpoint URL
let endpoint = "https://berita-indo-api-next.vercel.app/api/republika-news/nusantara"

class NewsApi {
    
    static let shared = NewsApi()
    
    private init(){}
    
    func fetchLists() async throws -> [NewsArticle] {
        // 1. Validasi URL
        guard let url = URL(string: endpoint) else {
            throw URLError(.badURL)
        }
        
        // 2.
        let newsResult = try await withCheckedThrowingContinuation { continuation in
            AF.request(url).responseDecodable(of: NewsResponse.self){ response in
                switch response.result {
                case .success(let success):
                    continuation.resume(returning: success.data)
                case .failure(let failure):
                    continuation.resume(throwing: failure)
                }
                
            }
        }
        return newsResult
        
    }
}
