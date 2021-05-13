//
//  ContentView.swift
//  FinalProject
//
//  Created by Jorrin Thacker on 5/5/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color.black
                .opacity(0.8)
                    .ignoresSafeArea()
                VStack {
                    VStack {
                        Text("K-IMDb")
                            .font(.system(size: 50))
                            .foregroundColor(.yellow)
                        
                        Divider().background(Color.yellow)
                            .padding()
                        Text("\"Knockoff\" Internet Movie Database")
                            .font(.title2)
                            .foregroundColor(.yellow)
                    }
                    .padding(.vertical, 50)
                    
                    NavigationLink(destination: MovieResultsUI()){
                        HStack {
                            Text("Search for a movie")
                            Image(systemName: "film")
                        }
                    }
                    .buttonStyle(bStyle(color1: Color.yellow, color2: Color.yellow, fontColor: Color.black))
                    .padding(.bottom)
                    NavigationLink(destination: About()){
                        HStack {
                            Text("About")
                            Image(systemName: "info.circle")
                        }
                    }
                    .buttonStyle(bStyle(color1: Color.yellow, color2: Color.yellow, fontColor: Color.black))
                }
                .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct bStyle: ButtonStyle {
    var color1 = Color.blue
    var color2 = Color.blue
    var fontColor = Color.black
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .font(.title)
            .foregroundColor(fontColor)
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [color1, color2, color1]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 15)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
