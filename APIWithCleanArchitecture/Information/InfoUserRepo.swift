//
//  InfoUserRepo.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import Foundation

protocol InfoUserRepo
{
    func getData() async throws -> [Stations]
}


