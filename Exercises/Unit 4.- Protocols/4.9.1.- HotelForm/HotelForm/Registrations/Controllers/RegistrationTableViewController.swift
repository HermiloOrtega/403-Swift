//
//  RegistrationTableViewController.swift
//  HotelForm
//
//  Created by Derrick Park on 5/15/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class RegistrationTableViewController: UITableViewController {
  
  private let cellId = "RegistrationCell"
  
  private var registrations = [Registration]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationItem.title = "Registrations"
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addRegistration(_:)))
    tableView.register(SubtitleTableViewCell.self, forCellReuseIdentifier: cellId)
  }
  
  @objc func addRegistration(_ sender: UIBarButtonItem) {
    let addRegistrationTVC = AddRegistrationTableViewController(style: .grouped)
    let embedNav = UINavigationController(rootViewController: addRegistrationTVC)
    present(embedNav, animated: true, completion: nil)
  }
  
  // MARK: - Table view data source

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return registrations.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SubtitleTableViewCell
    cell.textLabel?.text = "Hello"
    cell.detailTextLabel?.text = "Subtitle"
    return cell
  }
  
}
