//
//  QuotesViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 31/03/26.
//

import Foundation

@MainActor
class QuotesViewModel: ObservableObject{
    
    @Published var quotes: [DomainQuotes] = []
    @Published var err: String?
    
    let useCase: QuotesUseCase
    init(useCase: QuotesUseCase){
        self.useCase = useCase
    }
    
    
    func loadData(){
        
        Task{
            
            await fetchData()
        }
    }
    
    
    func fetchData() async {
        
        do{
            quotes = try await useCase.execute()
        }
        catch
        {
            err = error.localizedDescription
        }
    }
    
}
