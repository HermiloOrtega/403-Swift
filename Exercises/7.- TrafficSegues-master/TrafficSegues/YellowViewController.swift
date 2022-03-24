//
//  YellowViewController.swift
//  TrafficSegues
//
//  Created by Derrick Park on 4/28/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
  
  @IBOutlet var hobbyLabel: UILabel!
  var hobby: String! // implicitly unwrapped optional
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print(#function)
    hobbyLabel.text = hobby
  }
  
}
