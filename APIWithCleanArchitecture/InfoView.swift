//
//  InfoView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 23/03/26.
//

import SwiftUI

struct InfoView: View {
    @StateObject var infoViewMOdel: InfoVIewModel
    init(infoViewMOdel: InfoVIewModel) {
        _infoViewMOdel = StateObject(wrappedValue: infoViewMOdel)
    }

    var body: some View {
        List{
            ForEach(infoViewMOdel.stations,id:\.lat){ data in
                Text(String(data.lat))

            }
        }
        .task{
            infoViewMOdel.loadData()
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        //InfoView()
        InfoView(infoViewMOdel: InfoVIewModel(useCase:InfoUseCaseIMPL(repo: InfoUserRepoIMPL(api: InfraInfo()))))

    }
}
