//
//  ViewController.swift
//  MyTube
//
//  Created by Kris Penney on 2016-08-24.
//  Copyright © 2016 Kris Penney. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    navigationItem.title = "Home"
    navigationController?.navigationBar.translucent = false
    
    let titleLabel = UILabel(frame: CGRectMake(0, 0, view.frame.width-32, view.frame.height))
    titleLabel.text = "Home"
    titleLabel.textColor = .whiteColor()
    titleLabel.font = UIFont.systemFontOfSize(20)
    navigationItem.titleView = titleLabel
    
    collectionView?.backgroundColor = .whiteColor()
    
    collectionView?.registerClass(VideoCell.self, forCellWithReuseIdentifier: "videocellId")
    
  }
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }

  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("videocellId", forIndexPath: indexPath)
    
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
    return 0
  }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
  
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    let height = (view.frame.width - 32) * (9/16) // 16:9 Aspect Ratio
    return CGSizeMake(view.frame.width, height+84) // account for other elements
  }
}

