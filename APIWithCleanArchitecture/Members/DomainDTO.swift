//
//  DomainDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/03/26.
//

import Foundation

struct MembersDTO: Codable
{
    
    
    let login: String
    let id: Int
    let url: String
    let type: String
    
    func toDomain() -> DomainMembers{
        DomainMembers(login:login,id:id,url:url,type:type)
    }

}

