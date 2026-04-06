//
//  UseCaseFollowers.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import Foundation

protocol UseCaseFollowers{
    
    func execute() async throws -> [DomainFollowers]
}

