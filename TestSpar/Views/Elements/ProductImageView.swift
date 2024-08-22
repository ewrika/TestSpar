//
//  ProductImageView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct ProductImageView: View {
    let product: Product
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    Image(product.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                )
            productInformationView(product: product)
            ratingAndDiscountView(product: product)
            sideOverlayControls()
        }
    }
}
#Preview {
    ProductImageView(product: mockProducts[3])
}
