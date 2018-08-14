//
//  coffee.swift
//  CoffeeAddict
//
//  Created by Victoria Prus on 14/08/2018.
//  Copyright © 2018 Victoria McKee. All rights reserved.
//

    import UIKit
    
    class coffee: NSObject {
        
        var amountOfWater: Double = 0
        var amountOfCoffee: Double = 0
        var amountOfMilk: Double = 0
        var coffeeBoxIsClean: Double = 0
        var waterNeededEspressoLatte: Double = 25
        var waterNeededAmaricanno: Double = 50
        var coffeeNeeded: Double = 5
        var milkNeeded: Double = 100
        var coffeeBoxIsNeededToBeCleaned: Double = 10
        
        func makeAdrink(drink: String) -> String {
            
            if amountOfCoffee == 0 {
                return "Oops! Run out of coffee!"
            }
            if amountOfWater == 0 {
                return "No water! Sorry.."
            }
            if coffeeBoxIsClean == 0 {
                return "Clean the box please"
            }
            if drink == "Latte" {
                if amountOfMilk == 0 {
                    return "I am short of milk! please add some"
                }
            }
            do {
                amountOfCoffee = amountOfCoffee - coffeeNeeded
                if drink == "Americano" {
                    amountOfWater = amountOfWater - waterNeededAmaricanno
                } else {
                    amountOfWater = amountOfWater - self.waterNeededEspressoLatte
                }
                if drink == "Latte" {
                    amountOfMilk = amountOfMilk - milkNeeded
                }
            }
            
            boxGettingDirty()
            
            return " Here is your \(drink)! Enjoy!"
        }
        func boxGettingDirty() {
            coffeeBoxIsClean = coffeeBoxIsClean - coffeeBoxIsNeededToBeCleaned
        }
        func addWater() -> String {
            amountOfWater += 100
            return "Water is added"
        }
        func addCoffee() -> String {
            amountOfCoffee += 20
            return "Coffee is added"
        }
        func addMilk() -> String {
            amountOfMilk += 200
            return "Milk is added"
        }
        func cleantheBox() -> String {
            coffeeBoxIsClean += 100
            return "The box is cleaned"
        }
}

