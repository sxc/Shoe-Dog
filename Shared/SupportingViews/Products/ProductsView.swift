//
//  ProductsView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/8.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        VStack {
            ProductsHeaderView()
            ProductsContentView()
            Spacer()
        }.background(Color.gray)
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
