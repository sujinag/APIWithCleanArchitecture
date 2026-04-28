//
//  CommitsDomain.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import Foundation

struct CommitsDomain {
    
    let sha : String
    let url : String
    let id = UUID()
    //let commit: Commit
}

struct Commit {
    
    let author: Author
}

struct Author {
    
    let name: String
    let email: String
    let date: String
}
