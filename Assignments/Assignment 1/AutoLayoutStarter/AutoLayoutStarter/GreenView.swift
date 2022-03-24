//
//  GreenView.swift
//  AutoLayoutStarter
//
//  Created by Jose Hermilo Ortega Martinez on 2020-04-28.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class Greenview: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .green
        setupPurpleView()
        setupStackView()
        setupOrangeAndRed()
    }
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    let stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews:[UIView(),
                                                createBlueView(),
                                                createBlueView(),
                                                createBlueView(),
                                                UIView()])
            sv.translatesAutoresizingMaskIntoConstraints = false
            sv.axis = .vertical
            sv.distribution = .equalSpacing
        return sv
    }()
    private static func createBlueView() -> UIView {
        let v = UIView()
            v.translatesAutoresizingMaskIntoConstraints = false
            v.backgroundColor = .blue
        //v.anchorSize(width: 80, height:80)
        return v
    }
    
    let purpleView: UIView = {
        let v = UIView()
            v.translatesAutoresizingMaskIntoConstraints = false
            v.backgroundColor = .purple
        return v
    }()
    let redView: UIView = {
        let orangeView1 = UIView(frame: CGRect(x: 10, y: 10, width: 140, height: 60))
            orangeView1.backgroundColor = .orange
        let orangeView2 = UIView(frame: CGRect(x: 160, y: 10, width: 90, height: 60))
            orangeView2.backgroundColor = .orange
        
        let v = UIView()
            v.translatesAutoresizingMaskIntoConstraints = false
            v.backgroundColor = .red
            v.addSubview(orangeView1)
            v.addSubview(orangeView2)
        return v
    }()
    
    private func setupStackView(){
        addSubview(stackView)
        NSLayoutConstraint.activate([
        stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
        stackView.heightAnchor.constraint(equalTo: heightAnchor)
        ])
    }
    private func setupPurpleView(){
        addSubview(purpleView)
        NSLayoutConstraint.activate([
            purpleView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            purpleView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            purpleView.heightAnchor.constraint(equalToConstant: 80),
            purpleView.widthAnchor.constraint(equalTo: widthAnchor, constant: 0.7),
        ])
    }
    private func setupOrangeAndRed(){
        addSubview(redView)
        NSLayoutConstraint.activate([
            redView.centerXAnchor.constraint(equalTo: centerXAnchor),
            redView.heightAnchor.constraint(equalTo: heightAnchor)
        ])
    }
}
