//
//  UserCaseImpl.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 03/03/26.
//

import Foundation

class UserCaseImpl : UseCase {
    let repo: UserRepo
    init(repo: UserRepo){
        self.repo = repo
    }
    
    func execute() async throws -> [Users] {
        try await repo.getData()
    }
}
