//
//  ViewController.swift
//  Hello
//
//  Created by Derrick Park on 4/15/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet private var myButton: UIButton!
  private let anotherButton = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 70))
  
  // ViewController lifecycle method
  override func viewDidLoad() {
    super.viewDidLoad()
    // this method gets called when the view is loaded to the memory
    // a good place initialize your properties
    view.backgroundColor = UIColor.green
    myButton.backgroundColor = UIColor.lightGray
    
    view.addSubview(anotherButton)
    anotherButton.setTitle("We are done!", for: .normal)
    anotherButton.backgroundColor = UIColor.blue
    
  }
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    print("Button Tapped!!!")
  }
  
  // shortcuts
  // cmd + opt + ctrl + return : open assistent editor
  // cmd + return : back to basic editor
  // cmd + b : build the project
  // cmd + shift + k: clean the project
  // cmd + r : run the project
}

