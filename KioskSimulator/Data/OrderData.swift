//
//  OrderData.swift
//  KioskSimulator
//
//  Created by 김정현 on 2022/07/26.
//

import Foundation

struct OrderData {
    var menu_image: String!
    var menu: String!
    var amount: Int!
    var price: String!
    var option: String!
    
    init(_ menu_image: String, _ menu: String, _ amount: Int, _ price: String, _ option: String) { // 초기화
        self.menu_image = menu_image
        self.menu = menu
        self.amount = amount
        self.price = price
        self.option = option
    }
}

var orderList: [OrderData] = [
    OrderData("coffee_01", "아메리카노", 1, "2500", "더 달게") //dummy
]
