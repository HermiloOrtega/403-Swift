//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Derrick Park on 4/22/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var toggle: UISwitch!
  @IBOutlet var slider: UISlider!
  @IBOutlet var nameTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  @IBAction func tappedBackground(_ sender: UITapGestureRecognizer) {
    // dismiss the keyboard
    nameTextField.resignFirstResponder()
  }
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    print("Button was tapped!")
    if toggle.isOn {
      print("The slider is set to \(slider.value)")
    } else {
      print("The switch is off!")
    }
  }
  
  @IBAction func switchToggled(_ sender: UISwitch) {
    if sender.isOn {
      print("The switch is on!")
    } else {
      print("The switch is off!")
    }
  }
  
  @IBAction func sliderValueChanged(_ sender: UISlider) {
    print(sender.value)
  }
  
  @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
    // primary action triggered
    if let text = sender.text {
      print(text)
    }
  }
  
  @IBAction func textChanged(_ sender: UITextField) {
    // editing changed
    if let text = sender.text {
      print(text)
    }
  }
}

