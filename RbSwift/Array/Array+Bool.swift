//
//  Array+Bool.swift
//  RbSwift
//
//  Created by draveness on 22/03/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

public extension Array where Element: Equatable {
    /// Returns true if self and other are the same object, or are both arrays with the same content
    ///
    /// - Parameter other: Another array
    /// - Returns: A bool value indicates the equatable between two arrays
    func isEql(_ other: [Element]) -> Bool {
        
        guard self.length == other.length else { return false }
        var lhs = self
        var rhs = other
        
        for l in lhs {
            if rhs.contains(l) {
                _ = rhs.delete(l, all: false)
                _ = lhs.delete(l, all: false)
            } else {
                return false
            }
        }
        return true
    }
}
