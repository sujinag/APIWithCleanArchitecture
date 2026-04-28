//
//  CommitsUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import Foundation


struct CommitsUseCaseIMPL: CommitsUseCase {
    
    
    let repo: CommitsUserRepo
    init(repo: CommitsUserRepo) {
        self.repo = repo
    }
    
    func execute() async throws -> [CommitsDomain] {
        try await repo.getData()
    }

    
}
