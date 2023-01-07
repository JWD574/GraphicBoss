//
//  Detail.swift
//  GraphicBoss
//
//  Created by Joseph  DeWeese on 1/6/23.
//

import SwiftUI

struct Detail: View {
//MARK:  PROPERTIES
    @ObservedObject var detail : DetailViewModel
    var animation: Namespace.ID
    
    @State var scale : CGFloat = 1
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                    Image(detail.selectedItem.contentImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: detail.selectedItem.contentImage, in: animation)
                        .frame(width:  UIScreen.main.bounds.width, height:
                                UIScreen.main.bounds.height / 2.5)
                    
                    HStack {
                        
                        Text(detail.selectedItem.overlay)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        Spacer(minLength: 0 )
                        
                        Button(action: {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)){
                                detail.show.toggle( )
                            }
                        }) {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(Color.black.opacity(0.7))
                                .padding( )
                                .background(Color.white.opacity(0.8))
                                .clipShape(Circle( ))
                        }
                    }
                    .padding( .horizontal)
                    .padding(.top, UIApplication.shared.windows.first! .safeAreaInsets.top + 10)
                }
                // Gesture for closing detail view ....
                .gesture(DragGesture(minimumDistance: 0).onChanged(onChanged(value:)).onEnded(onEnded(value: )))
                
                HStack {
                    
                    Image(detail.selectedItem.logo)
                        .resizable( )
                        .aspectRatio(contentMode: .fill)
                    //      .matchedGeometryEffect(id: item.contentImage, in: animation)
                        .frame(width: 65, height: 65)
                        .cornerRadius(15)
                    
                    VStack(alignment: .leading, spacing: 6)  {
                        
                        Text(detail.selectedItem.title)
                            .fontWeight(.bold)
                        
                        
                        Text(detail.selectedItem.category)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer(minLength: 0)
                    
                    VStack {
                        
                        Button(action: {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                
                                detail.show.toggle( )
                            }
                        }) {
                            
                            Text("GET")
                                .fontWeight(.bold)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 25)
                                .background(Color.primary.opacity(0.7))
                                .clipShape(Capsule( ))
                            
                        }
                        
                        Text("In App Purchases")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .matchedGeometryEffect(id: detail.selectedItem.id, in: animation)
                .padding()
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .padding( )
                
                Spacer( )
            }
        }
        .scaleEffect(scale)
            .ignoresSafeArea(.all, edges: .top)
        }
        
        func onChanged(value: DragGesture.Value) {
            
            //calculating scale value by total height...
            let scale = value.translation.height / UIScreen.main.bounds.height
            
            self.scale = scale
            
        }
        func onEnded(value: DragGesture.Value) {
            
            withAnimation(.spring( )){
                scale = 1
            }
            
            
        }
    }


