//
//  DeathsViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 13/04/26.
//

import Foundation

@MainActor
class DeathsViewModel: ObservableObject {
    
    @Published var deaths: [DeathsDomain] = []
    @Published var err: String?
    
    let useCase: DeathsUseCase
    init(useCase: DeathsUseCase)
    {
        self.useCase = useCase
    }
    
    
    func loadData(){
        Task
        {
           await  fetchData()
        }
    }

    
    
    func fetchData() async {
        do {
            
            deaths = try await useCase.execute()
        }
        catch
        {
            err = error.localizedDescription
        }
    }
    
    
}
