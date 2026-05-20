//
//  UsersRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/05/26.
//

import Foundation

protocol UsersRepo
{
    func getData()async throws -> [UsersDomain]
}
