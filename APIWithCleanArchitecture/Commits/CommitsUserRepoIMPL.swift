//
//  CommitsUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import Foundation

struct CommitsUserRepoIMPL : CommitsUserRepo
{
    
    
    let commitsINfra : CommitsInfra
    init(commitsINfra: CommitsInfra)
    {
        self.commitsINfra = commitsINfra
    }
    
    func getData() async throws -> [CommitsDomain]
    {
        let dto = try await commitsINfra.getFromInfra()
        return dto.map{$0.toDomain()}
        
    }

    
    
}
