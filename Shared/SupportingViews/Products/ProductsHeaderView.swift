//
//  ProductsHeaderView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/8.
//

import SwiftUI

struct ProductsHeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("KICKZ STORE")
//                .font(.largeTitle)
                .font(Font.system(size: 30))
                .fontWeight(.heavy)
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "line.horizontal.3.decrease.circle")
                    .font(Font.system(size: 24, weight: .thin))
            }
            .buttonStyle(PlainButtonStyle())
            .foregroundColor(Color.blue)
            .padding(.trailing, 15)
        }
        .frame(height: 60)
        .background(Color.white)
        .offset(x: -1)
        .border(Color.gray, width: 1)
    }
}

struct ProductsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsHeaderView()
    }
}
