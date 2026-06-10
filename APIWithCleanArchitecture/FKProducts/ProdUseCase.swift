//
//  ProdUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/05/26.
//

import Foundation

protocol ProdUseCase
{
    
    func execute() async throws -> [ProdDomain]
    
}

