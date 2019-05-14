//
//  UIColor + hex.swift
//  TCExtensions
//
//  Created by tancheng on 2019/5/14.
//  Copyright © 2019 tancheng. All rights reserved.
//

import Foundation
import UIKit.UIColor

public extension UIColor {
    
    /// hex: #f8f8f8
    convenience init(hex string: String) {
        var hex = string.hasPrefix("#") ? String(string.dropFirst()) : string
        guard hex.count == 3 || hex.count == 6 else {
            self.init(white: 1.0, alpha: 0.0)
            return
        }
        if hex.count == 3 {
            for (index, char) in hex.enumerated() {
                hex.insert(char, at: hex.index(hex.startIndex, offsetBy: index * 2))
            }
        }
        
        self.init(red: CGFloat((Int(hex, radix: 16)! >> 16) & 0xFF) / 255.0,
                  green: CGFloat((Int(hex, radix: 16)! >> 8) & 0xFF) / 255.0,
                  blue: CGFloat((Int(hex, radix: 16)!) & 0xFF) / 255.0, alpha: 1.0)
    }
    
    func alpha(_ value: CGFloat) -> UIColor {
        return withAlphaComponent(value)
    }
    
}

