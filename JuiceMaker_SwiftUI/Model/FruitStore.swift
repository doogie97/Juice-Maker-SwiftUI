//
//  FruitStore.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/26.
//

import Foundation

final class FruitStore: ObservableObject {
    @Published var fruits: [FruitName : Fruit]
    
    init(fruits: [FruitName : Fruit]) {
        self.fruits = fruits
    }
    
    func addFruits(fruitName: FruitName, count: Int) {
        fruits[fruitName]?.count += count
    }
    
    func subtractFruits(_ quantity: [FruitName : Int]) throws {
        do {
            try checkStock(quantity)
        } catch(let error) {
            throw error
        }
        
        for (fruit, count) in quantity {
            fruits[fruit]?.count -= count
        }
    }
    
    private func checkStock(_ quantity: [FruitName : Int]) throws {
        for (fruitName, count) in quantity {
            if fruits[fruitName]?.count ?? 0 < count {
                switch fruitName {
                case .strawberry:
                    throw OutOfStockError.strawberry
                case .banana:
                    throw OutOfStockError.banana
                case .pineapple:
                    throw OutOfStockError.pineapple
                case .kiwi:
                    throw OutOfStockError.kiwi
                case .mango:
                    throw OutOfStockError.mango
                }
            }
        }
    }
}
