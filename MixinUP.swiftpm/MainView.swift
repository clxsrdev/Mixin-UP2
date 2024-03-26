//
//  MainView.swift
//  MixinUP-2
//
//  Created by Michelle Ayala on 19/02/24.
//

import SwiftUI

struct MainView: View {
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State var Logo: CGFloat = .zero
    @State var isBegin: Bool = false
    @State var scroll: Bool = false
    
    @State var isAbout: Bool = false
    @State var isComb: Bool = false
    
    var body: some View {
        ZStack{
            
            MenuView(isBegin: $isBegin)
            
            Image("scroll")
                .resizable()
                .frame(width: UISW , height: UISH * 2.79)
                .position(x: UISW * 0.5, y: UISH * 1.393)
                .opacity(scroll ? 0 : 1)
            //                .opacity(0.8)
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: UISW * 0.96)
                .offset(y: Logo)
                .position(x: UISW * 0.5, y: UISH * 0.47)
                .opacity(isBegin ? 0 : 1)
            
            ZStack {
                Image("btnScore")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Text("START")
                    .font(.custom("Futura-Bold", size: 30))
                    .foregroundStyle(.white)
                    .padding(.bottom, 5)
                
            }.onTapGesture {
                withAnimation(.easeIn(duration: 1)) {
                    isBegin.toggle()
                }
                withAnimation (.linear(duration: 0.5)){
                    scroll.toggle()
                }
            }
            .offset(y: Logo)
            .position(x: UISW * 0.5, y: UISH * 0.85)
            .opacity(isBegin ? 0 : 1)
            
            ZStack {
                Image("btn")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 65)
                
                Text("?")
                    .font(.custom("Futura-Bold", size: 30))
                    .foregroundStyle(.white)
                    .padding(.bottom, 5)
                
            }.onTapGesture {
                withAnimation(.easeIn(duration: 0.4)) {
                    isComb.toggle()
                }
            }
            .offset(y: Logo)
            .position(x: UISW * 0.325, y: UISH * 0.85)
            .opacity(isBegin ? 0 : 1)
            
            ZStack {
                Image("btn")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 65)
                
                Text("!")
                    .font(.custom("Futura-Bold", size: 30))
                    .foregroundStyle(.white)
                    .padding(.bottom, 5)
                
            }.onTapGesture {
                withAnimation(.easeIn(duration: 0.4)) {
                    isAbout.toggle()
                }
            }
            .offset(y: Logo)
            .position(x: UISW * 0.677, y: UISH * 0.85)
            .opacity(isBegin ? 0 : 1)
        
            CombinationsView(isComb: $isComb)
                .offset(y: isComb ? 0 : UISH)
            
            AboutView(isAbout: $isAbout)
                .offset(y: isAbout ? 0 : UISH)
            
        }.ignoresSafeArea()
            .onAppear{
                withAnimation(Animation.easeInOut(duration: 2.5).repeatForever()) {
                    Logo += 25
                    if Logo > 12.5 {
                        Logo = -12.5
                    }
                }
            }
    }
}

#Preview {
    MainView()
}
