//
//  ProdViewModel.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/05/26.
//

import Foundation

@MainActor
class ProductsViewModel: ObservableObject {
    
    @Published var products:[ProdDomain] = []
    @Published var err: String?
    
    let useCase: ProdUseCase
    init(useCase: ProdUseCase)
    {
        self.useCase = useCase
    }
    
    
    func loadProducts() async
    {
            do
            {
                
                products = try await useCase.execute()
            }
            catch
            {
                err = error.localizedDescription
            }
    }
    
    
    
}
