//
//  Game.swift
//  FreeGames
//
//  Created by Turno Mananas on 23/11/2026.
//

struct Game: Decodable {
    let id: Int
    let title: String
    let thumbnail: String
    let genre: String
    let platform: String
    let shortDescription: String
    let profileUrl: String

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case thumbnail
        case genre
        case platform
        case shortDescription = "short_description"
        case profileUrl = "freetogame_profile_url"
    }
}
