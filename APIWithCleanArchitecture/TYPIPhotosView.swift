//
//  TYPIPhotosView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 10/03/26.
//

import SwiftUI

struct TYPIPhotosView: View {
    @StateObject var TypiViewMOdel: TypiViewModel
    init(TypiViewMOdel: TypiViewModel) {
        _TypiViewMOdel = StateObject(wrappedValue: TypiViewMOdel)
    }

    var body: some View {
        List{
            ForEach(TypiViewMOdel.typiPhotos ,id:\.id){ photos in
                Text(photos.thumbnailUrl)

            }
        }
        .task{
            TypiViewMOdel.fetchImages()
        }
    }
}

struct TYPIPhotosView_Previews: PreviewProvider {
    static var previews: some View {
        TYPIPhotosView(TypiViewMOdel: TypiViewModel(useCase:TYPIUseCaseIMPL(repo:TypiUserRepoIMPL(api: TypiAPIManager()))))
    }
}
