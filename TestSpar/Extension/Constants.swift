//
//  Constants.swift
//  TestSpar
//
//  Created by Георгий Борисов on 21.08.2024.
//

import Foundation
import SwiftUI

extension Color {
    static let LightGreen: Color = Color(red: 0.08, green: 0.72, blue: 0.26)
    static let HitByPrice: Color = Color(red: 0.99, green: 0.42, blue: 0.44).opacity(0.9)
    static let NewItem: Color = Color(red: 0.48, green: 0.47, blue: 0.73).opacity(0.9)
    static let PriceByCart : Color = Color(red: 0.36, green: 0.8, blue: 0.48).opacity(0.9)
    static let GrayPrice: Color = Color(red: 0.15, green: 0.15, blue: 0.15).opacity(0.6)
    static let Price: Color = Color(red: 0.15, green: 0.15, blue: 0.15).opacity(0.8)


}

extension Font {
    static let Regular : Font = Font.custom("SF-Pro-Display-Regular", size: 12)
    static let Bold : Font = Font.custom("SF-Pro-Display-Bold", size: 16)
    static let ProBold : Font = Font.custom("TypeMates - CeraRoundPro-Bold", size: 20)

}

