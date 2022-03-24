//
//  ViewController.swift
//  Lab1.- InterfaceBuilderBasics
//
//  Created by Jose Hermilo Ortega Martinez on 2020-04-15.
//  Copyright © 2020 HermiloOrtega. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainLabel: UILabel!
    @IBAction func changeTitle(_ sender: UIButton) {
        mainLabel.text = "This app rocks!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

