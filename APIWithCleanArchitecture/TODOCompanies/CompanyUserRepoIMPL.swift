//
//  CompanyUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 09/03/26.
//

import Foundation

class CompanyRepoIMPL: CompanyUserRepo {
    let api: APIManager
    init(api: APIManager){
        self.api = api
    }
    
    func getData() async throws -> [Companies]{
        let dto = try await api.InfraGetData()
        print("CompaniesData",dto)
        return dto.map{$0.toDomain()}
        
    }

}
