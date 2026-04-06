//
//  ORGInfraStructure.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 16/03/26.
//

import Foundation


class OrgInfraStructure {
    
    func getFromInfra() async throws -> [DataDTO]{
        let url = URL(string: "https://api.github.com/users/hadley/orgs")!
        let (data,response) = try await URLSession.shared.data(from: url)
        
        return try JSONDecoder().decode([DataDTO].self,from: data)
        
    }
}
