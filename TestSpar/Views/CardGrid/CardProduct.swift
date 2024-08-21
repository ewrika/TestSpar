import SwiftUI

struct CardProduct: View {
    let product: Product
    @State private var ChoosenPiece = "Кг"
    var piece = ["Шт","Кг"]
    
    

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .foregroundColor(.clear)
                    .background(
                        Image(product.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipped()
                    )

                if let additionalInformation = product.additionalInformation {
                    HStack {
                        Text(additionalInformation)
                            .font(.Regular12)
                            .padding(.leading, 12)
                            .padding(.trailing, 6)
                            .padding(.top, 2)
                            .padding(.bottom, 4)
                            .background(informationColor(info: additionalInformation))
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        
                        Spacer()
                    }
                }
                
                VStack() {
                    Spacer()
                    HStack(spacing:1) {
                        
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

                VStack {
                    HStack {
                        Spacer()
                        Capsule()
                            .fill(Color.white.opacity(0.6))
                            .frame(width: 40, height: 80)
                            .overlay(
                                VStack {
                                    Button(action: {}) {
                                        Image("list")
                                            .frame(width: 16, height: 16)
                                            .foregroundColor(.gray)
                                    }
                                    .padding(.top, 8)
                                    
                                    Button(action: {}) {
                                        Image(systemName: "heart")
                                            .font(.system(size: 16))
                                            .foregroundColor(.gray)
                                    }
                                    .padding(.top, 8)
                                }
                            )
                    }
                    .padding(.trailing, 0)
                    .padding(.top, 0)
                    
                    Spacer()
                }
            }
            
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
                
                Spacer()
                
                if product.Choose{
                    Picker("Кг/Штука",selection: $ChoosenPiece){
                        ForEach(piece,id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                }
                
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
            .padding(.horizontal, 14)
            .padding(.top, 8)
            .padding(.bottom, 4)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(.white)
        }
        .frame(width: 168, height: 278, alignment: .topLeading)
        .cornerRadius(20)
        .shadow(color: Color(red: 0.55, green: 0.55, blue: 0.55).opacity(0.2), radius: 4, x: 0, y: 0)
    }
}

#Preview {
    CardProduct(product: mockProducts[3])
}
