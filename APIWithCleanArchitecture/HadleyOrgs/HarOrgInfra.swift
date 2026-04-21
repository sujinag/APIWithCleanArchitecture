//
//  HarOrgInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/04/26.
//

import Foundation


class HarOrgInfra
{
    
    func getFromInfra() async throws -> [HarOrgDTO]
    {
        let url = URL(string: "https://api.github.com/users/hadley/orgs")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([HarOrgDTO].self,from: data)
    }
    
    
}


