//
//  DateFormatterConfigure.swift
//  Tracker
//
//  Created by Andrey Gordienko on 06.05.2024.
//

import Foundation

final class DateFormatterConfigure {
    static let standard = DateFormatterConfigure()
    private init() { }
    
    let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.dateFormat = "dd.MM.yy"
        return formatter
    }()
}
