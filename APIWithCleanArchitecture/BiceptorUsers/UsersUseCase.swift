//
//  UsersUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 03/03/26.
//

import Foundation


protocol UseCase {
    func execute() async throws -> [Users]
}

