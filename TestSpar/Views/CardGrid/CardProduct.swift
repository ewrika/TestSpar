import SwiftUI

struct CardProduct: View {
    let product: Product
    @State private var ChoosenPiece = "Кг"
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack{
                
                ProductImageView(product: product)
                productInformationView(product: product)
                HStack{
                    ratingView(product: product)
                    Spacer()
                    DiscountView(product: product)
                }
                sideOverlayControls()

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
                
                ProductPicker(chosenPiece: $ChoosenPiece, product: product)
                
                ProductCustomButton(product: product)
                
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
