//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mainView: UIView = {
        let main = UIView()
            // important when setting contraints programmatically
            main.translatesAutoresizingMaskIntoConstraints = false
            main.backgroundColor = .green
        return main
    }()
    let squareButton: UIButton = {
        let butt = UIButton(type: .system)
            butt.setTitle("Square", for: .normal)
            butt.translatesAutoresizingMaskIntoConstraints = false
            butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
            butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
        return butt
    }()
    let portraitButton: UIButton = {
        let butt = UIButton(type: .system)
            butt.setTitle("Portrait", for: .normal)
            butt.translatesAutoresizingMaskIntoConstraints = false
            butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
            butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
        return butt
    }()
    let landScapeButton: UIButton = {
        let butt = UIButton(type: .system)
            butt.setTitle("Landscape", for: .normal)
            butt.translatesAutoresizingMaskIntoConstraints = false
            butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
            butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
        return butt
    }()

    let redView: UIView = {
        let redView = UIView()
            redView.translatesAutoresizingMaskIntoConstraints = false
            redView.backgroundColor = .red
        return redView
    }()
    let orangeView1: UIView = {
        let orangeView1 = UIView(frame: CGRect.zero)
            orangeView1.translatesAutoresizingMaskIntoConstraints = false
            orangeView1.backgroundColor = .orange
        return orangeView1
    }()
    let orangeView2: UIView = {
        let orangeView2 = UIView(frame: CGRect.zero)
            orangeView2.translatesAutoresizingMaskIntoConstraints = false
            orangeView2.backgroundColor = .orange
        return orangeView2
    }()
    let stackView: UIStackView = {
        let spaceView1 = UIView(frame: CGRect.zero)
            spaceView1.translatesAutoresizingMaskIntoConstraints = false
        let blueView1 = UIView(frame: CGRect.zero)
            blueView1.translatesAutoresizingMaskIntoConstraints = false
            blueView1.backgroundColor = .blue
        let blueView2 = UIView(frame: CGRect.zero)
            blueView2.translatesAutoresizingMaskIntoConstraints = false
            blueView2.backgroundColor = .blue
        let blueView3 = UIView(frame: CGRect.zero)
            blueView3.translatesAutoresizingMaskIntoConstraints = false
            blueView3.backgroundColor = .blue
        let spaceView2 = UIView(frame: CGRect.zero)
            spaceView1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            blueView1.widthAnchor.constraint(equalToConstant: 50),
            blueView1.heightAnchor.constraint(equalTo: blueView1.widthAnchor, multiplier: 1),
            blueView2.widthAnchor.constraint(equalToConstant: 50),
            blueView2.heightAnchor.constraint(equalTo: blueView2.widthAnchor, multiplier: 1),
            blueView3.widthAnchor.constraint(equalToConstant: 50),
            blueView3.heightAnchor.constraint(equalTo: blueView3.widthAnchor, multiplier: 1),
        ])
        
        let sv = UIStackView(arrangedSubviews:[spaceView1,blueView1,blueView2,blueView3,spaceView2])
            sv.translatesAutoresizingMaskIntoConstraints = false
            sv.axis = .vertical
            sv.distribution = .equalSpacing
        return sv
    }()
    let purpleView: UIView = {
        let pView = UIView()
            pView.translatesAutoresizingMaskIntoConstraints = false
            pView.backgroundColor = .purple
        return pView
    }()

    var widthAnchor: NSLayoutConstraint?
    var heightAnchor: NSLayoutConstraint?
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mainView)
        setupLayout()
    }
    
    fileprivate func setupLayout() {
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
        heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
        widthAnchor?.isActive = true
        heightAnchor?.isActive = true
        
        let buttStackView = UIStackView(arrangedSubviews: [squareButton, portraitButton, landScapeButton])
            buttStackView.translatesAutoresizingMaskIntoConstraints = false
            buttStackView.axis = .horizontal
            buttStackView.alignment = .center
            buttStackView.distribution = .fillEqually
        
        view.addSubview(buttStackView)
        NSLayoutConstraint.activate([
          buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
          buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          buttStackView.heightAnchor.constraint(equalToConstant: 50),
          buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
          ])
        
        setupPurpleView()
        setupOrangeAndRed()
        setupStackView()
    }
    private func setupStackView(){
        mainView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            stackView.heightAnchor.constraint(equalTo: mainView.heightAnchor)
        ])
        
    }
    private func setupOrangeAndRed(){
        mainView.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.heightAnchor.constraint(equalToConstant: 50),
            redView.widthAnchor.constraint(equalToConstant: 200),
            redView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            redView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20)
        ])
        redView.addSubview(orangeView1)
        NSLayoutConstraint.activate([
            orangeView1.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: 10),
            orangeView1.topAnchor.constraint(equalTo: redView.topAnchor, constant: 10),
            orangeView1.bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: -10),
            orangeView1.widthAnchor.constraint(equalToConstant: 100)
        ])
        redView.addSubview(orangeView2)
        NSLayoutConstraint.activate([
            orangeView2.leadingAnchor.constraint(equalTo: orangeView1.trailingAnchor, constant: 10),
            orangeView2.topAnchor.constraint(equalTo: redView.topAnchor, constant: 10),
            orangeView2.bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: -10),
            orangeView2.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: -10)
        ])
    }
    private func setupPurpleView(){
        mainView.addSubview(purpleView)
        NSLayoutConstraint.activate([
            purpleView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.6),
            purpleView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            purpleView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20),
            purpleView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}
