//
//  FakeCoreDataManager.swift
//  Kantan-Manga
//
//  Created by Juan on 7/11/20.
//

import Foundation
@testable import Kantan_Manga

class FakeCoreDataManager: CoreDataManageable {
    var createMangaWithCalls = [[String: Any]]()

    // Not implemented methods
    func saveContext() {}
    func deleteAllData() {}
    func refreshAll() {}
    func delete(manga: Manga) {}
    func deleteAllMangas() {}
    func updateManga(manga: Manga) {}
    func delete(collection: MangaCollection) {}
    func deleteAllCollections() {}
    func updateCollection(_ collection: MangaCollection) {}
    func createDemoManga(completion: @escaping () -> Void) {}
    func delete(ankiCard: AnkiCard) {}
    func deleteAllAnkiCards() {}
    func update(ankiCard: AnkiCard) {}
}

// Empty methods
extension FakeCoreDataManager {
    func insertManga(name: String, coverData: Data, totalPages: Int16, filePath: String, collection: MangaCollection?) -> Manga? { nil }
    func fetchAllMangas() -> [Manga]? { [] }
    func getMangaWith(filePath path: String) -> Manga? { nil }
    func getMangasWithoutCollection() -> [Manga]? { [] }
    func insertCollection(name: String) -> MangaCollection? { nil }
    func fetchAllCollections() -> [MangaCollection]? { [] }
    func searchCollectionsWith(name: String) -> [MangaCollection]? { [] }
    func searchCollectionsStartWith(name: String) -> [MangaCollection]? { [] }
    func insertAnkiCard(sentence: String, definition: String, image: UIImage?) -> AnkiCard? { nil }
    func fetchAllAnkiCards() -> [AnkiCard]? { [] }
}

// Mock methods
extension FakeCoreDataManager {
    func createMangaWith(filePath path: String, name: String?, collection: MangaCollection?, completion: @escaping (Manga?) -> Void) {
        createMangaWithCalls.append(["path": path, "name": name as Any])
    }
}
