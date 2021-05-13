////
////  MovieJSONParser.swift
////  FinalProject
////
////  Created by Jorrin Thacker on 5/5/21.
////
//
//import SwiftUI
//
//public class MovieJSONParser: ObservableObject {
//    var term = "Marvel"
//    @Published var id = [MoviesData]()
////    @Published var media_type = [MovieDataLayout]()
////    @Published var original_title = [MovieDataLayout]()
////    @Published var overview = [MovieDataLayout]()
////    @Published var release_date = [MovieDataLayout]()
////    @Published var poster_path = [MovieDataLayout]()
//
//
//    init() {
//        load()
//    }
//    
//    func load() {
////        let url = "https://api.themoviedb.org/3/search/multi?api_key=51bce37ace8570b6df21ef10a2c14269&language=en-US&query=" + term + "&page=1&include_adult=false"
//        let dataUrl = URL(string: "https://api.themoviedb.org/3/search/multi?api_key=51bce37ace8570b6df21ef10a2c14269&language=en-US&query=Marvel&page=1&include_adult=false")!
//        let decoder = JSONDecoder()
//        URLSession.shared.dataTask(with: dataUrl) { (data, response, error) in
//            do {
//                if let d = data {
//                    let decodedLists = try decoder.decode([MoviesData].self, from: d)
////                    self.id = welcome!
//                    
//
//                    DispatchQueue.main.async {
//                        self.id = decodedLists
////                        self.media_type = decodedLists
////                        self.original_title = decodedLists
////                        self.overview = decodedLists
////                        self.release_date = decodedLists
////                        self.poster_path = decodedLists
//                    }
//                } else {
//                    print("No Data")
//                } // if-else
//            } catch {
//                print("Error")
//            } // do-catch
//        }.resume()
//    }
//}
//
////Poster Path: "http://image.tmdb.org/t/p/w500/your_poster_path"
//
//
////struct MovieDataLayout: Codable, Identifiable {
////    public var id: String
////    public var media_type: String
////    public var original_title: String
////    public var overview: String
////    public var release_date: String
////    public var poster_path: String?
////
////
////    enum CodingKeys: String, CodingKey {
////        case id = "id"
////        case media_type = "media_type"
////        case original_title = "original_title"
////        case overview = "overview"
////        case release_date = "release_date"
////        case poster_path = "poster_path"
////    }
////}
////
////struct MovieJSONLayout: Codable, Identifiable {
////    public var id: String
////    public var results: [MovieDataLayout]
////    public var total_pages: String
////    public var total_results: String
////
////
////    enum CodingKeys: String, CodingKey {
////        case id = "page"
////        case results
////        case total_pages = "total_pages"
////        case total_results = "total_results"
////
////    }
////}
//
//
//
