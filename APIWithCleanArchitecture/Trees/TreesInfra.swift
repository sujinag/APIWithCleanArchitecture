//
//  TreesInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 28/04/26.
//

import Foundation


class TreesInfra {
    
    func getFromInfra() async throws -> [TreesDTO] {
        let url = URL(string:"https://api.github.com/repos/tidyverse/ggplot2/git/trees/3d5b6fd61e02ed4f60b3904717d3e44f5d77f82a")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([TreesDTO].self,from: data)
        
    }
}
