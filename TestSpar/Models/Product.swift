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
    let weight: Double
    let unit: String
    let isDiscounted: Bool
    let discountPercentage: Double?
    let additionalInformation: String?
    let reviewCount: Int
    let countryOfOrigin: String?
    let Variable : Bool
    let Choose: Bool
}



let mockProducts: [Product] = [
    Product(name: "сыр Ламбер 500/0 230г", imageName: "cheese_lamber", rating: 4.1, price: 99.90, oldPrice: 199.0, weight: 230, unit: "г", isDiscounted: false, discountPercentage: nil, additionalInformation: "Удар по ценам", reviewCount: 50, countryOfOrigin: nil, Variable: false, Choose: false),
    Product(name: "Энергетический Напит", imageName: "energy_drink", rating: 4.1, price: 95.90, oldPrice: 199.0, weight: 1, unit: "л", isDiscounted: false, discountPercentage: nil, additionalInformation: nil, reviewCount: 30, countryOfOrigin: nil, Variable: false, Choose: false),
    Product(name: "Салат Овощной с Крабовыми Палочками", imageName: "salad_crab", rating: 4.1, price: 250.90, oldPrice: 199.0, weight: 500, unit: "г", isDiscounted: false, discountPercentage: nil, additionalInformation: nil, reviewCount: 75, countryOfOrigin: nil, Variable: false, Choose: false),
    Product(name: "Дорадо Охлажденная Непотрошенная", imageName: "dorada", rating: 4.1, price: 5.92, oldPrice: nil, weight: 0.1, unit: "кг", isDiscounted: true, discountPercentage: 25, additionalInformation: nil, reviewCount: 100, countryOfOrigin: nil, Variable: true, Choose: true),
    Product(name: "Ролл Маленькая Япония 216г", imageName: "kolbaski", rating: 4.1, price: 367.90, oldPrice: 199.0, weight: 216, unit: "г", isDiscounted: false, discountPercentage: nil, additionalInformation: "Новинки", reviewCount: 25, countryOfOrigin: nil, Variable: false, Choose: false),
    Product(name: "Огурцы тепличные cадово-огородные", imageName: "cucumbers", rating: 4.1, price: 5.92, oldPrice: nil, weight: 0.1, unit: "кг", isDiscounted: false, discountPercentage: nil, additionalInformation: "Цена по карте", reviewCount: 20, countryOfOrigin: "Франция 🇫🇷", Variable: true, Choose: false),
    Product(name: "Манго Кео", imageName: "mango_keo", rating: 4.1, price: 1298.90, oldPrice: 1990.0, weight: 1, unit: "кг", isDiscounted: true, discountPercentage: 25, additionalInformation: nil, reviewCount: 10, countryOfOrigin: nil, Variable: false, Choose: false),
    Product(name: "Салат Овощной с Крабовыми Палочками", imageName: "salad_crab2", rating: 4.1, price: 120.90, oldPrice: 199.0, weight: 0.5, unit: "кг", isDiscounted: false, discountPercentage: nil, additionalInformation: nil, reviewCount: 20, countryOfOrigin: nil, Variable: false, Choose: false),
    Product(name: "Масло Слобода Рафинированное 1,8л", imageName: "oil_sloboda", rating: 4.1, price: 129.90, oldPrice: nil, weight: 1.8, unit: "л", isDiscounted: false, discountPercentage: nil, additionalInformation: "Удар по ценам", reviewCount: 15, countryOfOrigin: nil, Variable: false, Choose: false),
    Product(name: "Макаронные Изделия SPAR Спагетти 450г", imageName: "pasta_spar", rating: 4.1, price: 2600.90, oldPrice: 199.0, weight: 0.45, unit: "кг", isDiscounted: false, discountPercentage: nil, additionalInformation: "Новинки", reviewCount: 5, countryOfOrigin: nil, Variable: false, Choose: false)
]

