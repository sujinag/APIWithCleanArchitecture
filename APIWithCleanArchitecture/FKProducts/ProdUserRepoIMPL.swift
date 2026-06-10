//
//  ProdUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/05/26.
//

import Foundation

struct ProdUserRepoIMPL : ProdUserRepo {
    
    let infra : ProdInfra
    init(infra: ProdInfra) {
        self.infra = infra
    }
    
    func getData() async throws -> [ProdDomain] {
        let dto = try await infra.getFromInfra()
        print(dto)
        return dto.map{$0.toDomain()}
    }
    

    
}
