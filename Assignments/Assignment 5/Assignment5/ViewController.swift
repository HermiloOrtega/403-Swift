//
//  ViewController.swift
//  Assignment5
//
//  Created by Jose Hermilo Ortega Martinez on 2020-05-17.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let lblTotal            : UILabel       = {
        let lb = UILabel()
            lb.translatesAutoresizingMaskIntoConstraints = false
            lb.text = "Total Amount"
        return lb
    }()
    private let txtBill             : UITextField   = {
        let tf = UITextField()
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.placeholder = "$ 00.00"
            //tf.layer.borderColor = CGColor.init(srgbRed: 6/255, green: 214/255, blue: 160/255, alpha: 1.0)
            tf.layer.cornerRadius = 4
            tf.layer.borderWidth = 1
            tf.minimumFontSize = 50
            tf.textAlignment = .center
            tf.keyboardType = .numberPad
        return tf
    }()
    private let sldPercentage       : UISlider      = {
       let sld = UISlider()
        sld.translatesAutoresizingMaskIntoConstraints = false
        sld.minimumValue = 0
        sld.maximumValue = 100
        sld.value = 15
        //sld.maximumTrackTintColor = UIColor(red: 27/255, green: 154/255, blue: 170/255, alpha: 1.0)
        //sld.maximumTrackTintColor = UIColor(red: 239/255, green: 71/255, blue: 111/255, alpha: 1.0)
        sld.widthAnchor.constraint(equalToConstant: 300).isActive = true
        sld.addTarget(self, action: #selector(chgLbl), for: .valueChanged)
        sld.addTarget(self, action: #selector(calcTipSld), for: .valueChanged)
        return sld
    }()
    private let lblPercentageTip    : UILabel       = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "15 %"
        lb.adjustsFontSizeToFitWidth = true
        lb.textAlignment = .center
        return lb
    }()
    private let btnCalc             : UIButton      = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Calculate Tip", for: .normal)
        btn.backgroundColor = UIColor(red: 6/255, green: 214/255, blue: 160/255, alpha: 1.0)
        btn.contentEdgeInsets = UIEdgeInsets.init(top: 8, left: 16, bottom: 8, right: 16)
        btn.layer.cornerRadius = 4
        return btn
    }()
    private let lblTip              : UILabel       = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "$ 0.00"
        lb.font = UIFont.boldSystemFont(ofSize: 50)
        return lb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupApp()
    }
    private func setupApp(){
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        
        let stView = UIStackView(arrangedSubviews: [lblTotal,
                                                    txtBill,
                                                    sldPercentage,
                                                    lblPercentageTip,
                                                    btnCalc,
                                                    lblTip])
            stView.translatesAutoresizingMaskIntoConstraints = false
            stView.axis = .vertical
            stView.alignment = .center
            stView.distribution = .fillEqually
            stView.spacing = 25
        view.addSubview(stView)
        
        NSLayoutConstraint.activate([
            stView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            txtBill.leftAnchor.constraint(equalTo: stView.leftAnchor),
            txtBill.rightAnchor.constraint(equalTo: stView.rightAnchor),
            
            lblPercentageTip.leftAnchor.constraint(equalTo: stView.leftAnchor),
            lblPercentageTip.rightAnchor.constraint(equalTo: stView.rightAnchor)
        ])
    }
    
    @objc private func chgLbl(_ sender: UISlider!){
        lblPercentageTip.text = String(format: "%.0f", floor(Double(sender.value))) + " %"
    }
    @objc private func calcTipSld(_ sender: UISlider!){
        guard txtBill.text != nil else{ return }
        if let bill = txtBill.text{
            lblTip.text = String(format: "$ %.2f", atof(bill) * floor(Double(sender.value)) / 100)
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @objc private func calcTipBtn(_ sender: UIButton!){
        guard txtBill.text != nil else {
            return
        }
        if let amountBill = txtBill.text {
            lblTip.text = String(format: "$ %.2f", atof(amountBill) * floor(Double(sldPercentage.value)) / 100)
        }
    }
}

