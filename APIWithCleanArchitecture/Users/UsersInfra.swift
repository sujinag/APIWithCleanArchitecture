//
//  UsersInfra.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/05/26.
//

import Foundation


final class UsersInfra {
    
    
    func getFromInfra () async throws -> [UserData]
    {
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
        let (data,response) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([UserData].self,from: data)
        
        
    }
    
}
