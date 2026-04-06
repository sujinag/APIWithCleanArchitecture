//
//  DomainIssues.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/03/26.
//

import Foundation

struct DomainIssus{
    let url: String
    let id: Int
    let number: Int
    let title: String
    let user: User
}

struct User
{
    let login: String
    let type: String
}
