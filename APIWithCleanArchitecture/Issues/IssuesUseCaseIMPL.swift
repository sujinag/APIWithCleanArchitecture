//
//  IssuesUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/03/26.
//

import Foundation


class IsseusUseCaseIMPL: IssuesUseCase{
    
    let repo: IssuesUserRepo
    init(repo: IssuesUserRepo)
    {
        self.repo = repo
    }
    
    func execute() async throws -> [DomainIssus]
    {
        try await repo.getData()
    }

    
}
