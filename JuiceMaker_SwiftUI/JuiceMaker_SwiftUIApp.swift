//
//  JuiceMaker_SwiftUIApp.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/26.
//

import SwiftUI

@main
struct JuiceMaker_SwiftUIApp: App {
    @StateObject var juiceMaker = JuiceMaker(fruits: FruitsArrayForApp)
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(juiceMaker)
        }
    }
}
