//
//  ProductCustomButton.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct ProductCustomButton: View {
    let product: Product

    var body: some View {
        VStack{
            if product.Variable{
                HStack(alignment:.center) {
                    Button(action: {
                        // Decrease action
                    }) {
                        Image(systemName: "minus")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        
                        Text("\(String(format: "%.1f", product.weight)) кг")
                            .font(.ProBold16)
                            .foregroundColor(.white)
                        
                        Text("\(String(format:"%.2f",product.price)) ₽")
                            .font(.ProBold12)
                            .foregroundColor(.white)
                        
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Increase action
                    }) {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, minHeight: 36, maxHeight: 36)
                .background(Color.green)
                .cornerRadius(40)
                .padding([.bottom, .top], 5)
                
            }
            
            
            if !product.Variable{
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("\(product.price, specifier: "%.1f")")
                                .font(.ProBold20)
                            Image("PerAmountIcon")
                        }
                        
                        if let oldPrice = product.oldPrice {
                            Text("\(oldPrice, specifier: "%.2f")")
                                .font(.Regular12)
                                .foregroundColor(.GrayPrice)
                                .strikethrough()
                        }
                    }
                    
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.green)
                            .frame(width: 48, alignment: .center)
                            .frame(height: 36, alignment: .center)
                            .cornerRadius(40)
                        
                        Image("Cart")
                            .frame(width: 16, height: 16)
                    }
                }
            }
        }
    }
}

#Preview {
    ProductCustomButton(product: mockProducts[1])
}
