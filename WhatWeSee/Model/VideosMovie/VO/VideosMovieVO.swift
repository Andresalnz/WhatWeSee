//
//  VideosMovieVO.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 7/6/24.
//

import Foundation

struct VideosMovieVO: Codable, Identifiable, Hashable {
    var id: String?
    var name: String?
    var site: String?
    var type: String?
    var official: Bool?
}

