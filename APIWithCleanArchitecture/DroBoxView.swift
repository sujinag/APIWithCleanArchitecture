//
//  DroBoxView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 05/03/26.
//

import SwiftUI

struct DroBoxView: View {
    @StateObject var viewModel: DropBoxViewModel
    init(viewModel: DropBoxViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(viewModel.rows?.rows ?? [],id: \.title){ items in
                    Text(items.title)
                        .foregroundColor(Color.red)

                }
            }
        }//ScrollView
        .task{
            viewModel.fetchData()
        }
    }
}

struct DroBoxView_Previews: PreviewProvider {
    static var previews: some View {
        DroBoxView(viewModel: DropBoxViewModel(useCase: UseCaseDropBoxIMPL(repo: UserRepoDropBoxIMPL())))
    }
}
