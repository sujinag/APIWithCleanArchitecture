//
//  PracticeView.swift
//  APIWithCleanArchitecture
//
//  Created by k sujeet sudhakar nag on 20/05/26.
//

import SwiftUI

struct PracticeView: View {
    @State var name: String = ""
    @State var age: Int = 0
    @State private var goToNextView : Bool =  false
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                let Swidth = geo.size.width
                let Sheight = geo.size.height
                VStack
                {
                    TextField("Name",text: $name)
                        .padding(Swidth * 0.045)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.gray))
                        )
                    
                    TextField("Age",value: $age,format: .number)
                        .padding(Swidth * 0.045)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.gray))
                        )
                    
                    Button("Submit"){
                        if !name.isEmpty
                        {
                            goToNextView = true
                        }
                    }.padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.purple))
                        )
                        .navigationDestination(isPresented: $goToNextView){
                            Task(name: "sujeet\(name)")
                        }
                    
                    
                }
                .padding()
            } //Geo
            
        } //NavStack
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
    }
}
