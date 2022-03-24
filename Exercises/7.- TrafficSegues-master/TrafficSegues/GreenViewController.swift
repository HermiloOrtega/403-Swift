//
//  GreenViewController.swift
//  TrafficSegues
//
//  Created by Derrick Park on 4/29/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func popToRed(_ sender: UIBarButtonItem) {
    // 1. navigation controller (stack of VCs)
    navigationController?.popToRootViewController(animated: true)
  }

}
