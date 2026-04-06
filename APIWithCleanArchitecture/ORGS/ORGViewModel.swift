//
//  ORGViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 16/03/26.
//

import Foundation
@MainActor
class ORGViewModel: ObservableObject {
    @Published var OrgData: [OrgsModel] = []
    @Published var err: String?
    let useCase: OrgUseCase
    init(useCase: OrgUseCase){
        self.useCase = useCase
    }
    
    func loadData() {
        
        Task{
            await fetchImages()
        }
    }
    
    
    func fetchImages() async {
        do {
            
            OrgData = try await useCase.execute()
        }
        catch{
            
            err = error.localizedDescription
        }
    }
}
