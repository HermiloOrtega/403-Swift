//
//  BlueViewController.swift
//  TabBarNavBarInCode
//
//  Created by Derrick Park on 5/1/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
  
  let centerButton: UIButton = {
    let btn = UIButton(type: .system)
    btn.setTitle("Go To Yellow", for: .normal)
    btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    btn.backgroundColor = .lightGray
    btn.layer.cornerRadius = 16
    btn.tag = 100
    btn.translatesAutoresizingMaskIntoConstraints = false
    return btn
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationItem.title = "Blue"
    
    view.addSubview(centerButton)
    centerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    centerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    centerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
    centerButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
    centerButton.addTarget(self, action: #selector(goToYellowViewController), for: .touchUpInside)
  }
  
  @objc func goToYellowViewController(_ sender: UIButton) {
    let yellowVC = YellowViewController()
    yellowVC.titleText = "Yellow"
    navigationController?.pushViewController(yellowVC, animated: true)
  }
  
}
