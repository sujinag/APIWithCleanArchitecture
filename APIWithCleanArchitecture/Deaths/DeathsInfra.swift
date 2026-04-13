//
//  DeathsInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 13/04/26.
//

import Foundation


class DeathsInfra{
    
    func fetchFromInfra() async throws -> [DeathsDomainDTO]
    {
        let url = URL(string: "https://breaking-bad-api-six.vercel.app/api/deaths")!
        let (data,response) = try await  URLSession.shared.data(from: url)
        return try JSONDecoder().decode([DeathsDomainDTO].self,from: data)
    }
}
