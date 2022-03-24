//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Derrick Park on 5/4/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

// Summary
// 1. Instantiated (from storyboard or code) - init
// 2. awakeFromNib (only if instantiated from a storyboard)
// 3. segue preparation happens (storyboard)
// 4. outlets get set (storyboard)
// 5. viewDidLoad
// 6. These pairs will be called each time your Controller's view goes on/off screen
//    - viewWillAppear and viewDidAppear
//    - viewWillDisappear and viewDidDisappear
// 7. These "geometry changed" methods might be called at "any time" after viewDidLoad
//    - viewWillLayoutSubviews and viewDidLayoutSubviews
// 8. At any time, if memory gets low, you might get...
//    - didReceiveMemoryWarning
// 9. When your device rotates, viewWillTransition gets called

class ViewController: RightBarButtonViewController {
  
  /// Primiary Setup
  override func viewDidLoad() {
    super.viewDidLoad() // always let super have a chance din lifecycle methods
    
//    print(#function)
    // do the primary setup iof your viewController here
    // good time to update my view using your model, because outlets are all set
    
    // * Do not do geometry-related setup here! (your bounds are not set yet!)
  }
  
  /// This method will be called just before your ViewController appears (or re-appears) on screen.
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
//    print(#function)
    // Catch your view up to date with what went on while this was off-screen
    
    // * This method can be called repeatedly (viewDidLoad is called once)
  }
  
  /// This method will be called after your ViewController has finished appearing on screen.
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
//    print(#function)
    // start a timer or an animation or start observing somthing (e.g. GPS position)
    
    // This is also a good place to start something expensive (e.g. network fetch) going.
    // Why kick off expensive things here instead of in viewDidLoad?
    // Because we know that we're on screen so it won't be a waste.
    // By "expensive" usually mean "time consuming" but could also mean battery or storage.
    
  }

  /// Your ViewController is still on screen, but it's about to go off screen.
  /// Maybe the user hit "back" button in a UINavigationController
  /// or they switched to another tab in a UITabBarController
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
//    print(#function)
    
    // often you undo what you did in viewDidAppear
    // for example, stop a timer that you started or stop observing something
  }
  
  /// Your ViewController went off screen.
  /// Somewhat rare to do something here, nut occasionally you might want to "clean up" your ViewController.
  /// for example, you could save some state or release some large, recreatable resource.
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
//    print(#function)
    // clean up ViewController
    
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
  }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
}

