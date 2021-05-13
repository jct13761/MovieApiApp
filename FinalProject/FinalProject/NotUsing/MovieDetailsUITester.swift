//
//  MovieDetailsUITester.swift
//  FinalProject
//
//  Created by Jorrin Thacker on 5/8/21.
//

import SwiftUI

struct MovieDetailsUITester: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
//    var item: Result
    var poster_path : String
    var backdrop_path : String
    var original_title: String
    var release_date : String
    var original_language : String
    var media_type : String
    var vote_average : Double
    var vote_count : Int
    var overview: String

    
    var body: some View {
        
           
            ScrollView {
                VStack(alignment: .leading) {
                    let posterURLString = "https://image.tmdb.org/t/p/original//" + poster_path
                    let backgroundURLString = "https://image.tmdb.org/t/p/original//" + backdrop_path
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
                            Text(original_title)
                                .font(.system(.title, design: .rounded))
                                .fontWeight(.black)
                                .lineLimit(3)
                                .padding(.top, 50)
                           
                            Text("Released on: " + release_date)
                                .foregroundColor(.secondary)
                            
                            Text("Original Language: " + original_language)
                                .foregroundColor(.secondary)
                            
                            Text("Media: " + media_type)
                                .foregroundColor(.secondary)
                        }
                        .padding(.bottom, 0)
                        .padding(.horizontal)
                        
                        Spacer()
                        
                        CircleProgress(cirVal: vote_average, voterNum: vote_count)
                            .padding(.trailing, 20)
                            .padding(.top)
                    }

                    Text("Overview:")
                        .padding(.leading)
                        .padding(.top)
                        .padding(.bottom, 5)
                        .font(.title2)
                    Text(overview)
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


struct MovieDetailsUITester_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsUITester(poster_path: "ntRIoh8Qf1BI1AYGx0STfq0wUmb.jpg", backdrop_path: "cCW2f0tf73vCV22J4fJAEnrnEWD.jpg", original_title: "Pitch Perfect", release_date: "2012-09-28", original_language: "en", media_type: "movie", vote_average: 7.3, vote_count: 4510, overview: "The Bellas are back, and they are better than ever. After being humiliated in front of none other than the President of the United States of America, the Bellas are taken out of the Aca-Circuit. In order to clear their name, and regain their status, the Bellas take on a seemingly impossible task: winning an international competition no American team has ever won. In order to accomplish this monumental task, they need to strengthen the bonds of friendship and sisterhood and blow away the competition with their amazing aca-magic! With all new friends and old rivals tagging along for the trip, the Bellas can hopefully accomplish their dreams.")
    }
}
