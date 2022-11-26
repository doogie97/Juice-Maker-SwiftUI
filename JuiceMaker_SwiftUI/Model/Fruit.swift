//
//  Fruit.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/26.
//

import Foundation

struct Fruit: Identifiable {
    let id = UUID()
    var count: Int
}

enum FruitName: String {
    case strawberry
    case banana
    case pineapple
    case kiwi
    case mango
}
