//
//  CartItemView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/10.
//

import SwiftUI

struct CartItemView: View {
    var body: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading) {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                    Image("shoe-1")
                        .resizable()
                        .frame(width: 107, height: 57)
                    ZStack {
                        Rectangle()
                            .fill(Color.blue)
                    }
                    .frame(width: 40, height: 30)
//                    .cornerRadius(5, corners: [.topRight, .bottomRight])
                    .cornerRadius(5)
                    Text("99")
                        .font(Font.system(size: 26, weight: .bold))
                        .foregroundColor(.white)
                        .offset(y: 2)
            }
                .offset(x: -10, y: -5)
            
        }
            .padding(.leading, 10)
            Text("PRODUCT NAME GOES HERE")
                .font(Font.system(size: 16, weight: .semibold))
                .padding(.leading)
        Spacer()
        
            //
            VStack(alignment: .trailing, spacing: 0) {
                Text("$999.99")
                    .font(Font.system(size: 36, weight: .bold))
                foregroundColor(.blue)
                    .offset(y: 5)
                Spacer()
                Text("SIZE: 13.5")
                    .font(Font.system(size: 23, weight: .bold))
                
            }
            .padding(.trailing, 10)
            
    }.offset(x: 0)
}
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView().previewLayout(.fixed(width: 375, height: 100))
    }
}
