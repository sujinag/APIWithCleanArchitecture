//
//  InfoUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import Foundation


class InfoUseCaseIMPL: InfoUseCase{
    
    let repo: InfoUserRepo
    init(repo: InfoUserRepo){
        self.repo = repo
    }
    
    func execute() async throws -> [Stations]
    {
        try await repo.getData()
    }
    
}
