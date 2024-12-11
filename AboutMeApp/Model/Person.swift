//
//  Person.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 09.12.2024.
//

struct Person {
    let name: String
    let surname: String
    let age: Int
    let imageName: String
    let jobTitle: JobTitle
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Андрей",
            surname: "Сорокин",
            age: 24,
            imageName: "myImageView",
            jobTitle: .engineer,
            bio: "Андрей, 24 года. Родился в Ростове-на-Дону, учился и живу в Санкт-Петербурге. Работаю я инженер радиосвязи, но всегда тянуло к созданию чего-то нового. Сейчас активно изучаю разработку мобильных приложений под iOS, чтобы в будущем связать свою карьеру с этой сферой"
        )
    }
}


