//
//  NSUUID.swift
//  BTSwift
//
//  Created by Eric Patey on 12/29/15.
//  Copyright © 2015 Eric Patey. All rights reserved.
//

import Foundation

extension NSUUID {
    var data: NSData {
        var uuid = [UInt8](count: 16, repeatedValue: 0)
        self.getUUIDBytes(&uuid)
        return NSData(bytes: &uuid, length: 16)
    }
}
