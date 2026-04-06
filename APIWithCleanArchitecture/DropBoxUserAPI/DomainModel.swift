//
//  DomainModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

struct DomainData {
    let title: String
    let rows : [DomainRows]
}

struct DomainRows {
    
    let title: String
    let description: String
    let imageHref: String
}
