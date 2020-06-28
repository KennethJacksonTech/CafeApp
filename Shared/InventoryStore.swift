//
//  SandwichStore.swift
//  iOS
//
//  Created by Kenneth Jackson on 6/24/20.
//

import Foundation

class InventoryStore: ObservableObject {
    @ Published var items : [Inventory]
    
    init(items: [Inventory] = []) {
        self.items = items
    }
}

let testStore = InventoryStore(items: testData)

