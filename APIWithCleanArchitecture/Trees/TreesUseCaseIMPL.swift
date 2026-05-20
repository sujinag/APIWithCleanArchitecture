//
//  TreesUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 28/04/26.
//

import Foundation


struct TreesUseCaseIMPL: TreesUseCase {
    
    
    let repo: TreesUserRepo
    init(repo: TreesUserRepo)
    {
        self.repo = repo
    }
    
    func execute() async throws -> [Trees]
    {
        try await repo.getData()
    }

    
    
}
