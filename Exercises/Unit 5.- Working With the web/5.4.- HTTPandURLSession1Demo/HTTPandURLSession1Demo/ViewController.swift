//
//  ViewController.swift
//  HTTPandURLSession1Demo
//
//  Created by Derrick Park on 5/21/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

extension URL {
  func withQueries(_ queries: [String: String]) -> URL? {
    var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
    components?.queryItems = queries.map { URLQueryItem(name: $0.key, value: $0.value) }
    return components?.url
  }
}

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Tuple
//    let item: (k: String, v: String) = (k: "First", v: "Last")
//    print(item.k)
//    print( URLitem.v)
    
    // 1. create url
    let baseURL = URL(string: "https://api.nasa.gov/planetary/apod")!
    let queries = [
      "date": "2020-5-21",
      "api_key": "DEMO_KEY"
    ]
    let url = baseURL.withQueries(queries)!
   
    // 2. create a data task
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let err = error {
        print(err.localizedDescription)
        return
      }
      
      if let data = data, let jsonStr = String(data: data, encoding: .utf8) {
        print(jsonStr)
      }
    }
    
    // 3. resume
    task.resume()
  
  }
}

