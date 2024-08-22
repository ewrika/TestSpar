//
//  ContentView.swift
//  TestSpar
//
//  Created by Георгий Борисов on 21.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = true

    var body: some View {
        VStack {
            TopBarView(showingGrid: $showingGrid)
            if showingGrid {
                VertView()
            } else {
                ListView()
            }
        }
        .animation(.easeIn)
    }
}

#Preview {
    ContentView()
}
