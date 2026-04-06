//
//  QuotesUIView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 31/03/26.
//

import SwiftUI

struct QuotesUIView: View {
    
    @StateObject var quotesViewModel: QuotesViewModel
    init(quotesViewModel: QuotesViewModel){
        _quotesViewModel = StateObject(wrappedValue: quotesViewModel)
    }
    var body: some View {
        
        List{
            ForEach(quotesViewModel.quotes,id:\.id){ items in
                Text(items.production)
                DisclosureGroup("QuotesDetails!"){
                    VStack(alignment: .trailing){
                        Text(items.quote)

                    }
                    .padding()
                }

            }
        }
        
        .task
        {
            quotesViewModel.loadData()
        }
    }
}

struct QuotesUIView_Previews: PreviewProvider {
    static var previews: some View {
       // QuotesUIView()
        QuotesUIView(quotesViewModel: QuotesViewModel(useCase: QuotesUseCaseIMPL(repo: QuotesUserRepoIMPL(api: QuotesAPIInfra()))))

    }
}
