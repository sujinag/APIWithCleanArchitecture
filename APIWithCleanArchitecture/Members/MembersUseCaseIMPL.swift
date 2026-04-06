//
//  MembersUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/03/26.
//

import Foundation

class MembersUseCaseIMPL: MembersUseCase{
    let repo: MembersUserRepo
    init(repo: MembersUserRepo){
        self.repo = repo
    }
    
    func execute() async throws -> [DomainMembers]
    {
        try await repo.getData()
    }
}
