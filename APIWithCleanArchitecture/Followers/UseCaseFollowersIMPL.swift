//
//  UseCaseFollowersIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import Foundation


class UseCaseFollowersIMPL: UseCaseFollowers{
    
    
    let repo: UserRepoFollowers
    init(repo: UserRepoFollowers)
    {
        self.repo = repo
    }
    
    func execute() async throws -> [DomainFollowers] {
        try await repo.getData()
    }

    
    
}

