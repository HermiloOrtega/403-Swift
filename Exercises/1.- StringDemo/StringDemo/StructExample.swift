//
//  StructExample.swift
//  StringDemo
//
//  Created by Derrick Park on 4/16/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import Foundation

// Class vs Struct
// class - reference
// struct - value

// No getter and setter
// instance variable -> property (instance var, getter, setter)

// access modifers in Swift
// - public, open -> library
// - fileprivate, private, private(set)
// - internal (same module (project))
class Person {
  var firstName: String
  private(set) var lastName: String
  
  init() {
    self.firstName = ""
    self.lastName = ""
  }
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
  
  func sayHello(to person: Person) {
    print("Hi, \(person.firstName)")
  }
}

struct City {
  private(set) var name: String
  var population: Int
  
  init(name: String, population: Int) {
    self.name = name
    self.population = population
  }
  
  func printInfo() {
    print("\(name) : \(population)")
  }
}
