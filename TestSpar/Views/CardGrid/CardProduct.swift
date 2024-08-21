//
//  CardProduct.swift
//  TestSpar
//
//  Created by Георгий Борисов on 21.08.2024.
//

import SwiftUI

struct CardProduct: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 168, height: 168)
                    .background(
                        Image("cheese_lamber")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 168)
                            .clipped())
            }
            VStack(alignment: .leading, spacing: 4){
                Text("сыр Ламбер 500/0 230г")
                    .font(.Regular)
                    .foregroundColor(.Price)

                Spacer()
                
                HStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text("99.90")
                                .font(.ProBold)
                            Image("PerAmountIcon")
                              .frame(width: 20, height: 20)
                        }
                        
                        Text("199,0")
                            .font(.Regular)
                            .foregroundColor(.GrayPrice)
                            .strikethrough()
                        
                    }
                    Spacer()
                    ZStack{
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
            .padding(.horizontal,14 )
            .padding(.top, 8)
            .padding(.bottom, 4)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(.white)

        }
        .frame(width: 168, height: 278, alignment: .topLeading)
        .cornerRadius(20)
        .shadow(color: Color(red: 0.55, green: 0.55, blue: 0.55).opacity(0.2),
                radius: 4, x: 0, y: 0)
    }
}

#Preview {
    CardProduct()
}
