//
//  CompaniesDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 09/03/26.
//

import Foundation

struct CompaniesDTO: Codable {
    
    let id: Int
    let name: String
    let address: String
    let country: String
    let employeeCount: Int
    let industry: String
    let marketCap: Int
    let domain: String
    let logo: String
    
    func toDomain() -> Companies{
        Companies(id: id, name: name, address: address, country: country, employeeCount: employeeCount, industry: industry, marketCap: marketCap, domain: domain, logo: logo)
    }
    

}

