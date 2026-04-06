//
//  InfraStructure.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 09/03/26.
//

import Foundation

class APIManager{
    
    func InfraGetData() async throws -> [CompaniesDTO]{
        let url = URL(string: "https://fake-json-api.mock.beeceptor.com/companies")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([CompaniesDTO].self,from: data)
        
    }

    
}
