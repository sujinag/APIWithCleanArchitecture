//
//  UserRepoDropBoxIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

class UserRepoDropBoxIMPL: UserRepoDropBox {
    //https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json
    //https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json
    //https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json
    func getData() async throws -> DomainData {
        let url = URL(string: "\(APIEndPoint.baseUrl.url)s/2iodh4vg0eortkl/facts.json")!
        print("DropboxUrl",url)
        let (data,reponse) = try await URLSession.shared.data(from: url)
        
        let dto = try JSONDecoder().decode(DataDto.self, from: data)
        print(dto)
        return dto.toDomain()
    }
}
