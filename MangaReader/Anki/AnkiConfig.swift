//
//  AnkiConfig.swift
//  Kantan-Manga
//
//  Created by Juan on 21/05/21.
//

import Foundation

struct AnkiConfig: Codable {
    let address: String
    let key: String?
    let deck: String
    let note: String
    let wordField: String?
    let readingField: String?
    let sentenceField: String?
    let definitionField: String?
    let imageField: String?
}
