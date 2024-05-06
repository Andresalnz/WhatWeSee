//
//  Util.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 22/4/24.
//

import Foundation

final class Util {
    //MARK: - Obtener apikey de info.plist
    static func getApiKey() -> String {
        let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String
        guard let key = apiKey else {
            return "No existe"
        }
        return key
    }
    
    enum Services {
        case genreList
        case popularMovies
        
        func url() -> URL? {
            switch self {
                case .genreList:
                    return URL(string: Constants.uri + Constants.genreMovieList + Constants.apiKey)
                case .popularMovies:
                    return URL(string: Constants.uri + Constants.moviePopular + Constants.apiKey)
            }
        }
    }
}



