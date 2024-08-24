//
//  ListView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                ForEach(mockProducts, id: \.id) { product in
                    Divider()
                    CardProductList(product: product)
                }
            }
        }
    }
}

#Preview {
    ListView()
}
