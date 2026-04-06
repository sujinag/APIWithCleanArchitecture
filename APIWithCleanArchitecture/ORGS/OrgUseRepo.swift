//
//  OrgUseRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 16/03/26.
//

import Foundation


protocol OrgUserRepo
{
    func getData() async throws -> [OrgsModel]
}
