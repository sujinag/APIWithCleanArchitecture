//
//  DomainQuoteDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 31/03/26.
//

import Foundation


struct DomainQuoteDTO: Codable
{
    
    let quote: String
    let production: String
    
    func toDomain() -> DomainQuotes
    {
        DomainQuotes(quote: quote,production: production)
    }
    
    
}
