//
//  CartTotalView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/8.
//

import SwiftUI

struct CartTotalView: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
                    .frame(height: 70)
                
                HStack {
                    Text("Total:")
                        .foregroundColor(.white)
                        .font(Font.system(size: 28, weight: .semibold))
                    Spacer()
                    Text("$9999.99")
                        .foregroundColor(.white)
                        .font(Font.system(size: 47, weight: .bold))
                }
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
        .frame(height: 93)
        .background(Color.clear)
    }
}

struct CartTotalView_Previews: PreviewProvider {
    static var previews: some View {
        CartTotalView()
    }
}
