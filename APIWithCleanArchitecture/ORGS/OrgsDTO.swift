//
//  OrgsDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 16/03/26.
//

import Foundation

struct DataDTO : Codable{
    
    let login : String
    let id: Int
    let url: String

    func toDomain() -> OrgsModel
    {
        OrgsModel(login: login,id:id,url:url)
    }
    
}

