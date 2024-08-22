//
//  productInformationView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct productInformationView: View {
    let product: Product

    var body: some View {
        Group {
            if let additionalInformation = product.additionalInformation {
                HStack {
                    Text(additionalInformation)
                        .font(.Regular12)
                        .padding(.all, 4)
                        .background(informationColor(info: additionalInformation))
                        .foregroundColor(.white)
                        .cornerRadius(6)
                    Spacer()
                }
                .padding(.leading, 12)
            }
        }
    }
}

#Preview {
    productInformationView(product: mockProducts[0])
}
