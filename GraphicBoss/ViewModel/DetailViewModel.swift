//
//  DetailViewModel.swift
//  GraphicBoss
//
//  Created by Joseph  DeWeese on 1/6/23.
//

import SwiftUI
import Foundation

class DetailViewModel: ObservableObject {
  
    @Published var selectedItem = TodayItem(title: "", category: "", overlay: "", contentImage: "", logo: "")
    
    @Published var show = false
    
}

