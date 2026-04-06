//
//  IssuesInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/03/26.
//

import Foundation

class IssuesInfra{
    
    func getFromInfra() async throws -> [IssuesDTO] {
        
        let url = URL(string: "https://api.github.com/repositories/19438/issues")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([IssuesDTO].self,from:data)
        
    }
}
