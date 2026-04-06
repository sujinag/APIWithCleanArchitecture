//
//  UseCaseDropBoxIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

class UseCaseDropBoxIMPL: UseCaseDropBox{
    let repo: UserRepoDropBox
    init(repo: UserRepoDropBox) {
        self.repo = repo
    }
    

    func execute() async throws -> DomainData {
        try await repo.getData()
    }
}
