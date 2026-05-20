//
//  UsersRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/05/26.
//

import Foundation


class UsersRepoIMPL : UsersRepo {
    
    let userInfra : UsersInfra
    init(userInfra: UsersInfra)
    {
        self.userInfra = userInfra
    }
    
    func getData() async throws -> [UsersDomain]
    {
        let dto = try await userInfra.getFromInfra()
        return dto.map{$0.toDomain()}
    }
    
}
