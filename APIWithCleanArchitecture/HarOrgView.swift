//
//  HarOrgView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 21/04/26.
//

import SwiftUI

struct HarOrgView: View
{
    @StateObject var harOrgViewModel : HarOrgViewModel
    init(harOrgViewModel: HarOrgViewModel)
    {
        _harOrgViewModel = StateObject(wrappedValue: harOrgViewModel)
    }
    var body: some View {
        
        List{
            ForEach(harOrgViewModel.harOrgData, id: \.id) { org in
                
                Text(org.login)

            }
        }
        .task
        {
            harOrgViewModel.loadData()
            
        }
        .refreshable
        {
            harOrgViewModel.loadData()

        }
    }
}

struct HarOrgView_Previews: PreviewProvider {
    static var previews: some View {
       // HarOrgView()
        HarOrgView(harOrgViewModel: HarOrgViewModel(harUseCase: HarOrgUseCaseIMPL(harUserRepo: HarOrgUserRepoIMPL(getFromInfra: HarOrgInfra()))))

    }
}
