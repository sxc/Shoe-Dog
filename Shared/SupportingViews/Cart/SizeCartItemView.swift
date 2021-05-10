//
//  SizeCartItemView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/10.
//

import SwiftUI

struct SizeCartItemView: View {
    var body: some View {
        VStack {
            VStack(spacing: 0) { // (1)
                HStack {
                    HStack(spacing: -6) { // (2)
                        Text("SIZE")
                            .rotationEffect(.degrees(-90))
                            .font(Font.system(size: 18, weight: .semibold))
                        Text("13.0")
                            .font(Font.system(size: 42, weight: .bold))
                        
                    }.offset(x: -5)
                    Spacer() // (3)
                    VStack(spacing: -8) { // (4)
                        Text("99")
                            .font(Font.system(size: 27, weight: .bold))
                            .foregroundColor(.blue)
                        
                        Text("QTY")
                            .font(Font.system(size: 12, weight: .semibold))
                        
                    }
                    
                }
                ShoePOSButton(title: "ADD TO CART") //(5)
                    .opacity(0.3)
                Spacer()
                
            }
        }
        .frame(height: 100)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct SizeCartItemView_Previews: PreviewProvider {
    static var previews: some View {
        SizeCartItemView()
    }
}
