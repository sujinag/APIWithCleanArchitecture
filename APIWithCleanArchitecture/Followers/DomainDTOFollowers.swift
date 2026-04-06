//
//  DomainDTOFollowers.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import Foundation
struct DomainDTOFollowers: Codable
{
    let id: Int
    let name: String
    let owner: OwnerDTO
    
    func toDomain() -> DomainFollowers{
        DomainFollowers(id:id,name:name,owner:owner.toDomain())
    }
    
}

struct OwnerDTO: Codable
{
    let login: String
    let type: String
    func toDomain() -> Owner
    {
        Owner(login:login,type:type)
    }
    
}
