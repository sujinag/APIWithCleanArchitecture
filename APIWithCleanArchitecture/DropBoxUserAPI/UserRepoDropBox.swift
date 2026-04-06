//
//  UserRepoDropBox.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

protocol UserRepoDropBox{
    func getData() async throws -> DomainData
}
