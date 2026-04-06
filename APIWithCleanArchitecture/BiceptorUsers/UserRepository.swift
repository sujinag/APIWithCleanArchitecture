//
//  UserRepository.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 03/03/26.
//

import Foundation


class UserRepository : UserRepo{
    func getData() async throws -> [Users] {
        let url = URL(string: "https://fake-json-api.mock.beeceptor.com/users")!
        let (data,response) = try await URLSession.shared.data(from: url)
        
        let dto = try JSONDecoder().decode([UsersDTO].self, from: data)
        print(data)

        return dto.map { $0.toDomain() }
    }
}
