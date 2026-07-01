//
//  Extensions+UserDefaults.swift
//  New Hires
//
//  Created by NextDay Sotware Solution on 16/05/24.
//

import Foundation

extension UserDefaults {
    class func incrementIntegerForKey(key:String) {
        let defaults = standard
        let int = defaults.integer(forKey: key)
        defaults.set(int+1, forKey:key)
    }
}
