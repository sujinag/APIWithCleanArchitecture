//
//  DomainFollowers.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import Foundation

struct DomainFollowers {
    let id: Int
    let name: String
    let owner: Owner
    
}

struct Owner{
    let login: String
    let type: String
}
