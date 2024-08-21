//
//  Product.swift
//  TestSpar
//
//  Created by Георгий Борисов on 21.08.2024.
//

import Foundation
import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let rating: Double
    let price: Double
    let oldPrice: Double?
    let weight: String
    let unit: String
    let isDiscounted: Bool
    let discountPercentage: Double?
    let additionalInformation: String?
    let reviewCount: Int
    let countryOfOrigin: String
}


let mockProducts: [Product] = [
    Product(name: "сыр Ламбер 500/0 230г", imageName: "cheese_lamber", rating: 4.1, price: 99.90, oldPrice: 199.0, weight: "230г", unit: "г", isDiscounted: false, discountPercentage: nil, additionalInformation: "Удар по ценам", reviewCount: 50, countryOfOrigin: "Россия"),
    Product(name: "Энергетический Напит", imageName: "energy_drink", rating: 4.1, price: 95.90, oldPrice: 199.0, weight: "1л", unit: "л", isDiscounted: false, discountPercentage: nil, additionalInformation: nil, reviewCount: 30, countryOfOrigin: "Россия"),
    Product(name: "Салат Овощной с Крабовыми Палочками", imageName: "salad_crab", rating: 4.1, price: 250.90, oldPrice: 199.0, weight: "500г", unit: "г", isDiscounted: false, discountPercentage: nil, additionalInformation: nil, reviewCount: 75, countryOfOrigin: "Россия"),
    Product(name: "Дорадо Охлажденная Непотрошенная", imageName: "dorada", rating: 4.1, price: 5.92, oldPrice: 7.90, weight: "0.1 кг", unit: "кг", isDiscounted: true, discountPercentage: 25, additionalInformation: "300-400г", reviewCount: 100, countryOfOrigin: "Греция")
    
]
