//
//  Dummy.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

class DummyUserRepoIMPL: DummyUserRepo{
    
    func getData() async throws -> [DomainDummyUsers] {
        let url = URL(string: "https://dummyjson.com/users")!
        print("DummyUserRepoIMPLURL",url)
        let (data,response) = try await URLSession.shared.data(from: url)
        
        let dto = try JSONDecoder().decode(DummyResponseDTO.self, from: data)
        print(dto)
        return dto.users.map{$0.toDomain()}
    }
}
