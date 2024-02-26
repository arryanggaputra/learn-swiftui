//
//  KumparanNews.swift
//  KumparanNews
//
//  Created by Hidayat Abisena on 11/02/24.
//

import SwiftUI

struct RepublikaNews: View {
    @StateObject private var newsVM = NewsVM()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(newsVM.news) { item in
                    VStack(alignment:.center, spacing: 20) {
                    
                        HStack (alignment: .top, spacing:20 ) {
                            AsyncImage(url: URL(string: item.image.small ?? "")) { phase in
                                switch phase {
                                case .success(let image):
                                    image.resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                case .failure:
                                    Image(systemName: "camera.metering.unknown")
                                        .frame(width:100, height: 100)
                                
                                case .empty:
                                    ProgressView().scaleEffect(1.5)
                                
                                default:
                                    EmptyView()
                                }
                            }
                            .frame(width: 100, height: 100)
                            
                            VStack (alignment: .leading, spacing:10) {
                                Text(item.title)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                    .multilineTextAlignment(.leading)
                                
                                Text(item.creator)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .lineLimit(4)
                                    .multilineTextAlignment(.leading)
                                
                                Text(item.isoDate.formatDateForNews())
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .lineLimit(4)
                                    .multilineTextAlignment(.leading)
                                
                                
                            }
                        }
                        
                    }
                }
            }
            .listStyle(.plain)
            .refreshable {
                await newsVM.loadNews()
            }
            .task {
                await newsVM.loadNews()
            }
            .navigationTitle("Repulika News")
            .overlay {
                switch newsVM.loadingOverlay {
                case .loading:
                    ProgressView().scaleEffect(2.0)
                case .error(let string):
                    Text(string)
                        .font(.caption)
                        .foregroundStyle(.red)
                        .padding()
                case .none:
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    RepublikaNews()
}


extension RepublikaNews {
    
}
