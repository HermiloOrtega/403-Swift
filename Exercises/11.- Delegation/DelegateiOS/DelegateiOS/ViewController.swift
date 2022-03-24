//
//  ViewController.swift
//  DelegateiOS
//
//  Created by Derrick Park on 5/6/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

  @IBOutlet var textField: UITextField!
  @IBOutlet var tableView: UITableView!
  var students = [
    "Tomona", "Melissa", "Martin", "Leandro", "Carlos", "Jiro", "Aga", "Cayo", "Hermilo",
    "Tomona", "Melissa", "Martin", "Leandro", "Carlos", "Jiro", "Aga", "Cayo", "Hermilo",
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    
    textField.delegate = self
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Hello")
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return students.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = students[indexPath.row]
    return cell
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print("textfield pressed return")
    return true
  }
}

