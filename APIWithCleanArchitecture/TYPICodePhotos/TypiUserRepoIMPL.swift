//
//  TypiUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation


class TypiUserRepoIMPL: TypiCodeUserRepo{
    
    let api : TypiAPIManager
    init(api : TypiAPIManager){
        self.api = api
    }
    
    func getData() async throws -> [TypiCodePhotos]
    {
        let dto = try await api.typiInfra()
        print("TYPIPOHOTOS",dto)
        return dto.map{$0.toDomain()}
    }
    
}
