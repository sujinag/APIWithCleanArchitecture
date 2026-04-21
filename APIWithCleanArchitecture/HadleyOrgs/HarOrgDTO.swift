//
//  HarOrgDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/04/26.
//

import Foundation

struct HarOrgDTO : Codable
{
    let login : String
    let id: Int
    let url : String

    func toDomain() -> HarOrgDomain
    {
        
        HarOrgDomain(login: login,id:id,url:url)
        
    }
    
    
}
