//
//  MainView.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/28.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var juiceMaker: JuiceMaker
    
    var body: some View {
        VStack {
            FruitsView()
            OrderButtonView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(JuiceMaker(fruits: FruitsArrayForApp))
    }
}

extension View {
    var hasNoch: Bool {
        UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0 > 0
    }
}
