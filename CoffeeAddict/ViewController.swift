//
//  ViewController.swift
//  CoffeeAddict
//
//  Created by Victoria Prus on 14/08/2018.
//  Copyright © 2018 Victoria McKee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var label: UILabel!
    var coffeeMachine = coffee()
    
    @IBAction func makeEspresso(_ sender: UIButton) {
        label.text = coffeeMachine.makeAdrink(drink: "Espresso")
    }
    @IBAction func makeLatte(_ sender: UIButton) {
        label.text = coffeeMachine.makeAdrink(drink: "Latte")
    }
    @IBAction func makeAmericano(_ sender: UIButton) {
        label.text = coffeeMachine.makeAdrink(drink: "Americano")
    }
    @IBAction func addCoffee(_ sender: UIButton) {
        label.text = coffeeMachine.addCoffee()
    }
    @IBAction func addWater(_ sender: UIButton) {
        label.text = coffeeMachine.addWater()
    }
    @IBAction func cleanTheBox(_ sender: UIButton) {
        label.text = coffeeMachine.cleantheBox()
    }
    @IBAction func Add(_ sender: UIButton) {
        label.text = coffeeMachine.addMilk()
    }
    
}


