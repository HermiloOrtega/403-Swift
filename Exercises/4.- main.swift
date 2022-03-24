//
//  main.swift
//  Casting
//
//  Created by Derrick Park on 4/27/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import Foundation


// Guard Statement
//func singHappyBirthday(_ isBirthDayToday: Bool, _ invitedGuests: [String], _ isCakeCandleLit: Bool) {
//  if isBirthDayToday {
//    if !invitedGuests.isEmpty {
//      if isCakeCandleLit {
//        print("Happy Birthday to you!")
//      } else {
//        print("The cake's candles have not yet been lit!")
//      }
//    } else {
//      print("It's just a solo party!")
//    }
//  } else {
//    print("No one has a birthday today.")
//  }
//}

func singHappyBirthday(_ isBirthDayToday: Bool, _ invitedGuests: [String], _ isCakeCandleLit: Bool) {
  guard isBirthDayToday else {
    print("No one has a birthday today.")
    return
  }
  guard !invitedGuests.isEmpty else {
    print("It's just a solo party!")
    return
  }
  guard isCakeCandleLit else {
    print("The cake's candles have not yet been lit!")
    return
  }
  
  print("Happy Birthday to you!")
}

func divide(_ number: Double, by divisor: Double) -> Double? {
  guard divisor != 0.0 else { return nil }
  return number / divisor
}

// Using guard statement for optionals

func buyComputer(_ brand: String?, price: Int?) {
  if let brand = brand {
    if let price = price {
      print("\(brand): $\(price)")
    }
  }
}

func buyComputerGuard(_ brand: String?, price: Int?) {
  guard let brand = brand, let price = price else { return }
  print("\(brand): $\(price)")
}

