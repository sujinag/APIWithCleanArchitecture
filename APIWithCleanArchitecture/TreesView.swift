//
//  TreesView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 28/04/26.
//

import SwiftUI

struct TreesView: View {
    @StateObject var treesViewModel : TreesViewModel
    init(treesViewModel: TreesViewModel)
    {
        _treesViewModel = StateObject(wrappedValue: treesViewModel)
    }

    var body: some View {
        
        List{
            ForEach(treesViewModel.trees,id:\.id){ trees in
                Text(trees.mode)

            }
        }
        
        .task
        {
            treesViewModel.LoadData()
        }
    }
}

struct TreesView_Previews: PreviewProvider {
    static var previews: some View {
       // TreesView()
        TreesView(treesViewModel: TreesViewModel(useCase: TreesUseCaseIMPL(repo: TreesUserRepoIMPL(infra: TreesInfra()))))

        
    }
}
