//
//  TabBar.swift
//  GraphicBoss
//
//  Created by Joseph  DeWeese on 1/5/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView {
            
           Today( )
                .tabItem {
                    
                    Image(systemName: "house.circle.fill")
                        .renderingMode(.template)
                    
                    Text("Today")
                    
                }
            Text("Games")
                .tabItem {
                    
                    Image(systemName: "flag.2.crossed.fill")
                        .renderingMode(.template)
                    
                    Text("Games")
                }
            Text("Search")
                .tabItem {
                    
                    Image(systemName: "magnifyingglass")
                        .renderingMode(.template)
                    
                    Text("Search")
                }
            Text("Settings")
                .tabItem {
                    
                    Image(systemName: "gear")
                        .renderingMode(.template)
                    
                    Text("Settings")
                }
        }
    }
}
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
