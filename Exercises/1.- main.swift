//
//  main.swift
//  StringDemo
//
//  Created by Derrick Park on 4/16/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import Foundation

// array

var array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print(array1[0..<3])
print(array1[2...5])

var scores: [String: Int] = ["Richard": 500, "Luke": 400, "Cheryl": 800]
let keys = Array(scores.keys)
let values = Array(scores.values)
print(keys)
print(values)

// accessing a dictionary -> always returns optional( value or nil )

if let score = scores["Derrick"] { // nil
  print("\(score)")
}

if let score = scores["Richard"] { // value
  print("\(score)")
}

// set
var s: Set<Int> = Set()
s.insert(10)
s.insert(10)
s.insert(10)
//s.union(<#T##other: Sequence##Sequence#>)
//s.intersection(<#T##other: Set<Int>##Set<Int>#>)
//s.subtract(<#T##other: Set<Int>##Set<Int>#>)

if s.contains(10) {
  
}

print(s.count)


//
//scores["Oli"] = 399
//
//if let returnValue = scores.updateValue(100, forKey: "Richard") {
//  print("Return value is \(returnValue).")
//} else {
//  print("There's no key.")
//}
//
//print(scores)
