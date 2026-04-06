//
//  DummyUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

protocol DummyUserRepo{
    func getData() async throws -> [DomainDummyUsers]
}
