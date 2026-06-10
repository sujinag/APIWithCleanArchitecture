//
//  File.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/05/26.
//

import Foundation



class ProdInfra {
    
    func getFromInfra() async throws -> [ProdDataDTO]
    {
        
        
        let url = URL(string: "https://fakestoreapi.com/products")!
        let (data,response) = try await URLSession.shared.data(from: url)
        print(data)
        return try JSONDecoder().decode([ProdDataDTO].self,from : data)
        
        
    }
}
