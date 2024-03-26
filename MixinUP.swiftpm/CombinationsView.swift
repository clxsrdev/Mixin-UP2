//
//  CombinationsView.swift
//  MixinUP-2
//
//  Created by Michelle Ayala on 22/02/24.
//

import SwiftUI

struct CombinationsView: View {
    
    var UISW : CGFloat = UIScreen.main.bounds.width
    var UISH : CGFloat = UIScreen.main.bounds.height
    
    @State var offset: CGFloat = .zero
    @Binding var isComb: Bool
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: UISW, height: UISH)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            ZStack{
                
                ZStack {
                    
                    Image("lolaC")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .position(x: UISW * 0.26, y: UISH * 0.1)
                    
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .frame(width: UISW * 0.7, height: UISH * 0.7)
                    
                }.position(x: UISW * 0.5, y: UISH * 0.55)
                
                Text("COMBINATIONS")
                    .font(.custom("Futura-Bold", size: 40))
                    .bold()
                    .frame(width: UISW * 0.48, height: UISH * 0.2)
                    .padding(.trailing, 50)
                    .position(x: UISW * 0.465, y: UISH * 0.28)
                    .foregroundColor(.black)
                
                Text("These are the possible combinations to mix!")
                    .font(.custom("Futura-Bold", size: 16))
                    .bold()
                    .frame(width: UISW * 0.8, height: UISH * 0.2)
                    .position(x: UISW * 0.46, y: UISH * 0.32)
                    .foregroundColor(.black)
                
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
                        isComb.toggle()
                    }
                }
                .position(x: UISW * 0.78, y: UISH * 0.245)
                
                ScrollViewReader{ proxy in
                    ScrollView(showsIndicators: false){
                        Spacer()
                        VStack (spacing: 20){
                            ZStack {
                                Image("cNube")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Cloud")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.11, y: UISH * 0.03)
                            }
                            ZStack {
                                Image("cPiedra")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Stone")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.11, y: UISH * 0.03)
                            }
                            ZStack {
                                Image("cPlanta")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Plant")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.11, y: UISH * 0.03)
                            }
                            ZStack {
                                Image("cEnergia")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Energy")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.12, y: UISH * 0.03)
                            }
                            ZStack {
                                Image("cLluvia")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Rain")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.1, y: UISH * 0.03)
                            }
                            ZStack {
                                Image("cHumano")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Human")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.125, y: UISH * 0.03)
                            }
                            ZStack {
                                Image("cEspacio")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Space")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.11, y: UISH * 0.03)
                            }
                            ZStack {
                                Image("cFuego")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Fire")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.09, y: UISH * 0.03)
                            }
                            ZStack {
                                Image("cVolcan")
                                    .resizable()
                                    .frame(width: UISW * 0.55, height: UISH * 0.13)
                                
                                Text("Volcano")
                                    .font(.custom("Futura-Bold", size: 30))
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.132, y: UISH * 0.03)
                            }
                        }
                        ZStack {
                            Image("cAlien")
                                .resizable()
                                .frame(width: UISW * 0.55, height: UISH * 0.13)
                            
                            Text("Alien")
                                .font(.custom("Futura-Bold", size: 30))
                                .foregroundStyle(.white)
                                .position(x: UISW * 0.11, y: UISH * 0.03)
                        }
                        ZStack {
                            Image("cMeteorito")
                                .resizable()
                                .frame(width: UISW * 0.55, height: UISH * 0.13)
                            
                            Text("Meteorite")
                                .font(.custom("Futura-Bold", size: 30))
                                .foregroundStyle(.white)
                                .position(x: UISW * 0.145, y: UISH * 0.03)
                        }
                        ZStack {
                            Image("cEstrella")
                                .resizable()
                                .frame(width: UISW * 0.55, height: UISH * 0.13)
                            
                            Text("Star")
                                .font(.custom("Futura-Bold", size: 30))
                                .foregroundStyle(.white)
                                .position(x: UISW * 0.095, y: UISH * 0.03)
                        }
                        ZStack {
                            Image("cUFO")
                                .resizable()
                                .frame(width: UISW * 0.55, height: UISH * 0.13)
                            
                            Text("UFO")
                                .font(.custom("Futura-Bold", size: 30))
                                .foregroundStyle(.white)
                                .position(x: UISW * 0.095, y: UISH * 0.03)
                        }
                    }
                }.frame(width: UISW * 0.55, height: UISH * 0.5)
    //                .background(.red)
                    .position(x: UISW * 0.5, y: UISH * 0.61)
                
                
            }.offset(y: offset)
        }.ignoresSafeArea()
            .onAppear{
                withAnimation(Animation.easeInOut(duration: 2.5).repeatForever()) {
                    offset += 25
                    if offset > 12.5 {
                        offset = -12.5
                    }
                }
            }
    }
}

struct CombinationsView_Previews: PreviewProvider {
    static var previews: some View {
        let combinationsView = State(initialValue: false)
        return CombinationsView(isComb: combinationsView.projectedValue)
    }
}
