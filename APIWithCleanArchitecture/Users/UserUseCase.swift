//
//  UsersUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/05/26.
//

import Foundation


protocol UserUseCase {
    
    func execute() async throws -> [UsersDomain]
}
