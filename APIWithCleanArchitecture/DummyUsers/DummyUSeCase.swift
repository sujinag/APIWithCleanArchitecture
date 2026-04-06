//
//  DummyUSeCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation
 
protocol DummyUseCase{
    func execute() async throws -> [DomainDummyUsers]
}
