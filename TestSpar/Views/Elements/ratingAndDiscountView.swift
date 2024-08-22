//
//  ratingAndDiscountView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct ratingAndDiscountView: View {
    let product: Product

    var body: some View {
        VStack {
                    Spacer()
                    HStack(spacing: 1) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.Regular12)
                            .frame(width: 16, height: 16)
                        Text("\(product.rating, specifier: "%.1f")")
                            .font(.Regular12)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        if let discountPercentage = product.discountPercentage {
                            Text("\(Int(discountPercentage))%")
                                .font(.ProBold16)
                                .foregroundColor(.Sale)
                        }
                    }
                    .padding(.leading, 10)
                }
    }
}

#Preview {
    ratingAndDiscountView(product: mockProducts[2])
}
