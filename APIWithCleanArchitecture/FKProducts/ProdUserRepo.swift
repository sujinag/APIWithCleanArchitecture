//
//  ProdUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/05/26.
//

import Foundation


protocol ProdUserRepo
{
    
    func getData() async throws -> [ProdDomain]
    
}
