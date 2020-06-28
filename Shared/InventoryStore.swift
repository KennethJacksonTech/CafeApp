//
//  SandwichStore.swift
//  iOS
//
//  Created by Kenneth Jackson on 6/24/20.
//

import Foundation

class InventoryStore: ObservableObject {
    @ Published var sandwiches : [Inventory]
    
    init(sandwiches: [Inventory] = []) {
        self.sandwiches = sandwiches
    }
}

let testStore = InventoryStore(sandwiches: testData)

