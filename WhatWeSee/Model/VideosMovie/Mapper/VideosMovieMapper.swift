//
//  VideosMovieMapper.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 7/6/24.
//

import Foundation

extension ResultVideosMovieDTO {
    func toBo() -> ResultVideosMovieBO {
        return ResultVideosMovieBO(language: language,
                                   country: country,
                                   name: name,
                                   key: key,
                                   site: site,
                                   size: size,
                                   type: type,
                                   official: official,
                                   publishedAt: .now,
                                   id: id,
                                   itemVO: VideosMovieVO())
    }
}
