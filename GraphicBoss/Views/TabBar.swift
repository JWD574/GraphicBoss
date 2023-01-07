//
//  TabBar.swift
//  GraphicBoss
//
//  Created by Joseph  DeWeese on 1/5/23.
//

import SwiftUI

struct TabBar: View {
    //MARK:  PROPERTIES
    @Namespace var animation
    @StateObject var detailObject = DetailViewModel()
    
    var body: some View {
        
        ZStack {
            //MARK:  TAB VIEW
            TabView {
                
                Today(animation: animation )
                    .environmentObject(detailObject)
                
                
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
            //DETAIL OBJECT hiding tab bar when when detail opens
            
            .opacity(detailObject.show ? 0 : 1)
            
            if detailObject.show {
                
                Detail(detail: detailObject, animation: animation)
            }
        }
    }
}
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
