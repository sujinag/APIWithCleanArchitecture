//
//  UsersUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 03/03/26.
//

import Foundation

protocol UserRepo {
    func getData() async throws -> [Users]
}

