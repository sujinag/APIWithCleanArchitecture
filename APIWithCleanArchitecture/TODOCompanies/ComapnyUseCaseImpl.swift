//
//  ComapnyUseCaseImpl.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 09/03/26.
//

import Foundation

class CompanyUseCaseIMPL : ComapnyUseCase{
    
    let repo: CompanyUserRepo
    init(repo: CompanyUserRepo)
    {
        self.repo = repo
    }
    
    func execute() async throws -> [Companies]{
        try await repo.getData()
        
    }

    
}
