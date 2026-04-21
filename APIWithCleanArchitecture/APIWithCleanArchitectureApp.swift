//
//  APIWithCleanArchitectureApp.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 03/03/26.
//

import SwiftUI

@main
struct APIWithCleanArchitectureApp: App {
    var body: some Scene {
        WindowGroup {
          //  ContentView(viewModel: ViewModel(usecase: UserCaseImpl(repo: UserRepository())))
           // DroBoxView(viewModel: DropBoxViewModel(useCase: UseCaseDropBoxIMPL(repo: UserRepoDropBoxIMPL())))
           // DummyUsers(viewModel: DummyViewModel(usecase: DummyUseCaseIMPL(repo: DummyUserRepoIMPL())))
           // CompaniesView(compViewModel: CompaniesViewModel(useCase: CompanyUseCaseIMPL(repo: CompanyRepoIMPL(api: APIManager()))))
            // WeatherView(weatherViewModel: WeatherViewModel(useCase: WeatherUseCaseIMPL(repo: WeatherUserRepoIMPL(apiService: WeatherService()))))
           // TYPIPhotosView(TypiViewMOdel: TypiViewModel(useCase:TYPIUseCaseIMPL(repo:TypiUserRepoIMPL(api: TypiAPIManager()))))

          //  ORGView(OrgViewMOdel: ORGViewModel(useCase:OrgUseCaseIMPL(userRepo: ORGUSerRepoImpl(infra: OrgInfraStructure()))))
            
           // EventsView(RepoViewMode: RepoViewModel(repoUseCase:RepoUseCaseIMPL(repo: RepoUserIMPL(apiFromINfra: RepoInfra()))))
           // MembersView(membersViewMOdel: MembersViewModel(useCase:MembersUseCaseIMPL(repo: MembersRepoIMPL(api: MembersAPI()))))

           // InfoView(infoViewMOdel: InfoVIewModel(useCase:InfoUseCaseIMPL(repo: InfoUserRepoIMPL(api: InfraInfo()))))


           // IssuesView(issuesViewMOdel: IssuesViewModel(useCase:IsseusUseCaseIMPL(repo: IssuesUserRepoIMPL(api: IssuesInfra()))))
            
           // FollowersView(followersViewMOdel: FollowersViewModel(useCase: UseCaseFollowersIMPL(repo: UserRepoFollowersIMPL(api: FollowersApiManager()))))

          //  QuotesUIView(quotesViewModel: QuotesViewModel(useCase: QuotesUseCaseIMPL(repo: QuotesUserRepoIMPL(api: QuotesAPIInfra()))))

          //  DeathsView(deathsViewModel: DeathsViewModel(useCase: DeathsUseCaseIMPL(repo: DeathsUserRepoIMPL(deathsInfra: DeathsInfra()))))
            
            HarOrgView(harOrgViewModel: HarOrgViewModel(harUseCase: HarOrgUseCaseIMPL(harUserRepo: HarOrgUserRepoIMPL(getFromInfra: HarOrgInfra()))))


        }
    }
}
