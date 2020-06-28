//
//  Sandwich.swift
//  MMApptest2
//
//  Created by Kenneth Jackson on 6/24/20.
//

import Foundation

struct Inventory: Identifiable {
    var id = UUID()
    var name: String
    var category: String
    var description: String
    var price: Double = 0
    var isSpicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

let testData = [
    Inventory(name: "Barbecue Beef and Sausage with Pinto Beans", category: "Entre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 7.50, isSpicy: true),
    Inventory(name: "Quesadillas", category: "Entre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 7.50, isSpicy: true),
    Inventory(name: "Bacon-Wrapped Meatloaf", category: "Entre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 7.50, isSpicy: false),
    Inventory(name: "Pot Roast",category: "Entre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 7.50, isSpicy: false),
    Inventory(name: "Chicken Fried Steak", category: "Entre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 7.50, isSpicy: false),
    Inventory(name: "Western Omelet", category: "Omelet",description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 8.75, isSpicy: true),
    Inventory(name: "Youngblood's Cheesburger", category: "Burger", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 6.25, isSpicy: false),
    Inventory(name: "Jimmy's Bacon Cheesburger", category: "Burger", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 6.95, isSpicy: false),
    Inventory(name: "Boneless Pork Chops", category: "Entre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 7.50, isSpicy: false),
    Inventory(name: "Spaghetti and Meatballs", category: "Entre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 7.50, isSpicy: true),
    Inventory(name: "Beef Tips and Noodles", category: "Entre", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", price: 7.50, isSpicy: false)
]

