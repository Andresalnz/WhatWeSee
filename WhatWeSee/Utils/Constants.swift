//
//  Constants.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 22/4/24.
//

import Foundation

struct Constants {
    //MARK: - Texts
    static let noText: String = "N/A"
    static let titleMorePopularHome: String = "The most Popular of "

    static let myListButton: String = "+ Mi lista"
    
    //MARK: - Provider
    static let buildImage: String = "https://image.tmdb.org/t/p/w500/"
    static let genreMovieList: String =  "/genre/movie/list"
    static let moviePopular: String = "/movie/popular"
    static let uri: String = "https://api.themoviedb.org/3"
    static let apiKey: String = "?api_key=\(String(describing: key))"
    static let key: String = Util.getApiKey()
    
    
}
