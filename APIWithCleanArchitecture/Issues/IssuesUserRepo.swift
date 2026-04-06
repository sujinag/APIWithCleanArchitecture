//
//  IssuesRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/03/26.
//

import Foundation

protocol IssuesUserRepo {
    
    func getData() async throws -> [DomainIssus]
}

