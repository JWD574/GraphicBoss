//
//  Today.swift
//  GraphicBoss
//
//  Created by Joseph  DeWeese on 1/5/23.
//

import SwiftUI

struct Today: View {
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
            }
        }
        //nice black background -not glossy when in dark mode
        .background(Color.primary.opacity(0.06).ignoresSafeArea( ))
    }
}

struct Today_Previews: PreviewProvider {
    static var previews: some View {
        Today()
    }
}
