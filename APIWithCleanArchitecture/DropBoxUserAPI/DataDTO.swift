//
//  DataDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation




struct DataDto : Codable{
    let title: String
    let rows : [DataRowsDto]
    
    func toDomain() -> DomainData{
        DomainData(title: title, rows: rows.map{$0.toDomain()})
    }

}

struct DataRowsDto: Codable {
    let title: String
    let description: String
    let imageHref: String
    
    func toDomain() -> DomainRows {
        DomainRows(title: title, description: description, imageHref: imageHref)
    }

}
