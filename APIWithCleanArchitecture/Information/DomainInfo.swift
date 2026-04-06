//
//  DomainInfo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import Foundation

struct DomainInfo {
    let data: Dataa
}

struct Dataa {
    let stations: [Stations]
    
}

struct Stations 
{
    let lat: Double
    

}
