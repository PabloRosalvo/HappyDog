//
//  User.swift
//  HappyDog
//
//  Created by Pablo Rosalvo de Melo Lopes on 26/06/20.
//  Copyright © 2020 Pablo Rosalvo de Melo Lopes. All rights reserved.
//

import Foundation

struct User: Codable {
    let user: UserDetais?
}

// MARK: - User
struct UserDetais: Codable {
    let id, email, token, createdAt: String?
    let updatedAt: String?
    let v: Int?
}
