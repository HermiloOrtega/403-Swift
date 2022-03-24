//
//  YellowViewController.swift
//  TabBarNavBarInCode
//
//  Created by Derrick Park on 5/1/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
  var titleText: String!

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .yellow
    navigationItem.title = titleText
  }
  
  
}
