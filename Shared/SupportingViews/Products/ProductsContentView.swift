//
//  ProductsContentView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/10.
//

import SwiftUI

struct ProductsContentView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 200), spacing: 10)], spacing: 34) {
                ForEach(0..<20) { _ in
                    ProductView()
                }
            }.padding(.top, 20)
            .padding(.horizontal, 10)
        }
    }
}

struct ProductsContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsContentView()
    }
}
