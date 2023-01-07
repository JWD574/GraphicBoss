//
//  Today.swift
//  GraphicBoss
//
//  Created by Joseph  DeWeese on 1/5/23.
//

import SwiftUI

struct Today: View {
    //MARK:  PROPERTIES
    var animation: Namespace.ID
    @EnvironmentObject var detail : DetailViewModel
    
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                HStack(alignment: .bottom) {
                    
                    
                    VStack ( alignment: .leading, spacing: 5) {
                        
                        Text("SATURDAY 5 JANUARY")
                            .foregroundColor(.gray)
                        
                        Text("Today")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    
                    Spacer( )
                    
                    Button(action: { }) {
                        
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                    }
                }
                .padding( )
                
                ForEach(items) { item in
                    
                    
                    
                
                
                //MARK:  CARD VIEW
                
                    
                    TodayCardView(item: item, animation: animation)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                
                                detail.selectedItem = item
                                detail.show.toggle( )
                            }
                        }
                    
            }
            }
            .padding(.bottom)
        }
        //nice black background -not glossy when in dark mode
        .background(Color.primary.opacity(0.06).ignoresSafeArea( ))
    }
}
// MARK:  HERO ANIMATIONS


