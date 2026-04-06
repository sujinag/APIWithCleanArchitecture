//
//  RepoUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import Foundation

class RepoUseCaseIMPL: RepoUseCase {
    
    let repo: RepoUserRepo
    init(repo: RepoUserRepo){
        self.repo = repo
    }
    
    func execute() async throws -> [RepoDomain]
    {
        try await repo.getData()
    }

    
    
}
