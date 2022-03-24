//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Derrick Park on 4/28/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var hobbyTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    navigationController?.navigationBar.prefersLargeTitles = true
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.defaultSetup()
    navigationController?.navigationBar.standardAppearance = navBarAppearance
    navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // pass the data (sourceVC and destinationVC)
    if let identifier = segue.identifier, identifier == "GoToYellow" {
      let destVC = segue.destination as! YellowViewController
      destVC.hobby = hobbyTextField.text!
      print(#function)
      // DO NOT EVER ACCESS OUTLETS! (not yet initialized! - nil)
      // destVC.hobbyLabel.text = hobbyTextField.text!
    }
  }
  
  @IBAction func goToBlueVC(_ sender: UIButton) {
    // 1. get navigation controller (stack of VCs)
    // 2. push blue view controller on to the stack
    let blueVC = BlueViewController()
    navigationController?.pushViewController(blueVC, animated: true)
  }
  
  @IBAction func unwindToRed(for segue: UIStoryboardSegue) {
    print(#function)
    let srcVC = segue.source as! YellowViewController
    print(srcVC.hobby!)
  }
}

extension UINavigationBarAppearance {
  func defaultSetup() {
    self.configureWithOpaqueBackground()
    self.titleTextAttributes = [.foregroundColor: UIColor.black]
    self.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
    self.backgroundColor = .white
  }
}
