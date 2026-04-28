//
//  CommitsInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import Foundation


class CommitsInfra {
    
    func getFromInfra() async throws -> [CommitsDomainDTO]
    {
        let url = URL(string: "https://api.github.com/repositories/19438/commits")!
        let (data,repsonse) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([CommitsDomainDTO].self,from:data)
    }
}
