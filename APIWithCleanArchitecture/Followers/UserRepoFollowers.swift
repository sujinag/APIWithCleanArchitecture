//
//  File.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/03/26.
//

import Foundation
 
protocol UserRepoFollowers {
    
    
    func getData() async throws -> [DomainFollowers]
}
