//
//  HarOrgViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/04/26.
//

import Foundation

@MainActor
class HarOrgViewModel : ObservableObject {
    @Published var harOrgData : [HarOrgDomain] = []
    @Published var err: String?
    
    let harUseCase : HarOrgUseCase
    init(harUseCase: HarOrgUseCase)
    {
        self.harUseCase = harUseCase
    }
    
    
        func loadData()
    {
        Task
        {
            await fetchData()
        }
        
    }
    
    
    func fetchData() async {
        do {
            
            harOrgData =   try await harUseCase.execute()
        }
        catch {
            err = error.localizedDescription
        }
    }
    
}
