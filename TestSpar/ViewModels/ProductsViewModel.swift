//
//  ProductsViewModel.swift
//  TestSpar
//
//  Created by Георгий Борисов on 22.08.2024.
//

import Foundation
import SwiftUI

func informationColor(info: String) -> Color {
    switch info {
    case "Удар по ценам":
        return Color.HitByPrice
    case "Новинки":
        return Color.NewItem
    case "Цена по карте":
        return Color.PriceByCart
    default:
        return Color.gray 
    }
}
