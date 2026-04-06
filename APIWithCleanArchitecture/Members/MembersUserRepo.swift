//
//  MembersUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/03/26.
//

import Foundation

protocol MembersUserRepo{
    func getData() async throws -> [DomainMembers]
}

