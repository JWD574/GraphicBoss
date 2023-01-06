//
//  TodayItem.swift
//  GraphicBoss
//
//  Created by Joseph  DeWeese on 1/5/23.
//

import Foundation
import SwiftUI


struct TodayItem: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var category: String
    var overlay: String
    var contentImage: String
    var logo: String
    
}

var items = [
    TodayItem(title: "Eat me", category: "Fantasy Graphics", overlay: "GRAPHICS OF THE DAY", contentImage: "pic4", logo: <#T##String#>)
]
