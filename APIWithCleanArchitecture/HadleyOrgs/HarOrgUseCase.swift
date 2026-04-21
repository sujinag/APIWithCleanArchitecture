//
//  HarOrgUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/04/26.
//

import Foundation

protocol HarOrgUseCase {
    
    
    func execute() async throws -> [HarOrgDomain]
}
