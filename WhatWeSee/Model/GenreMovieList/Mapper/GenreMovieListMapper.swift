//
//  GenreMovieListMapper.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 19/4/24.
//

import Foundation

extension GenreMovieDTO {
    func toBo() -> GenreMovieBO {
        return GenreMovieBO(id: id,
                            name: name)
    }
}
