//
//  VideoCell.swift
//  MyTube
//
//  Created by Kris Penney on 2016-08-24.
//  Copyright © 2016 Kris Penney. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {
  
  let thumbnailImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "taylor_swift_blank_space")
    imageView.contentMode = .ScaleAspectFill
    imageView.clipsToBounds = true
    return imageView
  }()
  
  let separatorView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
    return view
  }()
  
  let userProfileImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = UIImage(named: "taylor_swift_profile")
    imageView.layer.cornerRadius = 22
    imageView.layer.masksToBounds = true
    return imageView
  }()
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Taylor Swift - Blank Space"
    return label
  }()
  
  let subtitleTextView: UITextView = {
    let tv = UITextView()
    tv.translatesAutoresizingMaskIntoConstraints = false
    tv.text = "TaylorSwiftVevo • 1,604,684,607 views • 2 years ago"
    tv.textContainerInset = UIEdgeInsetsMake(0, -4, 0, 0)
    tv.textColor = .lightGrayColor()
    return tv
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupViews(){
    
    addSubview(thumbnailImageView)
    addSubview(separatorView)
    addSubview(userProfileImageView)
    addSubview(titleLabel)
    addSubview(subtitleTextView)
    
    //Horizontal Constraints
    addConstraintsWithFormat("H:|-16-[v0]-16-|", views: thumbnailImageView)
    addConstraintsWithFormat("H:|-16-[v0(44)]", views: userProfileImageView)
    addConstraintsWithFormat("H:|[v0]|", views: separatorView)
    
    //Vertical Constraints
    addConstraintsWithFormat("V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView, userProfileImageView, separatorView)
    
    
    //Top Constraints
    addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .Top, relatedBy: .Equal, toItem: thumbnailImageView, attribute: .Bottom, multiplier: 1, constant: 8))
    addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .Top, relatedBy: .Equal, toItem: titleLabel, attribute: .Bottom, multiplier: 1, constant: 4))
    
    //Left Constraints
    addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .Left, relatedBy: .Equal, toItem: userProfileImageView, attribute: .Right, multiplier: 1, constant: 8))
    addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .Left, relatedBy: .Equal, toItem: userProfileImageView, attribute: .Right, multiplier: 1, constant: 8))
    
    //Right Constraints
    addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .Right, relatedBy: .Equal, toItem: thumbnailImageView, attribute: .Right, multiplier: 1, constant: 0))
    addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .Right, relatedBy: .Equal, toItem: thumbnailImageView, attribute: .Right, multiplier: 1, constant: 0))
    
    //Height Constraints
    addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .Height, relatedBy: .Equal, toItem: self, attribute: .Height, multiplier: 0, constant: 20))
    addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .Height, relatedBy: .Equal, toItem: self, attribute: .Height, multiplier: 0, constant: 30))
    
    
  }
}

