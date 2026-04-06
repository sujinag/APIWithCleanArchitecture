//
//  UserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 09/03/26.
//

import Foundation

protocol CompanyUserRepo{
    
    func getData() async throws -> [Companies]
    
}
