//
//  VertView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct VertView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false){
            LazyVGrid(columns:columns,spacing: 20){
                ForEach(mockProducts){ product in
                    VStack{
                        CardProduct(product: product)
                    }
                }
            }.padding(.horizontal,20)
        }
    }
}

#Preview {
    VertView()
}
