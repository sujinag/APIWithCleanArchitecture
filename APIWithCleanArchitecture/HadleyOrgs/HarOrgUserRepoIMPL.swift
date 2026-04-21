//
//  HarOrgUserRepoIMPL.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/04/26.
//

import Foundation


struct HarOrgUserRepoIMPL : HarUserRepo {
    
    let getFromInfra : HarOrgInfra
    init(getFromInfra : HarOrgInfra)
    {
        self.getFromInfra = getFromInfra
    }
    
    func getData() async throws -> [HarOrgDomain]
    {
        
        let dto =  try await getFromInfra.getFromInfra()
        return dto.map{$0.toDomain()}
        
    }
    
    
    
}
