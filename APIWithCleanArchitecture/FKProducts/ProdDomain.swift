//
//  ProdDomain.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/05/26.
//

import Foundation


struct ProdDomain {
    let id : Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: Rating
}


struct Rating {
    
    let rate: Double
    let count: Int
}
