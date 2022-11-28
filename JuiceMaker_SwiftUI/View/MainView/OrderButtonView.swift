//
//  OrderButtonView.swift
//  JuiceMaker_SwiftUI
//
//  Created by 최최성균 on 2022/11/28.
//

import SwiftUI

struct OrderButtonView: View {
    @EnvironmentObject var juiceMaker: JuiceMaker
    private let topButtonJuices: [Juice] = [.ddalBaJuice, .mangKiJuice]
    private let bottomButtonJuices: [Juice] = [.strawberryJuice, .bananJuice, .pineappleJuice, .kiwiJuice, .mangoJuice]
    
    var body: some View {
        VStack {
            HStack(spacing: hasNoch ? 130 : 230) {
                ForEach(topButtonJuices, id: \.self) { juice in
                    Button {
                        do {
                            try juiceMaker.makeJuice(juice: juice)
                        } catch {
                            print("error alert")
                        }
                    } label: {
                        Text("\(juice.name) 주문")
                            .font(.title3).bold()
                            .foregroundColor(.white)
                            .frame(width: hasNoch ? 300 : 200, height: 60)
                            .background(Color.init(UIColor.systemBlue))
                    }
                }
            }
            
            HStack {
                HStack(spacing: hasNoch ? 20 : 20) {
                    ForEach(bottomButtonJuices, id: \.self) { juice in
                        Button {
                            do {
                                try juiceMaker.makeJuice(juice: juice)
                            } catch {
                                print("error alert")
                            }
                        } label: {
                            Text("\(juice.name)\n 주문")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: hasNoch ? 130 : 110, height: 60)
                                .background(Color.init(UIColor.systemBlue))
                        }
                    }
                }
            }
        }
    }
}


struct OrderButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OrderButtonView()
    }
}
