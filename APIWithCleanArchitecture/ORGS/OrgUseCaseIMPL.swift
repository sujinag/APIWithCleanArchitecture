//
//  File.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 16/03/26.
//

import Foundation


class OrgUseCaseIMPL : OrgUseCase{
    
    
    let userRepo : OrgUserRepo
    init(userRepo : OrgUserRepo)
    {
        self.userRepo = userRepo
    }
    
    func execute() async throws -> [OrgsModel] {
        try await userRepo.getData()
    }

    
}
