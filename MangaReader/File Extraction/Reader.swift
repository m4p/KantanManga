//
//  Reader.swift
//  MangaReader
//
//  Created by Juan on 26/05/20.
//  Copyright © 2020 Bakura. All rights reserved.
//

import Foundation

protocol Reader {
    typealias CallBack = (Data?) -> Void
    init(fileName: String) throws
    func readEntityAt(index: Int, _ callBack: CallBack?)

    var numberOfPages: Int {get}
}

extension Reader {
    func readFirstEntry(_ callBack: @escaping CallBack) {
        readEntityAt(index: 0, callBack)
    }
}
