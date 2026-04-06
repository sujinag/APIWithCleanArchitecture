//
//  QuotesUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 31/03/26.
//

import Foundation


protocol QuotesUserRepo{
    
    func getData() async throws -> [DomainQuotes]
}
