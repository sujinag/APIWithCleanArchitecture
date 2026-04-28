//
//  CommitsDomainDTO.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import Foundation


struct CommitsDomainDTO : Codable {
    
    let sha : String
    let url : String

    func toDomain() -> CommitsDomain {
        CommitsDomain(sha: sha,url:url)
    }
}
