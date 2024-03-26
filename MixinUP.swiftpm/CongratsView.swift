//
//  SwiftUIView.swift
//  
//
//  Created by ADMIN UNACH on 24/02/24.
//

import SwiftUI

struct CongratsView: View {
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State var offset: CGFloat = .zero
    
    @Binding var congrats: Bool
    @Binding var timeRemaining: Int
    @Binding var elapsedTime: Int
    @Binding var initialTime: Int
    
    @State var star1: Bool = false
    @State var star2: Bool = false
    @State var star3: Bool = false
    
    var body: some View {
        ZStack{
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: UISW * 0.45, height: UISH * 0.4)
                    .foregroundColor(.white)
                    .position(x: UISW * 0.5, y: UISH * 0.5)
                    .offset(y: offset)
                
                Image("starI")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .position(x: UISW * 0.5, y: UISH * 0.235)
                    .opacity(star3 ? 1 : 0.3)
                    .offset(y: offset)
                
                Image("starI")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .position(x: UISW * 0.35, y: UISH * 0.25)
                    .opacity(star1 ? 1 : 0.3)
                    .offset(y: offset)
                
                Image("starI")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .position(x: UISW * 0.65, y: UISH * 0.25)
                    .opacity(star2 ? 1 : 0.3)
                    .offset(y: offset)
                
                Button{
                    congrats = false
                } label: {
                    Text("FINISH")
                        .font(.custom("Futura-Bold", size: 30))
                        .foregroundColor(.white)
                        .padding()
                }.background(.purple)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white, lineWidth: 5)
                            .shadow(radius: 5)
                    )
                    .position(x: UISW * 0.5, y: UISH * 0.6)
                    .offset(y: offset)
                
                Text(formattedTime(time: elapsedTime))
                    .font(.custom("Futura-Bold", size: 30))
                    .foregroundColor(.black)
                    .bold()
                    .offset(y: offset)
                
            }
        }.ignoresSafeArea()
            .onAppear{
                withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                    offset += 40
                    if offset > 20 {
                        offset = -20
                    }
                }
//                let thirdTime = initialTime / 3
//                star3 = timeRemaining <= thirdTime
//                star2 = timeRemaining <= 2 * thirdTime
//                star1 = true
                let thirdTime = initialTime / 3
                let twoThirdsTime = 2 * thirdTime

                star1 = timeRemaining <= thirdTime
                star2 = timeRemaining > thirdTime && timeRemaining <= twoThirdsTime
                if(star2 == true){
                    star1 = true
                }
                star3 = timeRemaining > twoThirdsTime
                if(star3 == true){
                    star1 = true
                    star2 = true
                }
            }
    }
    func formattedTime(time: Int) -> String {
        let minutes = time / 60
        let seconds = time % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

struct CongratsView_Previews: PreviewProvider {
    static var previews: some View {
        let congrats = State(initialValue: true)
        let timeRemaining = State(initialValue: 21)
        let elapsedTime = State(initialValue: 60)
        let initialTime = State(initialValue: 60)
        return CongratsView(congrats: congrats.projectedValue, timeRemaining: timeRemaining.projectedValue, elapsedTime: elapsedTime.projectedValue, initialTime: initialTime.projectedValue)
    }
}
