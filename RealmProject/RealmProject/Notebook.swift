//
//  Notebook.swift
//  RealmProject
//
//  Created by Terry Dengis on 11/14/18.
//  Copyright © 2018 Terry Dengis. All rights reserved.
//

import Foundation
import RealmSwift

class Notebook: Object {
    @objc dynamic var title = ""
    @objc dynamic var creationDate = Date ()
    let notes = List <Note> ()
}
