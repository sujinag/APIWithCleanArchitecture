//
//  TYPICodeDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

struct TYPICodeDTO : Codable{
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String

    func toDomain() -> TypiCodePhotos{
        TypiCodePhotos(albumId: albumId, id: id, title: title, url: url, thumbnailUrl: thumbnailUrl)
    }
    
}
