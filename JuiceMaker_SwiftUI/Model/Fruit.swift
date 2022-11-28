//
//  Fruit.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/26.
//

import SwiftUI

final class Fruit: Identifiable, ObservableObject {
    let id: Int
    let fruitImage: String
    @Published var count: Int
    
    init(id: Int, fruitImage: String, count: Int) {
        self.id = id
        self.fruitImage = fruitImage
        self.count = count
    }
}

enum FruitName: String {
    case strawberry
    case banana
    case pineapple
    case kiwi
    case mango
}
