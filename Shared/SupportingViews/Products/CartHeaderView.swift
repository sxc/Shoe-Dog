//
//  CartHeaderView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/8.
//

import SwiftUI

struct CartHeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("CART (0)")
                .font(Font.system(size: 24, weight: .semibold))
            Spacer()
            Image(systemName: "trash")
                .font(Font.system(size: 24, weight: .thin))
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                .frame(height: 60)
                .background(Color.white)
                .border(Color.gray, width: 1)
                .offset(x: -1)
           
            
        }
    }
}

struct CartHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CartHeaderView()
    }
}
