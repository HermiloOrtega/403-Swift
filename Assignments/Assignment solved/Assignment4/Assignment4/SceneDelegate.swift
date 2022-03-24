//
//  SceneDelegate.swift
//  Assignment4
//
//  Created by Derrick Park on 5/5/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

struct City {
  let name: String
  let temp: Int
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?


  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    guard let scene = (scene as? UIWindowScene) else { return }
    window = UIWindow(windowScene: scene)
    window?.makeKeyAndVisible()
    
    let tabVC1 = CityViewController()
    let navVC1 = UINavigationController(rootViewController: tabVC1)
    let city1 = City(name: "Vancouver", temp: 20)
    tabVC1.city = city1
    navVC1.tabBarItem = UITabBarItem(title: city1.name, image: nil, tag: 0)
    
    let tabVC2 = CityViewController()
    let navVC2 = UINavigationController(rootViewController: tabVC2)
    let city2 = City(name: "New York", temp: 15)
    tabVC2.city = city2
    navVC2.tabBarItem = UITabBarItem(title: "New York", image: nil, tag: 0)
    
    let tabVC3 = CityViewController()
    let navVC3 = UINavigationController(rootViewController: tabVC3)
    let city3 = City(name: "Toronto", temp: 10)
    tabVC3.city = city3
    navVC3.tabBarItem = UITabBarItem(title: "Toronto", image: nil, tag: 0)
    
    let tabBarController = UITabBarController()
    tabBarController.viewControllers = [
      navVC1,
      navVC2,
      navVC3
    ]
    
    window?.rootViewController = tabBarController
  }

  func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
  }

  func sceneDidBecomeActive(_ scene: UIScene) {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
  }

  func sceneWillResignActive(_ scene: UIScene) {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
  }

  func sceneWillEnterForeground(_ scene: UIScene) {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
  }

  func sceneDidEnterBackground(_ scene: UIScene) {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
  }


}

