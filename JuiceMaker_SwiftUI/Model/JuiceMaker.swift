//
//  JuiceMaker.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/26.
//

import SwiftUI

struct JuiceMaker {
    @EnvironmentObject var fruitStore: FruitStore
    
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
                try fruitStore.subtractFruits(fruitName: .strawberry, count: 16)
            case .bananJuice:
                try fruitStore.subtractFruits(fruitName: .banana, count: 2)
            case .kiwiJuice:
                try fruitStore.subtractFruits(fruitName: .kiwi, count: 3)
            case .pineappleJuice:
                try fruitStore.subtractFruits(fruitName: .pineapple, count: 2)
            case .ddalBaJuice:
                try fruitStore.subtractFruits(fruitName: .strawberry, count: 10)
                try fruitStore.subtractFruits(fruitName: .banana, count: 1)
            case .mangoJuice:
                try fruitStore.subtractFruits(fruitName: .mango, count: 3)
            case .mangKiJuice:
                try fruitStore.subtractFruits(fruitName: .mango, count: 2)
                try fruitStore.subtractFruits(fruitName: .kiwi, count: 1)
            }
        } catch(let error) {
            throw error
        }
    }
}
