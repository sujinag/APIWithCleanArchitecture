//
//  CompaniesViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 09/03/26.
//

import Foundation
@MainActor
class CompaniesViewModel: ObservableObject {
    @Published var companies : [Companies] = []
    @Published var err : String?
    let useCase: ComapnyUseCase
    init(useCase: ComapnyUseCase){
        self.useCase = useCase
    }
    
    func fetchData() {
        Task
        {
            await loadingComapnies()
        }
    }
    
    func loadingComapnies() async {
        do {
            
            companies = try await useCase.execute()
        }
        catch{
            err = error.localizedDescription
        }
    }
}
