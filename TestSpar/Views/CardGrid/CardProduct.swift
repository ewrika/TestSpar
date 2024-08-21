import SwiftUI

struct CardProduct: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 168, height: 168)
                    .background(
                        Image("cheese_lamber")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 168, height: 168)
                            .clipped())
                
                // Верхний левый элемент
                HStack {
                    Text("Удар по ценам")
                        .font(.Regular12)
                        .padding(.leading, 12)
                        .padding(.trailing, 6)
                        .padding(.top, 2)
                        .padding(.bottom, 4)
                        .background(Color.HitByPrice)
                        .foregroundColor(.white)
                        .cornerRadius(6)
                    
                    Spacer()
                }
                
                // Верхний правый элемент
                VStack {
                    HStack {
                        Spacer()
                        
                        Capsule()
                            .fill(Color.white.opacity(0.6))
                            .frame(width: 40, height: 80)
                            .overlay(
                                VStack {
                                    Button(action: {
                                        //
                                    }) {
                                        Image("list")
                                            .frame(width: 16, height: 16)
                                            .foregroundColor(.gray)
                                    }
                                    .padding(.top, 8)
                                    
                                    Button(action: {
                                        //
                                    }) {
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
            
            VStack(alignment: .leading) {
                //левый нижний элемент
                HStack() {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.Regular12)
                        .frame(width: 16, height: 16)
                    Text("4.1")
                        .font(.Regular12)
                        .foregroundColor(.black)
                    
                    Spacer()
                    //Правый нижний элемент
                    Text("25%")
                        .font(.ProBold16)
                        .foregroundColor(.Sale)
                }

                Text("сыр Ламбер 500/0 230г")
                    .font(.Regular12)
                    .foregroundColor(.Price)
                
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("99.90")
                                .font(.ProBold20)
                            Image("PerAmountIcon")
                                .frame(width: 20, height: 20)
                        }
                        
                        Text("199,0")
                            .font(.Regular12)
                            .foregroundColor(.GrayPrice)
                            .strikethrough()
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
            .padding(.horizontal, 14)
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
