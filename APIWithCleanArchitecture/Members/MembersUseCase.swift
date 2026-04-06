//
//  MembersUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/03/26.
//

import Foundation

protocol MembersUseCase
{
    func execute() async throws -> [DomainMembers]
}
