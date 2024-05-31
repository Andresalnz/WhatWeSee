//
//  DetailMovieMapper.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 14/5/24.
//

import Foundation

extension DetailMovieDTO {
    
    func toBo() -> DetailMovieBO {
        return DetailMovieBO(id: id,
                             adult: adult,
                             backdropPath: URL(string: Constants.buildImage + (backdropPath ?? "")),
                             belongsToCollection: belongsToCollection?.toBo(),
                             budget: budget,
                             genres: genres?.compactMap{ $0.toBo() },
                             homepage: URL(string: homepage ?? ""),
                             imdbId: imdbId,
                             originCountry: originCountry,
                             originalLanguage: originalLanguage,
                             originalTitle: originalTitle,
                             overview: overview,
                             popularity: popularity,
                             posterPath: URL(string: Constants.buildImage + (posterPath ?? "")),
                             productionCompanies: productionCompanies?.compactMap{ $0.toBo() },
                             productionCountries: productionCountries?.compactMap{ $0.toBo() },
                             releaseDate: releaseDate,
                             revenue: revenue,
                             runtime: runtime,
                             spokenLanguages: spokenLanguages?.compactMap{ $0.toBo() },
                             status: status,
                             tagline: tagline,
                             title: title,
                             video: video,
                             voteAverage: voteAverage,
                             voteCount: voteCount,
                             item: DetailMovieVO())
    }
}

extension BelongsToCollectionDTO {
    func toBo() -> BelongsToCollectionBO {
        return BelongsToCollectionBO(id: id,
                                     name: name,
                                     posterPath: URL(string: Constants.buildImage + (posterPath ?? "")),
                                     backdropPath: URL(string: backdropPath ?? ""))
    }
}

extension ProductionCompaniesDTO {
    func toBo() -> ProductionCompaniesBO {
        return ProductionCompaniesBO(id: id,
                                     logoPath: URL(string: logoPath ?? ""),
                                     name: name,
                                     originCountry: originCountry)
    }
}

extension ProductionCountriesDTO {
    func toBo() -> ProductionCountriesBO {
        return ProductionCountriesBO(id: id,
                                     acoronym: acoronym,
                                     name: name)
    }
}

extension SpokenLanguagesDTO {
    func toBo() -> SpokenLanguagesBO {
        return SpokenLanguagesBO(id: id,
                                 englishName: englishName,
                                 acoronym: acoronym,
                                 name: name)
    }
}

