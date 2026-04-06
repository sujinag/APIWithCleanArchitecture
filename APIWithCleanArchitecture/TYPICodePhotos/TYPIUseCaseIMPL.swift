//
//  TYPIUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

class TYPIUseCaseIMPL: TypiUseCase{
    
    let repo: TypiCodeUserRepo
    init(repo: TypiCodeUserRepo){
        self.repo = repo
    }
    func execute() async throws -> [TypiCodePhotos]
    {
        try await repo.getData()
    }
    
}
