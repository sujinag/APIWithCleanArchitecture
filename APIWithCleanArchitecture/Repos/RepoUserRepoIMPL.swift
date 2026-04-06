//
//  RepoUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import Foundation

class RepoUserIMPL: RepoUserRepo {
    let apiFromINfra: RepoInfra
    init(apiFromINfra: RepoInfra)
    {
        self.apiFromINfra = apiFromINfra
    }
    
    func getData() async throws -> [RepoDomain]
    {
        let dto = try await apiFromINfra.getRepoDataFromInfra()
        print("Data",dto)
        return dto.map{$0.toDomain()}
    }
    
}
