//
//  SecondMovie.swift
//  movie_scrollView
//
//  Created by Shaimaa on 5/7/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct SecondMovie: View {
    var movieSecond : MoviesList
    var body: some View {
        ZStack{
            Group{
                Color.black.opacity(0.3)
                    .background(
                        Image(movieSecond.movieImage)
                            .resizable()
                            .scaledToFill()
                            .blur(radius: 40)
                )
            }.edgesIgnoringSafeArea(.all)
            VStack{
                Image(movieSecond.movieImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                Text(movieSecond.movieName)
                    .font(.custom("American Typewriter Condensed", size: 50))
                    .foregroundColor(.white)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(movieSecond.movieCharecter, id: \.self){ (character:String) in
                            VStack{
                                Text(character)
                                    .font(.custom("American Typewriter Condensed", size: 30))
                                    .foregroundColor(.white)
                                Image(character)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150, alignment: .center)
                            }
                        }
                    }
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}


struct SecondMovie_Previews: PreviewProvider {
    static var previews: some View {
        SecondMovie(movieSecond: movies[0])
    }
}
