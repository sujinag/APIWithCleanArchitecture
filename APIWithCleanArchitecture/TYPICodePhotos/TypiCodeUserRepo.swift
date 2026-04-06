//
//  TypiCodeUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

protocol TypiCodeUserRepo {
    
    func getData() async throws -> [TypiCodePhotos]
}
