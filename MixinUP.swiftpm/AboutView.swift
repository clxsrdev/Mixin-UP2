//
//  AboutView.swift
//  MixinUP-2
//
//  Created by ADMIN UNACH on 25/02/24.
//

import SwiftUI

struct AboutView: View {
    
    var UISW : CGFloat = UIScreen.main.bounds.width
    var UISH : CGFloat = UIScreen.main.bounds.height
    
    @State var offset: CGFloat = .zero
    @Binding var isAbout: Bool
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(.black)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            Image("ABOUT")
                .resizable()
                .frame(width: UISW * 0.8, height: UISH * 0.8)
                .position(x: UISW * 0.5, y: UISH * 0.5)
                .cornerRadius(20)
            
            ZStack {
                Image("btn")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 65)
                
                Text("X")
                    .font(.custom("Futura-Bold", size: 30))
                    .foregroundStyle(.white)
                    .padding(.bottom, 5)
                
            }.onTapGesture {
                withAnimation(.easeIn(duration: 0.4)) {
                    isAbout.toggle()
                }
            }
            .position(x: UISW * 0.18, y: UISH * 0.155)
            
            Text("About")
                .font(.custom("Futura-Bold", size: 56))
                .foregroundColor(Color(UIColor(red: 0.15, green: 0.59, blue: 0.78, alpha: 1.00)))
                .position(x: UISW * 0.28, y: UISH * 0.57)
            
            ZStack {
                Text("Get ready for a galactic experience like no other! Are you prepared to challenge your wit and creativity in the vast universe of ")
                    .font(.custom("Futura-Bold", size: 18))
                    .foregroundColor(.black)
                + Text("MixinUP? ")
                    .font(.custom("Futura-Bold", size: 18))
                    .foregroundColor(Color(UIColor(red: 0.15, green: 0.59, blue: 0.78, alpha: 1.00)))
                + Text("This interactive game will take you through space, level after level, challenging you to mix and match elements to unlock new possibilities. Can you master the perfect combination to reach your goals? Show off your skill and speed as you conquer the cosmos, accumulating stars that reflect your bravery and cunning!")
                    .font(.custom("Futura-Bold", size: 18))
                    .foregroundColor(.black)
                
                Text("Join the adventure of MixinUP and discover how far you can go!")
//                    .textCase(.uppercase)
                    .font(.custom("Futura-Bold", size: 23))
                    .foregroundColor(Color(UIColor(red: 0.93, green: 0.24, blue: 0.45, alpha: 1.00)))
                    .padding(.top, 280)
                
                
            }.multilineTextAlignment(.center)
                .position(x: UISW * 0.35, y: UISH * 0.73)
                .frame(width: UISW * 0.7)
            
        }.ignoresSafeArea()
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        let about = State(initialValue: false)
        return AboutView(isAbout: about.projectedValue)
    }
}
