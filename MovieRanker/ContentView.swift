//
//  ContentView.swift
//  MovieRanker
//
//  Created by Mark Powell on 9/22/19.
//  Copyright © 2019 Lavacado. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text(movie.year).font(.caption)
                Text(movie.plot).lineLimit(5)
                Text("Rated: \(movie.rated)").fontWeight(.bold)
                HStack(alignment: .top) {
                    Text("Ratings:")
                    VStack(alignment: .leading) {
                        Text("\(movie.ratings[0].source) - \(movie.ratings[0].value)")
                        Text("\(movie.ratings[1].source) - \(movie.ratings[1].value)")
                    }
                }
                Text("Box Office: \(movie.boxOffice)")
                Text("Cast & Crew")
                Text("Director: \(movie.director)")
                Text("Writer(s): \(movie.writer)")
                Text("Cast: \(movie.actors)").lineLimit(10)
                
            }
            .padding(1.0)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let ratings = [Rating(source: "Internet Movie Database", value: "7.3/10"), Rating(source: "Metacritic", value: "54/100")]
        let movie = Movie(title: "Friday", year: "1995", rated: "R", released: "26 Apr 1995", runtime: "91 min", genre: "Comedy, Drama", director: "F. Gary Gray", writer: "Ice Cube, DJ Pooh", actors: "Ice Cube, Chris Tucker, Nia Long, Tommy 'Tiny' Lister", plot: "Two homies, Smokey and Craig, smoke a dope dealer's weed and try to figure a way to get the $200 they owe to the dealer by 10 p.m. that same night.", language: "English", country: "USA", awards: "1 win & 5 nominations", poster: "https://m.media-amazon.com/images/M/MV5BYmEwNjNlZTUtNzkwMS00ZTlhLTkyY2MtMjM2MzlmODQyZGVhXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_SX300.jpg", ratings: ratings, metascore: "54", imdbRating: "7.3", imdbVotes: "92,030", imdbID: "tt0113118", type: "movie", dvd: "10 Sep 2002", boxOffice: "N/A", production: "Zebra", website: "N/A", response: "True")
        return ContentView(movie: movie)
    }
}
#endif
