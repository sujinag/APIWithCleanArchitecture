//
//  DummyViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation
@MainActor
class DummyViewModel: ObservableObject{
    @Published var users: [DomainDummyUsers] = []
    @Published var err: String?
    let usecase: DummyUseCase
    init(err: String? = nil, usecase: DummyUseCase) {
        self.err = err
        self.usecase = usecase
    }
    
    func fetchDummyData(){
        Task{
            await loadData()
        }
    }
    
    func loadData() async {
        do{
            users = try await usecase.execute()
        }
        catch{
            err = error.localizedDescription
        }
    }
    
}
