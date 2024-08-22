//
//  CardProductList.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct CardProductList: View {
    let product: Product
    @State private var ChoosenPiece = "Кг"

    var body: some View {
    
        VStack{
            
            HStack {
                ZStack() {
                    ProductImageView(product: product)
                        .frame(width: 144, height: 144)
                    productInformationView(product: product)
                    DiscountView(product: product)
                }
                
                VStack(alignment:.leading){
                    
                    Spacer()
                    HStack{
                    VStack(alignment:.leading){
                        
                        
                        
                        HStack(){
                            ratingView(product: product)
                            
                            Text("| \(product.reviewCount) Отзывов")
                                .offset(y:5)
                                .foregroundStyle(Color.GrayPrice)
                            Spacer()
                        }.font(.ProBold12)
                        
                            .frame(width: 200,height: 25)
                        VStack(alignment: .leading, spacing: 4) {
                            Text(product.name)
                                .font(.Regular12)
                                .foregroundColor(.Price)
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                            
                            if let countryFrom = product.countryOfOrigin {
                                Text(countryFrom)
                                    .font(.Regular12)
                                    .foregroundColor(.Price)
                                
                            }
                            
                        }
                        
                    }
                        
                        sideOverlayControls()
                            .frame(width: 30,height: 50)
                            .offset(x:-70)

                    
                }
                    
                        ProductPicker(chosenPiece: $ChoosenPiece, product: product)
                            
                        
                        ProductCustomButton(product: product)
                        
                    
                    
                    Spacer()
                    
                    
                }
            }

        }   .padding(.leading, 16)
            .padding(.trailing, 8)
            .padding(.vertical, 16)
            .frame(width: 375, alignment: .topLeading)
        
            
            
    }
}

#Preview {
    CardProductList(product: mockProducts[3])
}
