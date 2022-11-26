//
//  OutOfStockError.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/26.
//

enum OutOfStockError: String, Error {
    case strawberry = "딸기"
    case banana = "바나나"
    case pineapple = "파인애플"
    case kiwi = "키위"
    case mango = "망고"
    
    var errorMessage: String {
        return "\(self) 수량이 부족합니다."
    }
}
