//
//  main.swift
//  Protocol
//
//  Created by Derrick Park on 5/5/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import Foundation

protocol FullyNamed {
  var fullName: String { get }
  func sayFullName()
}

struct Person: CustomStringConvertible, Equatable, Comparable, Codable, FullyNamed {
 
  var firstName: String
  var lastName: String
  var fullName: String {
    return "\(firstName) \(lastName)"
  }
  
  var description: String {
    return "\(firstName) \(lastName)"
  }
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
  
  func sayFullName() {
    print(fullName)
  }
  
  static func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
  }
  
  static func < (lhs: Person, rhs: Person) -> Bool {
    return lhs.firstName < rhs.firstName
  }
}

let p1 = Person(firstName: "Derrick", lastName: "Park")
let p2 = Person(firstName: "Perrick", lastName: "Park")

var people = [p2, p1]
let sorted = people.sorted(by: >)
print(sorted)

// JSON encoder
let jsonEncoder = JSONEncoder()
do {
  let jsonData = try jsonEncoder.encode(p1)
  if let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
  }
  
  let jsonDecoder = JSONDecoder()
  if let obj = try? jsonDecoder.decode(Person.self, from: jsonData) {
    print(obj)
  }

} catch {
  print(error.localizedDescription)
}

struct StarwarsChar: Codable {
  var name: String
  var gender: String
}

func getStarwarsData(urlString: String) {
  let session = URLSession(configuration: .default)
  if let url =  URL(string: urlString) {
    let task = session.dataTask(with: url) { (data, res, err) in
      if let data = data {
        if let swChar = try? JSONDecoder().decode(StarwarsChar.self, from: data) {
          print(swChar.name)
          print(swChar.gender)
        }
      }
    }
    task.resume()
  }
}

//getStarwarsData(urlString: "https://swapi.dev/api/people/1/")

