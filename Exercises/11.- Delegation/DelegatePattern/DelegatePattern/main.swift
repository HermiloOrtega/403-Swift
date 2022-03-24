//
//  main.swift
//  DelegatePattern
//
//  Created by Derrick Park on 5/6/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import Foundation

// Software Object-Oriented 'Design Pattern'
// * Delegate Pattern

protocol ButtonDelegate {
  func userTappedButton(_ sender: Button)
}

class Button {
  let title: String
  let color: String
  let width: Int
  let height: Int
  var delegate: ButtonDelegate?
  
  init(title: String, color: String, width: Int, height: Int) {
    self.title = title
    self.color = color
    self.width = width
    self.height = height
  }
  
  func tapped() {
    delegate?.userTappedButton(self)
  }
}

class ViewController: ButtonDelegate {
  
  var btn = Button(title: "Hello", color: "blue", width: 170, height: 70)
  
  func viewDidLoad() {
    btn.delegate = self
  }
  
  func userTappedButton(_ sender: Button) {
    print("Do Something Cool")
  }
  
}

class ViewController2: ButtonDelegate {
  var btn = Button(title: "Hello", color: "blue", width: 170, height: 70)
  
  func viewDidLoad() {
    btn.delegate = self
  }
  
  func userTappedButton(_ sender: Button) {
    print("Do Something Nice")
  }
}

let viewController = ViewController()
viewController.viewDidLoad()
viewController.btn.tapped()

let viewController2 = ViewController2()
viewController2.viewDidLoad()
viewController2.btn.tapped()
