# MovieRanker
Playing with SwiftUI, Combine, Firebase and OMDb API

Objective is to create something using SwiftUI and Combine driving that UI by pulling data from the OMDb API (movie information). 
A user can then thumbs up/down a movie and their rating is stored in a Firebase backend. Simple but hits a lot of systems I 
want to play with.

OMDb API:

www.omdbapi.com/?apikey=[yourkey]&

EG:
http://www.omdbapi.com/?t=Friday

Response:
{"Title":"Friday","Year":"1995","Rated":"R","Released":"26 Apr 1995","Runtime":"91 min","Genre":"Comedy, Drama","Director":"F. Gary Gray","Writer":"Ice Cube, DJ Pooh","Actors":"Ice Cube, Chris Tucker, Nia Long, Tommy 'Tiny' Lister","Plot":"Two homies, Smokey and Craig, smoke a dope dealer's weed and try to figure a way to get the $200 they owe to the dealer by 10 p.m. that same night.","Language":"English","Country":"USA","Awards":"1 win & 5 nominations.","Poster":"https://m.media-amazon.com/images/M/MV5BYmEwNjNlZTUtNzkwMS00ZTlhLTkyY2MtMjM2MzlmODQyZGVhXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_SX300.jpg","Ratings":[{"Source":"Internet Movie Database","Value":"7.3/10"},{"Source":"Metacritic","Value":"54/100"}],"Metascore":"54","imdbRating":"7.3","imdbVotes":"92,030","imdbID":"tt0113118","Type":"movie","DVD":"10 Sep 2002","BoxOffice":"N/A","Production":"Zebra","Website":"N/A","Response":"True"}

9/22

Going to play with Codable for the first time today in order to parse the results of the Movie data. I handle hundreds of different URL calls at work, but never had a chance to really make use of Codable. Instead, creating wrappers around a Dictionary. Let's have Swift do the work for us!

Also, not a huge fan of omdb capitalizing the properties in the response data, so making use of CodingKeys to translate to a cleaner naming scheme.

Found a great resourse: https://app.quicktype.io that helps you create the struct and helper function by just pasting example JSON into the service.
