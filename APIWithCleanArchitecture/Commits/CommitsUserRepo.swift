//
//  CommitsUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 24/04/26.
//

import Foundation


protocol CommitsUserRepo
{
    
    func getData() async throws -> [CommitsDomain]
}
