//
//  ProductPicker.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct ProductPicker: View {
    @Binding var chosenPiece: String
    let product: Product
    var piece = ["Шт","Кг"]
    
    var body: some View {
        VStack{
            if product.Choose {
                Picker("Кг/Штука", selection: $chosenPiece) {
                    ForEach(piece, id: \.self) { Text($0) }
                }
                .pickerStyle(.segmented)
            }
        }
    }
}

#Preview {
    ProductPicker(chosenPiece: .constant("Шт"), product:mockProducts[3])
}
