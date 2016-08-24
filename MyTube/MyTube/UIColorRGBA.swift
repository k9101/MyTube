//
//  UIColorRGBA.swift
//  MyTube
//
//  Created by Kris Penney on 2016-08-24.
//  Copyright © 2016 Kris Penney. All rights reserved.
//

import UIKit

extension UIColor {
  static func rbga(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
  }
}
