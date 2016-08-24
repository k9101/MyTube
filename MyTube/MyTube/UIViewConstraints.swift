//
//  UIViewConstraints.swift
//  MyTube
//
//  Created by Kris Penney on 2016-08-24.
//  Copyright © 2016 Kris Penney. All rights reserved.
//

import UIKit

extension UIView {
  func addConstraintsWithFormat(format: String, views: UIView...){
    
    var viewsDictionary = [String: UIView]()
    
    for (index, view) in views.enumerate() {
      let key = "v\(index)"
      view.translatesAutoresizingMaskIntoConstraints = false
      viewsDictionary[key] = view
    }
    
    addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(format, options: NSLayoutFormatOptions(), metrics: nil, views:
      viewsDictionary))
  }
}
