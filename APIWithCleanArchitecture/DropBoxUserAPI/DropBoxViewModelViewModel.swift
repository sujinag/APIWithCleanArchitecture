//
//  ViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import Foundation

@MainActor
class DropBoxViewModel: ObservableObject {
    @Published var rows: DomainData?
    @Published var err: String?
    let useCase: UseCaseDropBox
    init (useCase: UseCaseDropBox){
        self.useCase = useCase
    }
    
    func fetchData(){
        Task{
            await loadingData()
        }
    }
    
    
    func loadingData() async {
        do {
            rows = try await useCase.execute()
        }
        catch{
            err = error.localizedDescription
        }
    }
}
