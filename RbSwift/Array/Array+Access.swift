//
//  Array+Access.swift
//  RbSwift
//
//  Created by draveness on 24/03/2017.
//  Copyright © 2017 draveness. All rights reserved.
//

import Foundation

// MARK: - Access
public extension Array {
    /// Returns the nth element in the array or nil.
    ///
    /// - Parameter num: The element index
    /// - Returns: An element at specific index or nil
    func at(_ num: Int) -> Element? {
        guard num < self.length else { return nil }
        return self[num]
    }
}
