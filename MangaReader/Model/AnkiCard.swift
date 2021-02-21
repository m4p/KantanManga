//
//  AnkiCard.swift
//  Kantan-Manga
//
//  Created by Juan on 20/02/21.
//

import CoreData

@objc(AnkiCard)
public class AnkiCard: NSManagedObject {
    var image: UIImage?

    convenience init(context: NSManagedObjectContext, sentence: String, definition: String, image: UIImage?) {
        self.init(context: context)
        self.sentence = sentence
        self.definition = definition
        self.imageData = image?.jpegData(compressionQuality: 1)
    }

    override public func awakeFromFetch() {
        super.awakeFromFetch()

        // Preload image data
        loadImage()
    }

    public func loadImage() {
        if let data = imageData, let image = UIImage(data: data) {
            self.image = image
        }
    }
}
