//
//  InfoUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import Foundation


class InfoUserRepoIMPL: InfoUserRepo {
//    func getData() async throws -> [Stations] {
//        <#code#>
//    }
    
    let api: InfraInfo
    init(api: InfraInfo){
        self.api = api
    }
    func getData() async throws -> [Stations]
    {
        let dto = try await api.getFromInfra()
        return dto.map{$0.toDomain()}
        
    }
}
