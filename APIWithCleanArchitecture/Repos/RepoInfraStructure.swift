//
//  RepoInfraStructure.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import Foundation

class RepoInfra {
    
    func getRepoDataFromInfra() async throws -> [RepoDTO]{
        let url = URL(string: "https://api.github.com/orgs/ggobi/events")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return  try JSONDecoder().decode([RepoDTO].self,from: data)
    }
}
