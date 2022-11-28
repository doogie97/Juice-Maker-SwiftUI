//
//  FruitsView.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/28.
//

import SwiftUI

struct FruitsView: View {
    @EnvironmentObject var juiceMaker: JuiceMaker
    private let rows = [GridItem(.flexible())]
    
    var body: some View {
        LazyHGrid(rows: rows, spacing: 30) {
            ForEach(juiceMaker.fruitArray) { fruit in
                VStack {
                    Text(fruit.fruitImage)
                        .font(.system(size: hasNoch ? 100 : 80))
                    
                    Text(fruit.count.description)
                        .font(.system(size: 30))
                        .padding(.horizontal, hasNoch ? 45 : 35)
                        .background(Color.init(UIColor.systemGray5))
                }
            }
        }
    }
}


struct FruitsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsView()
            .environmentObject(JuiceMaker(fruits: FruitsArrayForApp))
    }
}
