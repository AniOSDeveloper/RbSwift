//
//  DatePatch.swift
//  RbSwift
//
//  Created by draveness on 18/03/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

fileprivate let calendar = Calendar.current
fileprivate let allComponents: [Calendar.Component] = [.era, .year, .month, .day, .hour, .minute, .second, .nanosecond, .weekday, .weekdayOrdinal, .quarter, .timeZone, .weekOfMonth, .weekOfYear, .yearForWeekOfYear, .calendar]

public var GlobalTimeZone: TimeZone = TimeZone.current

public extension Date {
    var currentTimeZone: TimeZone {
        return GlobalTimeZone
    }
    
    private var _components: DateComponents {
        return calendar.dateComponents(in: currentTimeZone, from: self)
    }

    var era: Int! {
        return _components.era
    }
    
    var year: Int! {
        return _components.year
    }
    
    var month: Int! {
        return _components.month
    }
    
    var day: Int! {
        return _components.day
    }
    
    var hour: Int! {
        return _components.hour
    }
    
    var minute: Int! {
        return _components.minute
    }
    
    var second: Int! {
        return _components.second
    }
    
    var nanosecond: Int! {
        return _components.nanosecond
    }
    
    var weekday: Int! {
        return _components.weekday
    }
    
    var weekdayOrdinal: Int! {
        return _components.weekdayOrdinal
    }
    
    var quarter: Int! {
        return _components.quarter
    }
    
    var timeZone: TimeZone! {
        let components = calendar.dateComponents(Set(allComponents), from: self)
        return components.timeZone
    }
    
    var weekOfMonth: Int! {
        return _components.weekOfMonth
    }
    
    var weekOfYear: Int! {
        return _components.weekOfYear
    }
    
    var yearForWeekOfYear: Int! {
        return _components.yearForWeekOfYear
    }
    
    var utc: Date {
        let dateFormatter = DateFormatterFactory.Custom()
        dateFormatter.timeZone = TimeZone.utc
        return dateFormatter.date(from: "\(self)")!
    }
}
