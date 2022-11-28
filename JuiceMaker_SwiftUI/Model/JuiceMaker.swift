//
//  JuiceMaker.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/26.
//

import SwiftUI

final class JuiceMaker: ObservableObject {
    private let fruitStore: FruitStore
    @Published var fruitArray: [Fruit] = []
    
    init(fruits: [FruitName : Fruit]) {
        self.fruitStore = FruitStore(fruits: fruits)
    }
    
    enum Juice {
        case strawberryJuice
        case bananJuice
        case kiwiJuice
        case pineappleJuice
        case ddalBaJuice
        case mangoJuice
        case mangKiJuice
    }
    
    func makeJuice(juice: Juice) throws {
        do {
            switch juice {
            case .strawberryJuice:
                try fruitStore.subtractFruits([.strawberry : 16])
            case .bananJuice:
                try fruitStore.subtractFruits([.banana : 2])
            case .kiwiJuice:
                try fruitStore.subtractFruits([.kiwi : 3])
            case .pineappleJuice:
                try fruitStore.subtractFruits([.pineapple : 2])
            case .ddalBaJuice:
                try fruitStore.subtractFruits([.strawberry : 10])
                try fruitStore.subtractFruits([.banana : 1])
            case .mangoJuice:
                try fruitStore.subtractFruits([.mango : 3])
            case .mangKiJuice:
                try fruitStore.subtractFruits([.mango : 2])
                try fruitStore.subtractFruits([.kiwi : 1])
            }
        } catch(let error) {
            throw error
        }
        
        convertFuritsToArray()
    }
    
    private func convertFuritsToArray() {
        let fruits = self.fruitStore.fruits.map { fruit in
            fruit.value
        }.sorted {$0.id > $1.id}
        
        self.fruitArray = fruits
    }
}
