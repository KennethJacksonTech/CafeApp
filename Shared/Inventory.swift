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
    var ingredientCount: Int
    var price: Float16
    var isSpicy: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
    
}

let testData = [
    Inventory(name: "Barbecue Beef & Sausage with Pinto Beans", category: "Entre", ingredientCount: 4, price: 7.50, isSpicy: false),
    Inventory(name: "Quesadillas", category: "Entre", ingredientCount: 4, price: 7.50, isSpicy: false),
    Inventory(name: "Texas Fried Chicken Breast", category: "Entre", ingredientCount: 8, price: 7.50, isSpicy: false),
    Inventory(name: "Hot Beef Sandwich", category: "Entre", ingredientCount: 7, price: 7.50, isSpicy: false),
    Inventory(name: "Bacon-Wrapped Meatloaf", category: "Entre", ingredientCount: 3, price: 7.50, isSpicy: false),
    Inventory(name: "Pot Roast",category: "Entre", ingredientCount: 4, price: 7.50, isSpicy: true),
    Inventory(name: "Chicken Fried Steak", category: "Entre", ingredientCount: 4, price: 7.50, isSpicy: true),
    Inventory(name: "Western Omelet", category: "Omelet",ingredientCount: 6, price: 8.75, isSpicy: false),
    Inventory(name: "Youngblood's Cheesburger", category: "Burger", ingredientCount: 6, price: 6.25, isSpicy: false),
    Inventory(name: "Jimmy's Bacon Cheesburger", category: "Burger", ingredientCount: 6, price: 6.95, isSpicy: false),
    Inventory(name: "Boneless Pork Chops", category: "Entre", ingredientCount: 2, price: 7.50, isSpicy: false),
    Inventory(name: "Spaghetti and Meatballs", category: "Entre", ingredientCount: 6, price: 7.50, isSpicy: true),
    Inventory(name: "Beef Tips and Noodles", category: "Entre", ingredientCount: 6, price: 7.50, isSpicy: true),
    
    
]

