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
    
    func makeJuice(juice: Juice) {
        switch juice {
        case .strawberryJuice:
            fruitStore.subtractFruits(fruitName: .strawberry, count: 16)
        case .bananJuice:
            fruitStore.subtractFruits(fruitName: .banana, count: 2)
        case .kiwiJuice:
            fruitStore.subtractFruits(fruitName: .kiwi, count: 3)
        case .pineappleJuice:
            fruitStore.subtractFruits(fruitName: .pineapple, count: 2)
        case .ddalBaJuice:
            fruitStore.subtractFruits(fruitName: .strawberry, count: 10)
            fruitStore.subtractFruits(fruitName: .banana, count: 1)
        case .mangoJuice:
            fruitStore.subtractFruits(fruitName: .mango, count: 3)
        case .mangKiJuice:
            fruitStore.subtractFruits(fruitName: .mango, count: 2)
            fruitStore.subtractFruits(fruitName: .kiwi, count: 1)
        }
    }
}
