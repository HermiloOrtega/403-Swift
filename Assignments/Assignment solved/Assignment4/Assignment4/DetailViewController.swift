//
//  DetailViewController.swift
//  Assignment4
//
//  Created by Derrick Park on 5/5/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  // dependecny injection
  var city: City! {
    didSet {
      updateUI(with: city)
    }
  }
  
  private let nameLabel: UILabel = {
    let lb = UILabel()
    lb.translatesAutoresizingMaskIntoConstraints = false
    return lb
  }()
  
  private let tempLabel: UILabel = {
    let lb = UILabel()
    lb.translatesAutoresizingMaskIntoConstraints = false
    return lb
  }()
  
  private func updateUI(with city: City) {
    nameLabel.text = city.name
    tempLabel.text = "\(city.temp) ℃"
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
    navigationItem.title = city.name
    let vStackView = UIStackView(arrangedSubviews: [nameLabel, tempLabel])
    vStackView.axis = .vertical
    vStackView.translatesAutoresizingMaskIntoConstraints = false
    vStackView.alignment = .center
    vStackView.distribution = .fillEqually
    vStackView.spacing = 30
    
    view.addSubview(vStackView)
    vStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    vStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }
}
