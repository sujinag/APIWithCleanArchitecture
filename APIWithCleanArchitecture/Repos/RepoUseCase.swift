//
//  RepoUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import Foundation

protocol RepoUseCase{
    func execute() async throws -> [RepoDomain]
}

