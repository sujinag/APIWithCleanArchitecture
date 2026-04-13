//
//  File.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 13/04/26.
//

import Foundation

class DeathsUserRepoIMPL: DeathsUserRepo {
    
    
    let deathsInfra: DeathsInfra
    init(deathsInfra: DeathsInfra)
    {
        self.deathsInfra = deathsInfra
    }
    
    func getData() async throws -> [DeathsDomain]
    {
        let dto = try await deathsInfra.fetchFromInfra()
        return dto.map{$0.toDomain()}
    }

}
