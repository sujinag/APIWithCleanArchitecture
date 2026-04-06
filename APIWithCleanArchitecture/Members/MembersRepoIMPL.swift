//
//  MembersRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/03/26.
//

import Foundation

class MembersRepoIMPL: MembersUserRepo{
    let api: MembersAPI
    init(api: MembersAPI){
        self.api = api
    }
    func getData() async throws -> [DomainMembers]
    {
        let dto = try await api.getFromMembersInfra()
        return dto.map{$0.toDomain()}
    }
}
