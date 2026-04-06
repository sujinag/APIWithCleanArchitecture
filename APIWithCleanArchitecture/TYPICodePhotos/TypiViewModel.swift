//
//  TypiViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import Foundation

class TypiViewModel : ObservableObject {
    
    @Published var typiPhotos : [TypiCodePhotos] = []
    @Published var err: String?
    
    let useCase: TypiUseCase
    init(useCase: TypiUseCase){
        self.useCase = useCase
    }
    
    func fetchImages() {
        Task{
            await loadPhotos()
        }
    }
    
    func loadPhotos () async {
        
        do{
            typiPhotos =  try await useCase.execute()
        }
        catch{
            err = error.localizedDescription
        }
    }
}
