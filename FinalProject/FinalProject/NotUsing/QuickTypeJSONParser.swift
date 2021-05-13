////
////  QuickTypeJSONPArser.swift
////  FinalProject
////
////  Created by Jorrin Thacker on 5/5/21.
////
//
//// This file was generated from JSON Schema using quicktype, do not modify it directly.
//// To parse the JSON, add this file to your project and do:
////
////   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
//
//import Foundation
//
// MARK: - MoviesData
//struct MoviesData: Codable, Identifiable {
//    var id: String
//    var results: [MovieResults]
//    var totalPages, totalResults: Int
//
//    enum CodingKeys: String, CodingKey {
//        case results
//        case id = "page"
//        case totalPages = "total_pages"
//        case totalResults = "total_results"
//    }
//}
//
// MARK: - Results
//struct MovieResults: Codable, Identifiable {
//    var adult: Bool?
//    var backdropPath: String?
//    var genreIDS: [Int]
//    var id: Int
//    var mediaType: MediaType
//    var originalLanguage: OriginalLanguage
//    var originalTitle: String?
//    var overview: String
//    var popularity: Double
//    var posterPath: String?
//    var releaseDate, title: String?
//    var video: Bool?
//    var voteAverage: Double
//    var voteCount: Int
//    var firstAirDate, name: String?
//    var originCountry: [String]?
//    var originalName: String?
//
//    enum CodingKeys: String, CodingKey {
//        case adult
//        case backdropPath = "backdrop_path"
//        case genreIDS = "genre_ids"
//        case id
//        case mediaType = "media_type"
//        case originalLanguage = "original_language"
//        case originalTitle = "original_title"
//        case overview, popularity
//        case posterPath = "poster_path"
//        case releaseDate = "release_date"
//        case title, video
//        case voteAverage = "vote_average"
//        case voteCount = "vote_count"
//        case firstAirDate = "first_air_date"
//        case name
//        case originCountry = "origin_country"
//        case originalName = "original_name"
//    }
//}
//
//enum MediaType: String, Codable {
//    case movie = "movie"
//    case tv = "tv"
//}
//
//enum OriginalLanguage: String, Codable {
//    case en = "en"
//}



// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let movieDetails = try? newJSONDecoder().decode(MovieDetails.self, from: jsonData)
//
//import Foundation
//
// MARK: - MovieDetails
//struct MovieDetails: Codable {
//    var adult: Bool?
//    var backdropPath: String?
//    var belongsToCollection: BelongsToCollection?
//    var budget: Int?
//    var genres: [Genre]?
//    var homepage: String?
//    var id: Int?
//    var imdbID, originalLanguage, originalTitle, overview: String?
//    var popularity: Double?
//    var posterPath: String?
//    var productionCompanies: [ProductionCompany]?
//    var productionCountries: [ProductionCountry]?
//    var releaseDate: String?
//    var revenue, runtime: Int?
//    var spokenLanguages: [SpokenLanguage]?
//    var status, tagline, title: String?
//    var video: Bool?
//    var voteAverage: Double?
//    var voteCount: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case adult
//        case backdropPath
//        case belongsToCollection
//        case budget, genres, homepage, id
//        case imdbID
//        case originalLanguage
//        case originalTitle
//        case overview, popularity
//        case posterPath
//        case productionCompanies
//        case productionCountries
//        case releaseDate
//        case revenue, runtime
//        case spokenLanguages
//        case status, tagline, title, video
//        case voteAverage
//        case voteCount
//    }
//}
//
// MARK: - BelongsToCollection
//struct BelongsToCollection: Codable {
//    var id: Int?
//    var name, posterPath, backdropPath: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id, name
//        case posterPath
//        case backdropPath
//    }
//}
//
// MARK: - Genre
//struct Genre: Codable {
//    var id: Int?
//    var name: String?
//}
//
// MARK: - ProductionCompany
//struct ProductionCompany: Codable {
//    var id: Int?
//    var logoPath: JSONNull?
//    var name, originCountry: String?
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case logoPath
//        case name
//        case originCountry
//    }
//}


