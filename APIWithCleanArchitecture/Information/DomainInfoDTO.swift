//
//  DomainInfoDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import Foundation

struct StationResponse: Codable {
    let data: DataaDTO
}

struct DataaDTO: Codable
{
    
    let stations: [StationsDTO]

}

struct StationsDTO: Codable
{
    let lat: Double
    
    func toDomain() -> Stations{
        Stations(lat: lat)
    }
}
