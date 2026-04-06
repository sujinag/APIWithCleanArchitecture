//
//  CompaniesView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 09/03/26.
//

import SwiftUI

struct CompaniesView: View {
    
    @StateObject var compViewModel: CompaniesViewModel
    init(compViewModel: CompaniesViewModel) {
        _compViewModel = StateObject(wrappedValue: compViewModel)
    }

    var body: some View {
        List{
            ForEach(compViewModel.companies,id: \.id){ companies in
                HStack {
                    Text("EMPLYCOUNT: \n \(companies.employeeCount)")
                      Spacer()
                    Text("COUNTRY \n \(companies.country)")
                }
            }
        }
        .task{
            compViewModel.fetchData()
        }

    }
}

struct CompaniesView_Previews: PreviewProvider {
    static var previews: some View {
        CompaniesView(compViewModel: CompaniesViewModel(useCase: CompanyUseCaseIMPL(repo: CompanyRepoIMPL(api: APIManager()))))
    }
}
