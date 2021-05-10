//
//  CartView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/8.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack {
            CartHeaderView()
            CartContentView()
            Spacer()
            CartTotalView()
        }
        .background(Color.white)
        .frame(width: 417)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
