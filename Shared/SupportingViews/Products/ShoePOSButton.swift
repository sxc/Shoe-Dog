//
//  ShoePOSButton.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/10.
//

import SwiftUI

struct ShoePOSButton: View {
    let title: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
                .cornerRadius(6)
                .frame(height: 34)
            Text(title)
                .font(Font.system(size: 24, weight: .bold))
                .foregroundColor(.white)
            
        }
    }
}

struct ShoePOSButton_Previews: PreviewProvider {
    static var previews: some View {
        ShoePOSButton(title: "ADD TO CART")
    }
}
