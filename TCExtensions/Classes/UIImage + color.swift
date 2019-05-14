//
//  UIImage + color.swift
//  TCExtensions
//
//  Created by tancheng on 2019/5/14.
//  Copyright © 2019 tancheng. All rights reserved.
//

import Foundation
import UIKit.UIColor
import UIKit.UIImage

public extension UIImage {
    
    func create(with color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            return UIImage()
        }
        context.setFillColor(color.cgColor)
        context.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img ?? UIImage()
    }
    
}
