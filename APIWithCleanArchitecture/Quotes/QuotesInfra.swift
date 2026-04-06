//
//  QuotesInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 31/03/26.
//

import Foundation

struct QuotesAPIInfra {
    
    func getFromInfra() async throws -> [DomainQuoteDTO] {
        let url = URL(string: "https://breaking-bad-api-six.vercel.app/api/quotes")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try  JSONDecoder().decode([DomainQuoteDTO].self,from : data)
    }
}
