//
//  TopBarView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct TopBarView: View {
    @Binding var showingGrid: Bool

    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    showingGrid.toggle()
                }) {
                    Text(showingGrid ? Image(systemName: "square.grid.2x2") : Image(systemName: "list.bullet"))
                        .padding()
                        .background(Color.GridListButton)
                        .foregroundColor(.LightGreen)
                        .cornerRadius(10)
                }.padding(.horizontal,20)
                
                Spacer()
            }
            Divider()
        }
    }
}

#Preview {
    TopBarView(showingGrid: .constant(false))
}
