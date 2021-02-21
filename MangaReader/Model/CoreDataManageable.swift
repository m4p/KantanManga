//
//  CoreDataManageable.swift
//  Kantan-MangaTests
//
//  Created by Juan on 7/11/20.
//

import Foundation
import CoreData

protocol CoreDataManageable {
    // Data managing methos
    func saveContext ()
    func deleteAllData()
    func refreshAll()

    // Manga methods
    @discardableResult
    func insertManga(name: String, coverData: Data, totalPages: Int16, filePath: String, collection: MangaCollection?) -> Manga?
    func createMangaWith(filePath path: String, name: String?, collection: MangaCollection?, completion: @escaping (Manga?) -> Void)
    func delete(manga: Manga)
    func deleteAllMangas()
    func fetchAllMangas() -> [Manga]?
    func getMangaWith(filePath path: String) -> Manga?
    func getMangasWithoutCollection() -> [Manga]?
    func updateManga(manga: Manga)
    func createDemoManga(completion: @escaping () -> Void)

    // Collection methods
    @discardableResult
    func insertCollection(name: String) -> MangaCollection?
    func delete(collection: MangaCollection)
    func deleteAllCollections()
    func fetchAllCollections() -> [MangaCollection]?
    func searchCollectionsWith(name: String) -> [MangaCollection]?
    func searchCollectionsStartWith(name: String) -> [MangaCollection]?
    func updateCollection(_ collection: MangaCollection)

    // AnkiCard methods
    func insertAnkiCard(sentence: String, definition: String, image: UIImage?) -> AnkiCard?
    func delete(ankiCard: AnkiCard)
    func deleteAllAnkiCards()
    func fetchAllAnkiCards() -> [AnkiCard]?
    func update(ankiCard: AnkiCard)
}
