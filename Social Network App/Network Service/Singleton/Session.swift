//
//  Singleton.swift
//  Social Network App
//
//

import UIKit

class Session {
    static let instance = Session()

    private init() {}

    var token: String?
    var userId: Int?
}
