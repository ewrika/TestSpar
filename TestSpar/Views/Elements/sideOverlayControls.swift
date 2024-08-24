//
//  sideOverlayControls.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import SwiftUI

struct sideOverlayControls: View {

    var body: some View {
         VStack {
             HStack {
                 Spacer()
                 Capsule()
                     .fill(Color.white.opacity(0.6))
                     .frame(width: 40, height: 80)
                     .overlay(
                         VStack {
                             Button(action: {
                                 
                             }) {
                                 Image("list")
                                     .frame(width: 16, height: 16)
                                     .foregroundColor(.gray)
                             }
                             .padding(.top, 8)

                             Button(action: {
                             }) {
                                 Image(systemName: "heart")
                                     .font(.system(size: 16))
                                     .foregroundColor(.LightGreen)
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
 }


