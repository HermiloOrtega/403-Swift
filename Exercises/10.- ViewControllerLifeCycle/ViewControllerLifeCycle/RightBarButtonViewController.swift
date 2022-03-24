//
//  RightBarButtonViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Derrick Park on 5/4/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class RightBarButtonViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Pop", style: .done, target: self, action: #selector(popToRootViewController))
  }
  
  @objc func popToRootViewController(_ sender: UIBarButtonItem) {
    navigationController?.popToRootViewController(animated: true)
  }
}
