//
//  ContentView.swift
//  movie_scrollView
//
//  Created by Shaimaa on 5/7/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct FirstMovie: View {
    var body: some View {
        NavigationView{
            List(movies){ movie in
                NavigationLink(destination: SecondMovie(movieSecond: movie)){
                    listTheMovie(movie: movie)
                    
                }
                
            }.navigationBarTitle("Movies", displayMode: .inline)
        }.accentColor(.black)
    }
}


struct listTheMovie: View {
    var movie : MoviesList
    var body: some View {
        HStack{
            Image(movie.movieImage)
                .resizable()
                .scaledToFill()
                .frame(width: 100, alignment: .center)
                .clipShape(Circle())
            Text(movie.movieName)
                .font(.custom("American Typewriter Condensed", size: 40))
                .foregroundColor(.black)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstMovie()
    }
}
