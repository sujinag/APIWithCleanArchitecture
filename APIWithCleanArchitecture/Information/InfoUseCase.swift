//
//  InfoUseCase.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import Foundation

protocol InfoUseCase{
    func execute() async throws -> [Stations]
}
