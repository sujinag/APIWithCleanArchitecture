//
//  PractView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 26/05/26.
//

import SwiftUI

struct PractView: View {
    
    @State private var isNextView : Bool = false
    @State var  name: String = ""
    @State var age:Int = 0
    var body: some View {
        NavigationStack
        {
                GeometryReader { geo in
                    ScrollView{

                    let Cwidth = geo.size.width
                    let Cheight = geo.size.height
                    
                    VStack(spacing: 10)
                    {
                        
                        TextField("Name",text: $name)
                            .padding(Cwidth * 0.045)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(.gray))
                            )
                        
                        TextField("age",value:$age,format:.number)
                            .padding(Cwidth * 0.045)
                            .background(
                                RoundedRectangle(cornerRadius:10)
                                    .fill(Color(.gray))
                            )
                        
                        VStack{
                            Button("Submit"){
                                if name.isEmpty
                                {
                                    isNextView = true
                                }
                                
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(.gray))
                            )
                            
                        } //BVStack
                        .padding()
                        .navigationDestination(isPresented: $isNextView){
                            ProdView(prodsViewModel: ProductsViewModel(useCase: ProdUseCaseIMPL(repo: ProdUserRepoIMPL(infra: ProdInfra()))))
                        }
                        
                        
                        
                    } //VStack
                    .padding()
                    
                    } //ScrollVIew

                } //Geo
            
        } //NavStack
    }
}

struct PractView_Previews: PreviewProvider {
    static var previews: some View {
        PractView()
    }
}
