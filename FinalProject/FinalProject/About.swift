//
//  About.swift
//  FinalProject
//
//  Created by Jorrin Thacker on 5/8/21.
//

import SwiftUI

struct About: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Color.black
            .opacity(0.8)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("About This Project")
                    .foregroundColor(.yellow)
                    .font(.title)
                    .underline()
                    .padding()
                
                Text(" This project was made using the Movie Database’s free API. Simply click the search button on the homepage and enter your query to start seeing the millions of movies and TV shows available.")
                    .foregroundColor(.yellow)
                    .font(.headline)
                    .padding()
                
               
                
                VStack {
                    Text("Website: ")
                        .foregroundColor(.yellow)
                        .font(.headline)
                        .padding(.bottom, 1)
                    HStack {
                        Image(systemName: "globe")
                            .foregroundColor(.blue)
                            .font(.title2)
                        Link("TMDB Website", destination: URL(string: "https://www.themoviedb.org/?language=en-US")!)
                            .font(.title2)
                    }
                }
                .padding()
                
                Spacer()
                Text("© Copyright. \nAll content belongs to TMDB and is not the property of the developer nor of the University of Georgia.")
                    .foregroundColor(.yellow)
                    .font(.footnote)
                    .padding()
                
                
                
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Image(systemName: "chevron.left.circle.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.yellow)
                                })
        )
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
