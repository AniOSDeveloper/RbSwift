//
//  Date+Relative.swift
//  RbSwift
//
//  Created by draveness on 19/03/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public extension Duration {
    var since: Date {
        return Calendar.current.date(byAdding: self.to_dateComponents, to: Date.now)!
    }
    
    var ago: Date {
        return Calendar.current.date(byAdding: self.to_dateComponents(before: true), to: Date.now)!
    }
}
