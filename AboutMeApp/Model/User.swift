//
//  User.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 09.12.2024.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "admin",
            password: "admin102",
            person: Person.getPerson()
        )
    }
}
