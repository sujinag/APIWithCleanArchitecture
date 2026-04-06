//
//  QuotesUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 31/03/26.
//

import Foundation


protocol QuotesUseCase {
    
    func execute() async throws -> [DomainQuotes]
}
