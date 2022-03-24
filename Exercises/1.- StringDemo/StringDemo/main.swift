//
//  main.swift
//  StringDemo
//
//  Created by Derrick Park on 4/16/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import Foundation

// shortcut: cmd + ctrl + space
var str = "Hello👋"
print(str)
print(str.count)

// substring
//print(type(of: str.startIndex))
//
//let indexOfl = str.index(str.startIndex, offsetBy: 3)
//print(str[indexOfl..<str.endIndex])

print(str[3, str.count])
print(str[str.count - 1])
print(str[0, 5])

// class Person - ref
let p1 = Person(firstName: "Derrick", lastName: "Park")
var p2 = p1
p1.firstName = "Leo"
print(p2.firstName)


// struct City - value
var city1 = City(name: "Bello horizont", population: 3_000_000)
var city2 = City(name: "Bogota", population: 7_000_000)

var city3 = city1
city1.population = 4_000_000

city1.printInfo()
city3.printInfo()

func visit(_ city: City, pop: Int) {
  // var c = city
  print("I am visiting \(city.name)")
}
