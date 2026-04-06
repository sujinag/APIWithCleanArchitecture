//
//  UserRepoFollowersIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import Foundation


class UserRepoFollowersIMPL: UserRepoFollowers {
    let api: FollowersApiManager
    init(api: FollowersApiManager){
        self.api = api
    }
    
    func getData() async throws -> [DomainFollowers]
    {
        let dto = try await api.getFromInfra()
        return dto.map{$0.toDomain()}
        
    }
}
