//
//  DeathsUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 13/04/26.
//

import Foundation

protocol DeathsUserRepo {
    
    
    func getData() async throws -> [DeathsDomain]
    
}
