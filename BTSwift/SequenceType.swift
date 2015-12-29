//
//  SequenceType.swift
//  BTSwift
//
//  Created by Eric Patey on 12/28/15.
//  Copyright © 2015 Eric Patey. All rights reserved.
//

import Foundation

public extension SequenceType {
    public func aggregate<T>(initial: T, combine: (accumulator:T, element:Generator.Element) -> T) -> [T] {
        var accumulator = initial
        return map {
            accumulator = combine(accumulator: accumulator, element: $0)
            return accumulator
        }
    }
}

