//
//  QuotesUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 31/03/26.
//

import Foundation


struct QuotesUserRepoIMPL: QuotesUserRepo {
    
    let api: QuotesAPIInfra
    init(api: QuotesAPIInfra)
    {
        self.api = api
    }
    
    func getData() async throws -> [DomainQuotes]
    {
        let dto = try await api.getFromInfra()
        return dto.map{$0.toDomain()}
    }
    

}
