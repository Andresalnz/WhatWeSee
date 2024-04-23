//
//  Repository.swift
//  WhatWeSee
//
//  Created by Andres Aleu on 19/4/24.
//

import Foundation

enum ErrorApp: Error {
    case invalidURL(String)
    case invalidRequest(Error)
}

struct Repository {
    func getJSON<T>(url: URL?, type: T.Type) async throws -> T where T: Codable {
        guard let url = url else { throw ErrorApp.invalidURL("URL invalida") }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let model = try JSONDecoder().decode(type, from: data)
            return model
        } catch let error {
         throw ErrorApp.invalidRequest(error)
        }
    }
}
