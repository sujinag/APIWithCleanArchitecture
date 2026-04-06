//
//  TypiInfraStructure.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

class TypiAPIManager{
    
    func typiInfra() async throws -> [TYPICodeDTO] {
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([TYPICodeDTO].self,from: data)
    }
}
