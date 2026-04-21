//
//  HarOrgUseCaseIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/04/26.
//

import Foundation


struct HarOrgUseCaseIMPL : HarOrgUseCase
{
    
            let harUserRepo : HarUserRepo
            init(harUserRepo: HarUserRepo)
            {
                self.harUserRepo = harUserRepo
            }

            
            func execute() async throws -> [HarOrgDomain]
            {
                try await harUserRepo.getData()
            }
    
    
    
}
