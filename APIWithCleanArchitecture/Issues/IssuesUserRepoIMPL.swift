//
//  IssuesUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/03/26.
//

import Foundation

class IssuesUserRepoIMPL: IssuesUserRepo{
    
    let api : IssuesInfra
    init(api: IssuesInfra)
    {
        self.api = api
    }
    
    
    func getData() async throws -> [DomainIssus]
    {
        let dto = try await api.getFromInfra()
        return dto.map{$0.toDomain()}
    }

    
    
}
