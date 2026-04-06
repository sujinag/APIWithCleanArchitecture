//
//  RepoUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 18/03/26.
//

import Foundation

protocol RepoUserRepo
{
    func getData() async throws -> [RepoDomain]
}
