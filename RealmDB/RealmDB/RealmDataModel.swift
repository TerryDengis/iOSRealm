//
//  RealmDataModel.swift
//  RealmDB
//
//  Created by Brian Advent on 13.10.17.
//  Copyright © 2017 Brian Advent. All rights reserved.
//

import Foundation
import RealmSwift

class Note:Object {
    @objc dynamic var content = ""
    @objc dynamic var creationDate = Date()
}

class Notebook:Object {
    @objc dynamic var title = ""
    @objc dynamic var creationDate = Date()
    let notes = List<Note>()
}




