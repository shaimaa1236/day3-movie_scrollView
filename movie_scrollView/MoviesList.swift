//
//  MoviesList.swift
//  movie_scrollView
//
//  Created by Shaimaa on 5/7/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import Foundation

struct MoviesList : Hashable, Identifiable {
    var movieName : String
    var movieImage : String
    var movieCharecter : [String]
    var id = UUID()
}

var movies = [MoviesList(movieName: "Shrek", movieImage: "shrekP", movieCharecter: ["shrek","fiona","donkey","puss"]),
              MoviesList(movieName: "Aquaman", movieImage: "aquamanP", movieCharecter: ["aquaman","atlanna","mera","orm"]),
              MoviesList(movieName: "Black Panther", movieImage: "blackPanther", movieCharecter: ["tchalla","nakia","njadaka","okoye","shuri"]),
              MoviesList(movieName: "Jurassic World", movieImage: "jurassic", movieCharecter: ["claire","gray","owen","zack"])]
