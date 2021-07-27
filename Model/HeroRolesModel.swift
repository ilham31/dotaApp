//
//  HeroRolesModel.swift
//  dota
//
//  Created by Muhammad Ilham Ramadhan on 24/07/21.
//

import Foundation
import Realm
import RealmSwift

class HeroRolesModel: Object {
    let roles = List<String>()
}
