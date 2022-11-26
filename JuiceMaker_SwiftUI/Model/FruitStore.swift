//
//  FruitStore.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/26.
//

import Foundation

final class FruitStore: ObservableObject {
    @Published var fruits: [FruitName : Fruit]
    
    func addFruits(fruitName: FruitName, count: Int) {
        fruits[fruitName]?.count += count
    }
    
    func subtractFruits(fruitName: FruitName, count: Int) {
        fruits[fruitName]?.count -= count
    }
    
    init(fruits: [FruitName : Fruit]) {
        self.fruits = fruits
    }
}
