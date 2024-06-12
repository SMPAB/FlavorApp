//
//  User.swift
//  Flavor
//
//  Created by Emilio Martinez on 2024-06-11.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    let email: String
    var userName: String
}


