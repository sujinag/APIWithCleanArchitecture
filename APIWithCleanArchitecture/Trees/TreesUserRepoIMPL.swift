//
//  TreesUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 28/04/26.
//

import Foundation


struct TreesUserRepoIMPL: TreesUserRepo {
    
    
    let infra : TreesInfra
    init(infra: TreesInfra)
    {
        self.infra = infra
    }
    
    func getData() async throws -> [Trees]
    {
        let dto = try await infra.getFromInfra()
        print("DTO",dto)
        return dto.map{$0.toDomain()}
    }

    
}
