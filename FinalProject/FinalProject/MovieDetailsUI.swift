//
//  MovieDetailsUI.swift
//  FinalProject
//
//  Created by Jorrin Thacker on 5/6/21.
//

import SwiftUI

struct MovieDetailsUI: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    var item: Result
    
    var body: some View {
        
           
            ScrollView {
                VStack(alignment: .leading) {
                    let posterURLString = "https://image.tmdb.org/t/p/original//" + item.poster_path!
                    let backgroundURLString = "https://image.tmdb.org/t/p/original//" + item.backdrop_path!
                    RemoteImage(url: backgroundURLString)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: .infinity)
                        .overlay(
                            Rectangle()
                                .opacity(0.5)
                                .overlay(
                                    RemoteImage(url: posterURLString)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        .offset(x: -90, y: 50)
                                )
                        )
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.original_title ?? "Title Missing")
                                .font(.system(.title, design: .rounded))
                                .fontWeight(.black)
                                .lineLimit(3)
                                .padding(.top, 50)
                           
                            Text("Released on: " + (item.release_date ?? "Date Missing"))
                                .foregroundColor(.secondary)
                            
                            Text("Original Language: " + item.original_language)
                                .foregroundColor(.secondary)
                            
                            Text("Media: " + item.media_type)
                                .foregroundColor(.secondary)
                        }
                        .padding(.bottom, 0)
                        .padding(.horizontal)
                        
                        Spacer()
                        
                        CircleProgress(cirVal: item.vote_average ?? 0.0, voterNum: item.vote_count ?? 0)
                            .padding(.trailing, 20)
                            .padding(.top)
                    }

                    Text("Overview:")
                        .padding(.leading)
                        .padding(.top)
                        .padding(.bottom, 5)
                        .font(.title2)
                    Text(item.overview)
                        .font(.body)
                        .padding([.leading, .bottom, .trailing])
                        .lineLimit(1000)
                        .multilineTextAlignment(.leading)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    Button(action: {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "chevron.left.circle.fill")
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                    })
            )
    }

}


// MARK: - UI-Preview

//struct MovieDetailsUI_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieDetailsUI()
//    }
//}
