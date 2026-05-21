//
//  UseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/05/26.
//

import Foundation


class UseCaseIMPL: UserUseCase{
    let repo: UsersRepo
    init(repo: UsersRepo){
        self.repo = repo
    }
    
    func execute() async throws -> [UsersDomain]
    {
        try await repo.getData()
    }
}
