//
//  CartContentView.swift
//  Shoe Dog
//
//  Created by Xiaochun Shen on 2021/5/10.
//

import SwiftUI

struct CartContentView: View {
    var body: some View {
        Form {
            Section {
                HStack {
                    Image(systemName: "person.circle")
                        .foregroundColor(.gray)
                        .font(Font.system(size: 54, weight: .ultraLight))
                    Text("Add Customer")
                        .font(Font.system(size: 18, weight: .medium))
                    Spacer()
                    Image(systemName: "plus.circle")
                    
                    
                }
            }
            .frame(height: 58)
            
            Section {
                ForEach(0..<3) { _ in
                    CartItemView()
                    
                }
            }
            .frame(height: 80)
            
            
            Section {
                HStack {
                    HStack(spacing: 10) {
                        Text("Subtotal: ")
                            .foregroundColor(.gray)
                            .font(Font.system(size: 18, weight: .medium))
                    }
                    Spacer()
                    Text("$999.99")
                        .font(Font.system(size: 36, weight: .bold))
                        .foregroundColor(.blue)
                }
                // shipping cost
                HStack {
                    Text("Add shipping")
                        .font(Font.system(size: 18, weight: .medium))
                        .foregroundColor(.gray)
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "plus.circle")
                            .foregroundColor(.gray)
                    }.buttonStyle(PlainButtonStyle())
                }
                
                VStack(alignment: .leading) {
                    Spacer()
                    HStack {
                        HStack {
                            Text("FL State Tax:")
                                .foregroundColor(.gray)
                                .font(Font.system(size: 18, weight: .medium))
                            Text("(6%)")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Text("$0.00")
                        
                    }
                    Spacer()
                    HStack {
                        Text("Country Tax:")
                            .foregroundColor(.gray)
                            .font(Font.system(size: 18, weight: .medium))
                        Text("(6%)")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }.frame(height: 80)
            }
            
        }
    }
}

struct CartContentView_Previews: PreviewProvider {
    static var previews: some View {
        CartContentView()
    }
}
