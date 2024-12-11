//
//  JobTitle.swift
//  AboutMeApp
//
//  Created by Андрей Сорокин on 09.12.2024.
//

enum JobTitle: String {
    case developer
    case designer
    case manager
    case architect
    case engineer
    
    var titleJob: String {
        switch self {
        case .developer:
            "Разработчик"
        case .designer:
            "Дезайнер"
        case .manager:
            "Менеджер"
        case .architect:
            "Архитектор"
        case .engineer:
            "Инженер"
        }
    }
}
