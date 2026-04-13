//
//  DeathsDomainDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 07/04/26.
//

import Foundation

struct DeathsDomainDTO : Codable
{
    
    let character : String
    let image: String
    let details: String
    let episode : Int
    let production: String
    
    func toDomain() -> DeathsDomain {
        DeathsDomain(character: character,image:image,details:details,episode:episode,production:production)
    }
}
