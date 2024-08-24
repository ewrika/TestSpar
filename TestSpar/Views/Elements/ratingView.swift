//
//  ratingView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct ratingView: View {
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
                        
                        
                        

                    }
                    
                }
    }
}

#Preview {
    ratingView(product: mockProducts[2])
}
