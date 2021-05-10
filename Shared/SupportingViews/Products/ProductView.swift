//
//  ProductView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/8.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .foregroundColor(.white)
                .frame(minWidth: 200)
                .frame(height: 110)
                .cornerRadius(10)
            VStack(spacing: 0) {
                Image("shoe-1")
                    .resizable()
                    .frame(width: 188, height: 100)
                VStack(spacing: -8) {
                    Text("Nike Fury")
                        .font(Font.system(size: 18, weight: .semibold))
                    Text("$125.00")
                        .foregroundColor(.blue)
                        .font(Font.system(size: 29, weight: .bold))
                }
            }
            .frame(height: 100)
            .padding(.bottom, 25)
            .padding(.horizontal, 5)
            .background(Color.clear)
            
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
