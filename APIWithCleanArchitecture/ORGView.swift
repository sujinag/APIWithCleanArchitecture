//
//  ORGView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 16/03/26.
//

import SwiftUI

struct ORGView: View {
    @StateObject var OrgViewMOdel: ORGViewModel
    init(OrgViewMOdel: ORGViewModel) {
        _OrgViewMOdel = StateObject(wrappedValue: OrgViewMOdel)
    }

    var body: some View {
        List {
            ForEach(OrgViewMOdel.OrgData, id:\.id){ items in
                HStack
                {
                    Text(items.url)
                    Spacer()
                    Text("\(items.login): \(items.id)")
                }

            }
        }
        .task
        {
             OrgViewMOdel.loadData()
        }
        .refreshable
        {
            OrgViewMOdel.loadData()
        }

    }
}

struct ORGView_Previews: PreviewProvider {
    static var previews: some View {
        ORGView(OrgViewMOdel: ORGViewModel(useCase:OrgUseCaseIMPL(userRepo: ORGUSerRepoImpl(infra: OrgInfraStructure()))))
    }
}
