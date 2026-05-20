//
//  TreesUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 28/04/26.
//

import Foundation


protocol TreesUseCase {
    
    func execute() async throws -> [Trees]
}
