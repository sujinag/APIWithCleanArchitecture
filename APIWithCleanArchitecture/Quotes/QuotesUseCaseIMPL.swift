//
//  QuotesUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 31/03/26.
//

import Foundation


struct QuotesUseCaseIMPL: QuotesUseCase
{
    
    let repo: QuotesUserRepo
    init(repo: QuotesUserRepo)
    {
        self.repo = repo
    }
    
    func execute() async throws -> [DomainQuotes]
    {
        try await repo.getData()
    }

    
    
}
