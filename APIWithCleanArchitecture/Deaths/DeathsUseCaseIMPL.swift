//
//  DeathsUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 13/04/26.
//

import Foundation


class DeathsUseCaseIMPL : DeathsUseCase {
    
    
    
    let repo: DeathsUserRepo
    init(repo: DeathsUserRepo)
    {
        self.repo = repo
    }
    
    func execute() async throws -> [DeathsDomain] {
        try await repo.getData()
    }
    
}
