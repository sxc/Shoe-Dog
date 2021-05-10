//
//  StepperView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/10.
//

import SwiftUI

struct StepperView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(6)
                .frame(height: 34)
            
            HStack {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "minus")
                            .font(Font.system(size: 24, weight: .medium))
                            .foregroundColor(.blue)
                        
                    }
                    .frame(width: 50, height: 34)
                }
                Spacer()
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "plus")
                            .font(Font.system(size: 24, weight: .medium))
                            .foregroundColor(.blue)
                        
                    }
                    .frame(width: 50, height: 34)
                }
            }
            .frame(height: 34)
            .background(Color.gray)
            .cornerRadius(6)
            
            Text("1")
                .font(Font.system(size: 27, weight: .bold))
                .foregroundColor(.blue)
            
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
