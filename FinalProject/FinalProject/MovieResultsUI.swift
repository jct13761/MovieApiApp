//
//  MovieResultsUI.swift
//  FinalProject
//
//  Created by Jorrin Thacker on 5/6/21.
//

import SwiftUI
import Foundation

struct MovieResultsUI: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    @State private var results = [Result]()
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            Text("Search for a Movie or TV show")
                .foregroundColor(.secondary)
            HStack {
                SearchBar(text: $searchText)
                Button(action: {
                    loadData()
                }) {
                    ZStack {
                        Rectangle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color(UIColor.systemGray6))
                            .cornerRadius(10)
                        Image(systemName: "magnifyingglass")
                            .font(.body)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.trailing)
            }
            .padding(.vertical)

            
            List(results, id: \.overview) { item in
                ZStack {
                    NavigationLink(destination: MovieDetailsUI(item: item)) {
                       EmptyView()
                    }
                    .buttonStyle(PlainButtonStyle())
                    .opacity(0)
                    ExtractedView(item: item)
                }
            }
            .onAppear(perform: loadData)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }, label: {
                                    Image(systemName: "chevron.left.circle.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(Color(UIColor.systemGray3))
                                })
        )
    }
    
    
    // MARK: - loadData()
    
    func loadData() {
        let formattedString = searchText.replacingOccurrences(of: " ", with: "+");
        let searchURL = "https://api.themoviedb.org/3/search/multi?api_key=51bce37ace8570b6df21ef10a2c14269&language=en-US&query=" + formattedString
        guard let url = URL(string: searchURL) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    print("data!!")
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.results = decodedResponse.results
                        print(self.results)
                    }
                    // everything is good, so we can exit
                    return
                }
            }
            // if we’re still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}

// MARK: - Response Struct

struct Response: Codable {
    var results: [Result]
}

// MARK: - Results Struct

struct Result: Codable {
    var overview: String
    var original_language: String
    var media_type: String
    var original_title: String?
    var poster_path: String?
    var release_date: String?
    var backdrop_path: String?
    var vote_average: Double?
    var vote_count: Int?
}

// MARK: - MovieCardView

struct ExtractedView: View {
    var item: Result
    var posterURL = "https://image.tmdb.org/t/p/original//"
    
    var body: some View {
        HStack(alignment: .center) {
            
            if item.poster_path != nil {
                let urlString = posterURL + item.poster_path!
                RemoteImage(url: urlString)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
            } else {
                Image(systemName: "photo")
                    .font(.system(size: 100))
                    .frame(width: 100, height: 150)
                    .padding(30)
            }
            VStack {
                HStack {
                    VStack {
                        
                        if item.original_title != nil {
                            Text(item.original_title!)
                                .font(.headline)
                                .fontWeight(.bold)
                        }
                    }
                }
                .padding(.vertical)
                
                Text(item.overview)
                    .lineLimit(3)
            }
            .padding(5)
            .frame(maxWidth: .infinity)
        }
        .frame(width: .infinity)
        .cornerRadius(5)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.black, lineWidth: 1)
                .shadow(radius: 20)
        )
    }
}

// MARK: UI-Preview
struct MovieResultsUI_Previews: PreviewProvider {
    static var previews: some View {
        MovieResultsUI()
    }
}
