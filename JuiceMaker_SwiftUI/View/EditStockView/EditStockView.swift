//
//  EditStockView.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/28.
//

import SwiftUI

struct EditStockView: View {
    @EnvironmentObject var juiceMaker: JuiceMaker
    var body: some View {
        FruitsView()
    }
}

struct EditStockView_Previews: PreviewProvider {
    static var previews: some View {
        EditStockView()
            .environmentObject(JuiceMaker(fruits: FruitsArrayForApp))
    }
}
