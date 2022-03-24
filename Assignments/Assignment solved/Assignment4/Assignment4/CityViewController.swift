//
//  CityViewController.swift
//  Assignment4
//
//  Created by Derrick Park on 5/5/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
  
  var city: City!
  
  private let detailBtn: UIButton = {
    let btn = UIButton(type: .system)
    btn.setTitle("Go Details", for: .normal)
    btn.backgroundColor = .lightGray
    btn.layer.cornerRadius = 12
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.widthAnchor.constraint(equalToConstant: 120).isActive = true
    btn.heightAnchor.constraint(equalToConstant: 70).isActive = true
    return btn
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    navigationItem.title = city.name
    view.addSubview(detailBtn)
    detailBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    detailBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    detailBtn.addTarget(self, action: #selector(goToDetail), for: .touchUpInside)
  }
    
  @objc private func goToDetail(_ sender: UIButton) {
    let detailVC = DetailViewController()
    detailVC.city = city
    navigationController?.pushViewController(detailVC, animated: true)
  }
  
}
