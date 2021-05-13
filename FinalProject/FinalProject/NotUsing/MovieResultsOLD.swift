////
////  MovieResultsUI.swift
////  FinalProject
////
////  Created by Jorrin Thacker on 5/6/21.
////
//
//import SwiftUI
//import Foundation
//
//struct MovieResultsOLD: View {
//    @State private var results = [MovieResults]()
//    var term : String
//    
//    
//    var body: some View {
//        
//                
//                
//        List(results, id: \.id) { item in
//            MovieCard(item: item)
//        }
//        .onAppear(perform: loadData)
//        
////        NavigationView {
////
////            List(results, id: \.overview) { movie in
////                ZStack {
////                    MovieCard(item: movie)
////                    NavigationLink(destination: MovieDetailsUI(item: movie)) {
////                        EmptyView()
////                    }
////                }
////            }
////            .onAppear(perform: loadData)
////        }
//        
//    }
//    
// 
//    func loadData() {
//        let searchURL = "https://api.themoviedb.org/3/search/multi?api_key=51bce37ace8570b6df21ef10a2c14269&language=en-US&include_adult=false&query=" + term
//        
//        guard let url = URL(string: searchURL) else {
//            print("Invalid URL")
//            return
//        }
//        let request = URLRequest(url: url)
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            if let data = data {
//                if let decodedResponse = try? JSONDecoder().decode(MovieResponse.self, from: data) {
//                    print("ta!!")
//                    // we have good data – go back to the main thread
//                    DispatchQueue.main.async {
//                        // update our UI
//                        self.results = decodedResponse.results
//                        print(self.results)
//                    }
//                    // everything is good, so we can exit
//                    return
//                }
//            }
//            // if we’re still here it means there was a problem
//            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
//        }.resume()
//    }
//}
//
//struct MovieResponse: Codable {
//    var results: [MovieResults]
//}
//
//
//struct MovieResults: Codable, Identifiable {
//    var id = UUID()
//    var overview: String
////    var original_language: String?
////    var media_type: String?
//    var original_title: String?
//    var poster_path: String?
//    var release_date: String?
////    var original_name: String?
////    var backdropPath: String?
////    var vote_average: Double
////    var vote_count: Int
////    var name: String?
////    var title: String?
//    //    var id: Int?
//    
//}
//
//struct crayolaButtonStyle: ButtonStyle {
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
//    }
//}
//
//struct MovieResultsOLD_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieResultsOLD(term: "Pitch+Perfect")
//    }
//}
//
//struct MovieCard: View {
//    var item: MovieResults
//    var posterURL = "https://image.tmdb.org/t/p/original//"
//    
//    
//    var body: some View {
//        HStack(alignment: .center) {
//            if item.poster_path != nil {
//                let urlString = posterURL + item.poster_path!
//                RemoteImage(url: urlString)
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150)
//            } else {
//                Image(systemName: "photo")
//                    .font(.system(size: 100))
//                    .frame(width: 100, height: 150)
//                    .padding(30)
//            }
//            VStack {
//                HStack {
//                    VStack {
//                        if item.original_title != nil {
//                            Text(item.original_title!)
//                                .font(.headline)
//                                .fontWeight(.bold)
//                        }
//                        Text(item.release_date!)
//                    }
//                }
//                .padding()
//                
//                Text(item.overview)
//                    .lineLimit(3)
//            }
//            .padding(5)
//            .frame(maxWidth: .infinity)
//            
//            
//        }
//        .frame(width: .infinity)
//        .cornerRadius(5)
//        .overlay(
//            RoundedRectangle(cornerRadius: 5)
//                .stroke(Color.black, lineWidth: 1)
//                .shadow(radius: 20)
//            
//        )
//        //            .buttonStyle(crayolaButtonStyle())
//        
//    }
//}
