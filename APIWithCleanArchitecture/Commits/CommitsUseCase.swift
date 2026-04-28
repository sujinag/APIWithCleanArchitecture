//
//  CommitsUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import Foundation


protocol CommitsUseCase
{
    
    func execute() async throws -> [CommitsDomain]
    
}
