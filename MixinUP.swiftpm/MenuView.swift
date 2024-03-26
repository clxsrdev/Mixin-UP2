import SwiftUI
import Combine

struct MenuView: View {
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    @State var level1: Bool = false
    @State var level2: Bool = false
    @State var level3: Bool = false
    @State var level4: Bool = false
    @State var level5: Bool = false
    @State var level6: Bool = false
    @State var level7: Bool = false
    @State var level8: Bool = false
    @State var level9: Bool = false
    @State var level10: Bool = false
    
    @State private var offset1: CGSize = .zero
    @State private var offset2: CGSize = .zero
    @State private var offset3: CGSize = .zero
    @State private var offset4: CGSize = .zero
    @State private var offset5: CGSize = .zero
    @State private var offset6: CGSize = .zero
    @State private var offset7: CGSize = .zero
    @State private var offset8: CGSize = .zero
    @State private var offset9: CGSize = .zero
    @State private var offset10: CGSize = .zero
    
    @State private var lola: CGSize = .zero
    @State private var nave: CGSize = .zero
    
    @State private var shadowOpacity: Double = 1.0
    
    @Binding var isBegin: Bool
    @State private var capturedProxy: ScrollViewProxy? = nil
    
    @State private var isImageVisible = false
    @State private var scrollOffset: CGFloat = 0
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                ScrollViewReader{ proxy in
                    ScrollView(showsIndicators: false){
                        ZStack{
                            Image("scroll")
                                .resizable()
                                .frame(width: UISW, height: UISW * 4)
                            
                            Image("star")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)), radius: 6, x: 0, y: 0)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)).opacity(shadowOpacity), radius: 6, x: 0, y: 0)                            .position(x: UISW * 0.38, y: UISH * 0.06)
                                .onAppear {
                                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                        self.shadowOpacity = 0.0
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                            self.shadowOpacity = 0.4
                                        }
                                    }
                                }
                            
                            Image("star")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)), radius: 6, x: 0, y: 0)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)).opacity(shadowOpacity), radius: 6, x: 0, y: 0)                            .position(x: UISW * 0.93, y: UISH * 0.29)
                                .onAppear {
                                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                        self.shadowOpacity = 0.0
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                            self.shadowOpacity = 0.4
                                        }
                                    }
                                }
                            
                            Image("star")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .rotationEffect(.degrees(30))
                                .position(x: UISW * 0.95, y: UISH * 0.255)
                            
                            Image("star")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)), radius: 6, x: 0, y: 0)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)).opacity(shadowOpacity), radius: 6, x: 0, y: 0)                            .position(x: UISW * 0.06, y: UISH * 0.375)
                                .onAppear {
                                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                        self.shadowOpacity = 0.0
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                            self.shadowOpacity = 0.4
                                        }
                                    }
                                }
                            
                            Image("star")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)), radius: 6, x: 0, y: 0)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)).opacity(shadowOpacity), radius: 6, x: 0, y: 0)                            .position(x: UISW * 0.94, y: UISH * 0.602)
                                .onAppear {
                                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                        self.shadowOpacity = 0.0
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                            self.shadowOpacity = 0.4
                                        }
                                    }
                                }
                            
                            Image("star")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)), radius: 6, x: 0, y: 0)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)).opacity(shadowOpacity), radius: 6, x: 0, y: 0)                            .position(x: UISW * 0.42, y: UISH * 0.8)
                                .onAppear {
                                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                        self.shadowOpacity = 0.0
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                            self.shadowOpacity = 0.4
                                        }
                                    }
                                }
                            
                            Image("star")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)), radius: 6, x: 0, y: 0)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)).opacity(shadowOpacity), radius: 6, x: 0, y: 0)                            .position(x: UISW * 0.41, y: UISH * 1.16)
                                .onAppear {
                                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                        self.shadowOpacity = 0.0
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                            self.shadowOpacity = 0.4
                                        }
                                    }
                                }
                            
                            Image("star")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)), radius: 6, x: 0, y: 0)
                                .shadow(color: Color(UIColor(red: 0.76, green: 0.91, blue: 0.98, alpha: 1.00)).opacity(shadowOpacity), radius: 6, x: 0, y: 0)                            .position(x: UISW * 0.625, y: UISH * 1.452)
                                .onAppear {
                                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                        self.shadowOpacity = 0.0
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                                            self.shadowOpacity = 0.4
                                        }
                                    }
                                }
                            
                            ZStack {
                                Image("1 2")
                                    .resizable()
                                    .frame(width: 128, height: 230)
                                    .position(x: UISW * 0.525, y: UISH * 2.295)
                                    .colorMultiply(.white)
                                
                                Text("01")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.459, y: UISH * 2.18)
                            }.id(0)
                            
                            ZStack {
                                Image("2 2")
                                    .resizable()
                                    .frame(width: 40, height: 165)
                                    .position(x: UISW * 0.195, y: UISH * 2.05)
                                    .colorMultiply(.white)
                                
                                Text("02")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.225, y: UISH * 1.99)
                            }.id(1)
                            
                            ZStack {
                                Image("3 2")
                                    .resizable()
                                    .frame(width: 220, height: 50)
                                    .position(x: UISW * 0.29, y: UISH * 1.772)
                                    .colorMultiply(.white)
                                
                                Text("03")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.365, y: UISH * 1.735)
                            }.id(2)
                            
                            ZStack {
                                Image("4 2")
                                    .resizable()
                                    .frame(width: 180, height: 180)
                                    .position(x: UISW * 0.79, y: UISH * 1.64)
                                    .colorMultiply(.white)
                                
                                Text("04")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.925, y: UISH * 1.57)
                            }.id(3)
                            
                            ZStack {
                                Image("5 2")
                                    .resizable()
                                    .frame(width: 340, height: 150)
                                    .position(x: UISW * 0.42, y: UISH * 1.557)
                                    .colorMultiply(.white)
                                
                                Text("05")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.225, y: UISH * 1.63)
                            }.id(4)
                            
                            ZStack {
                                Image("6 2")
                                    .resizable()
                                    .frame(width: 90, height: 310)
                                    .position(x: UISW * 0.145, y: UISH * 1.47)
                                    .colorMultiply(.white)
                                
                                Text("06")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.15, y: UISH * 1.402)
                            }.id(5)
                            
                            ZStack {
                                Image("7")
                                    .resizable()
                                    .frame(width: 130, height: 20)
                                    .position(x: UISW * 0.48, y: UISH * 1.22)
                                    .colorMultiply(.white)
                                
                                Text("07")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.515, y: UISH * 1.245)
                            }.id(6)
                            
                            ZStack {
                                Image("8")
                                    .resizable()
                                    .frame(width: 20, height: 120)
                                    .position(x: UISW * 0.795, y: UISH * 1.088)
                                    .colorMultiply(.white)
                                
                                Text("08")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.835, y: UISH * 1.064)
                            }.id(7)
                            
                            ZStack {
                                Image("9")
                                    .resizable()
                                    .frame(width: 370, height: 100)
                                    .position(x: UISW * 0.39, y: UISH * 0.9779)
                                    .colorMultiply(.white)
                                
                                Text("09")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .position(x: UISW * 0.18, y: UISH * 1.017)
                            }.id(8)
                            
                            Image("10")
                                .resizable()
                                .frame(width: 40, height: 50)
                                .position(x: UISW * 0.34, y: UISH * 0.74)
                                .colorMultiply(.white)
                                .id(9)
                            
                            Image("alien")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.245, y: UISH * 0.85)
                                .offset(self.offset1)
                                .onAppear {
                                    self.startMoving(offset: self.$offset1, size: geometry.size, distance: 10)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level9.toggle()
                                    }
                                }
                            
                            Image("estrella")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.77, y: UISH * 0.953)
                                .offset(self.offset2)
                                .onAppear {
                                    self.startMoving(offset: self.$offset2, size: geometry.size, distance: 12)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level8.toggle()
                                    }
                                }
                            
                            Image("meteorito")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.7, y: UISH * 1.21)
                                .offset(self.offset3)
                                .onAppear {
                                    self.startMoving(offset: self.$offset3, size: geometry.size, distance: 8)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level7.toggle()
                                    }
                                }
                            
                            Image("volcan")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.265, y: UISH * 1.27)
                                .offset(self.offset4)
                                .onAppear {
                                    self.startMoving(offset: self.$offset4, size: geometry.size, distance: 10)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level6.toggle()
                                    }
                                }
                            
                            Image("fuego")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.765, y: UISH * 1.5)
                                .offset(self.offset5)
                                .onAppear {
                                    self.startMoving(offset: self.$offset5, size: geometry.size, distance: 8)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level5.toggle()
                                    }
                                }
                            
                            Image("humano")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.32, y: UISH * 1.48)
                                .offset(self.offset6)
                                .onAppear {
                                    self.startMoving(offset: self.$offset6, size: geometry.size, distance: 12)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level4.toggle()
                                    }
                                }
                            
                            Image("energia")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.542, y: UISH * 1.725)
                                .offset(self.offset7)
                                .onAppear {
                                    self.startMoving(offset: self.$offset7, size: geometry.size, distance: 10)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level3.toggle()
                                    }
                                }
                            
                            Image("nube")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.17, y: UISH * 1.89)
                                .offset(self.offset8)
                                .onAppear {
                                    self.startMoving(offset: self.$offset8, size: geometry.size, distance: 8)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level2.toggle()
                                    }
                                }
                            
                            Image("planta")
                                .resizable()
                                .frame(width: 215, height: 200)
                                .position(x: UISW * 0.31, y: UISH * 2.195)
                                .offset(self.offset9)
                                .onAppear {
                                    self.startMoving(offset: self.$offset9, size: geometry.size, distance: 12)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level1.toggle()
                                    }
                                }
                            
                            ZStack {
                                Image("final-level")
                                    .resizable()
                                    .frame(width: UISW * 0.8, height: UISH * 0.67)
                                
                                Text("10")
                                    .font(.largeTitle)
                                    .bold()
                                    .padding(.bottom, 660)
                                    .padding(.leading, 45)
                                    .foregroundColor(.white)
                                
                            }.position(x: UISW * 0.51, y: UISH * 0.39)
                                .offset(self.offset10)
                                .onAppear {
                                    self.startMoving(offset: self.$offset10, size: geometry.size, distance: 8)
                                }
                                .onTapGesture {
                                    withAnimation (.spring(duration: 1.3)){
                                        level10.toggle()
                                    }
                                }
                            
                            Image("lola")
                                .resizable()
                                .frame(width: 230, height: 180)
                                .position(x: UISW * 0.2, y: UISH * 0.15)
                                .offset(self.lola)
                                .onAppear {
                                    self.startMoving(offset: self.$lola, size: geometry.size, distance: 10)
                                }
                            
                            Image("nave")
                                .resizable()
                                .frame(width: 180, height: 180)
                                .position(x: UISW * 0.83, y: UISH * 0.16)
                                .offset(self.nave)
                                .onAppear {
                                    self.startMoving(offset: self.$nave, size: geometry.size, distance: 9)
                                }
                        }
                        .onAppear {
                            capturedProxy = proxy
                        }
                    }
                }
            }.onReceive(Just(isBegin)) { value in
                if value {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                        if let proxy = capturedProxy {
                            startMoving2(proxy: proxy)
                        }
                    }
                }
            }
            
            if level1 == true {
                withAnimation(.spring(duration: 10)) {
                    Level1View(level1: $level1)
                        .offset(y: level1 ? 0 : UISH * 1)
                }
            }
            if level2 == true {
                withAnimation(.spring(duration: 10)) {
                    Level2View(level2: $level2)
                        .offset(y: level2 ? 0 : UISH * 1)
                }
            }
            if level3 == true {
                withAnimation(.spring(duration: 10)) {
                    Level3View(level3: $level3)
                        .offset(y: level3 ? 0 : UISH * 1)
                }
            }
            if level4 == true {
                withAnimation(.spring(duration: 10)) {
                    Level4View(level4: $level4)
                        .offset(y: level4 ? 0 : UISH * 1)
                }
            }
            if level5 == true {
                withAnimation(.spring(duration: 10)) {
                    Level5View(level5: $level5)
                        .offset(y: level5 ? 0 : UISH * 1)
                }
            }
            if level6 == true {
                withAnimation(.spring(duration: 10)) {
                    Level6View(level6: $level6)
                        .offset(y: level6 ? 0 : UISH * 1)
                }
            }
            if level7 == true {
                withAnimation(.spring(duration: 10)) {
                    Level7View(level7: $level7)
                        .offset(y: level7 ? 0 : UISH * 1)
                }
            }
            if level8 == true {
                withAnimation(.spring(duration: 10)) {
                    Level8View(level8: $level8)
                        .offset(y: level8 ? 0 : UISH * 1)
                }
            }
            if level9 == true {
                withAnimation(.spring(duration: 10)) {
                    Level9View(level9: $level9)
                        .offset(y: level9 ? 0 : UISH * 1)
                }
            }
            if level10 == true {
                withAnimation(.spring(duration: 10)) {
                    Level10View(level10: $level10)
                        .offset(y: level10 ? 0 : UISH * 1)
                }
            }
            
        }.ignoresSafeArea()
            .background(
                LinearGradient(gradient: Gradient(colors: [
                    Color(UIColor(red: 0.10, green: 0.05, blue: 0.15, alpha: 1.00)),
                    Color(UIColor(red: 0.09, green: 0.08, blue: 0.07, alpha: 1.00))
                ]), startPoint: .top, endPoint: .bottom)
            )
    }
    
    func startMoving2(proxy: ScrollViewProxy) {
        withAnimation(.easeInOut(duration: 1)) {
            proxy.scrollTo(0)
        }
    }
    
    func startMoving(offset: Binding<CGSize>, size: CGSize, distance: CGFloat) {
        withAnimation(Animation.easeInOut(duration: Double.random(in: 1.5...3)).repeatForever()) {
            offset.wrappedValue.height = -distance
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 0.5...1)) {
            withAnimation(Animation.easeInOut(duration: Double.random(in: 1.5...3)).repeatForever()) {
                offset.wrappedValue.height = distance
            }
        }
    }
}

//#Preview {
//    MenuView()
//}
