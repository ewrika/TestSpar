//
//  DiscountView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct DiscountView: View {
    let product: Product

    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                if let discountPercentage = product.discountPercentage {
                    Text("\(Int(discountPercentage))%")
                        .font(.ProBold16)
                        .foregroundColor(.Sale)
                }
            }.padding(.leading, 10)
        }
    }
}

#Preview {
    DiscountView(product: mockProducts[3])
}
