//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jose Hermilo Ortega Martinez on 2020-04-15.
//  Copyright © 2020 Jucod IT Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // shortcuts
        // cmd + opt + ctrl + return = open assistent editor
        // cmd + return : back to basic editor
        // cmd + b : build the project
        // cmd + shift + k : clean the project
        // cmd + r : run the project
    
    private let anotherButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 70))
    
    @IBOutlet private var myButton: UIButton!
    override func viewDidLoad() {
        // This method gets called when the view is loaded to the memory
        // a good place initialize your properties
        super.viewDidLoad()
        myButton.backgroundColor = UIColor.lightGray
        view.backgroundColor = UIColor.green
        
        view.addSubview(anotherButton)
        anotherButton.setTitle("We are done!", for: .normal)
        anotherButton.backgroundColor = UIColor.blue
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button tapped!!!")
    }
}
