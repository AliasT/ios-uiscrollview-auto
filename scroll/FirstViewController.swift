//
//  FirstViewController.swift
//  scroll
//
//  Created by aliast on 2017/8/29.
//  Copyright © 2017年 xiaobing. All rights reserved.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    arrange()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBOutlet weak var pView: UIScrollView!
  
  @IBOutlet weak var bottomBarItem: UITabBarItem!
  
  func arrange() {
    pView.snp.makeConstraints { (make) -> Void in
      
    }
    let box = UIView()
    
    box.backgroundColor = UIColor.red
    pView.addSubview(box)
    box.snp.makeConstraints { (make) -> Void in
      make.top.equalTo(pView).offset(0)
      make.left.equalTo(pView).offset(0)
      make.right.equalTo(pView).offset(0)
      make.bottom.equalTo(pView).offset(0)
      make.height.equalTo(view).priority(300)
      make.width.equalTo(view)
    }
    
    let sub = UIView()
    sub.backgroundColor = UIColor.green
    box.addSubview(sub)
    sub.snp.makeConstraints { make -> Void in
      make.top.equalTo(box).offset(10)
      make.left.equalTo(box).offset(10)
      make.right.equalTo(box).offset(-10)
      make.bottom.equalTo(box).offset(-10)
      make.height.equalTo(1200)
    }
  }

}

