//
//  main.swift
//  StringDemo
//
//  Created by Derrick Park on 4/16/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import Foundation

//var names = ["Leo", "Sean", "Derrick"]
//
//for (i, name) in names.enumerated() {
//  if i == 0 {
//    continue
//  }
//  print("\(i): \(name)")
//}
//
//var cities = ["YVR": "Vancouver", "JFK": "New York", "YYC": "Calgary", "LAX": "LA"]
//
//for (k, v) in cities {
//  print("\(k): \(v)")
//}
//
//// labeled statements (loops, if-else, switch)
//let numbers = 1...100
//
//outerLoop: for num1 in numbers {
//  for num2 in numbers {
//    if num1 == num2 && num1 * num2 == 144 {
//      print("Found my number: \(num1)")
//      break outerLoop
//    }
//  }
//}
//
//var i = 0
//repeat {
//  print(i)
//  i += 1
//} while i < 10


// Optional (either nil or some value)
// - type?
// - before you use an optional value, you must 'unwrap' the optional


var city: String? = "Vancouver"
//if city != nil {
//  print(city!)
//}
//print(city) // Optional("Vancouver")

// Unwrapping optionals
// 1. force-unwrap (!)
//print(city!)

// 2. safely unwrap using if-let (if-var)
// * most common (recommended way!)
if let c = city { // "swifty"
  print(c)
}

if var c = city {
  c += ", BC, Canada"
  print(c)
} else {
  print("city is nil")
}

// 3. optional chaining
if let numChars = city?.count {
  print(numChars)
}
//print(city!.count) // force-wrap


// 4. return a default value if the optional is nil
print(city ?? "Toronto")

// Dictionary
var cities = ["Canada": "Ottawa",
              "Brazil": "Brasilia",
              "Japan": "Tokyo",
              "Colombia": "Bogota",
              "Slovakia": "Bratislava",
              "Mexico": "Mexico City",
              "USA": "Washington D.C.",
              "Thailand": "Bangkok"
]

let capital: String? = cities["Canada"]

if let cap = cities["Japan"] {
  print(cap)
} // nil or capital


func printFullName(first: String, middle: String? = nil, last: String? = nil) {
  if let middle = middle, let last = last { // unwrap
    print("\(first) \(middle) \(last)")
  } else if let last = last {
    print("\(first) \(last)")
  } else {
    print("\(first)")
  }
}

printFullName(first: "Derrick")
printFullName(first: "Derrick", middle: "Hello")
printFullName(first: "Derrick", last: "Park")
printFullName(first: "Hello", middle: "Nice", last: "World")

func firstString(havingPrefix prefix: String, in strings: [String]) -> String? {
  for string in strings {
    if string.hasPrefix(prefix) {
      return string
    }
  }
  return nil
}

if let phone = firstString(havingPrefix: "Appl", in: ["Apple", "Samsung", "Google", "One plus", "Huawei"]) {
  print("I will buy \(phone) phone")
}


// failable initializer
struct Toddler {
  var birthName: String
  var monthsOld: Int
  
  init?(birthName: String, monthsOld: Int) {
    if monthsOld < 12 || monthsOld > 36 {
      return nil
    } else {
      self.birthName = birthName
      self.monthsOld = monthsOld
    }
  }
}

var baby1: Toddler? = Toddler(birthName: "Leo", monthsOld: 13)
if let baby = baby1 {
  print("\(baby.birthName) is a toddler")
} else {
  print("Not a toddler")
}

class Person {
  var age: Int
  var residence: Residence?
  init(age: Int) {
    self.age = age
  }
}

class Residence {
  var address: Address?
}

class Address {
  var street: String?
  var apartmentNumber: String?
}

let person = Person(age: 20)
if let res = person.residence {
  if let addr = res.address {
    if let aprt = addr.apartmentNumber {
      print("lives in apartment number \(aprt)")
    }
  }
}

if let aprt = person.residence?.address?.apartmentNumber {
  print("lives in apartment number \(aprt)")
}

// Implicitly unwrapped optional
// - "I don't know the value yet, but it will have a value when I run the code"
//class ViewController: UIViewController {
//  var button: UIButton!
//}
