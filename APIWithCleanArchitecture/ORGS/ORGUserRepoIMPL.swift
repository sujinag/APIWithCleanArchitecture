//
//  ORGUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 16/03/26.
//

import Foundation

class ORGUSerRepoImpl : OrgUserRepo
{
            let infra : OrgInfraStructure
            init(infra: OrgInfraStructure)
            {
                self.infra = infra
            }
            
            func getData() async throws -> [OrgsModel]
            {
                let dto = try await infra.getFromInfra()
                return dto.map{$0.toDomain()}
            }

}
