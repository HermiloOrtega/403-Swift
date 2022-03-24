//
//  ViewController.swift
//  Light
//
//  Created by Jose Hermilo Ortega Martinez on 2020-04-20.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var lightButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
        /*
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        }else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
        */
    }
}

