//
//  DummyUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

class DummyUseCaseIMPL: DummyUseCase{
    let repo: DummyUserRepo
    init(repo: DummyUserRepo) {
        self.repo = repo
    }
    func execute() async throws -> [DomainDummyUsers] {
        try await repo.getData()
    }
}
