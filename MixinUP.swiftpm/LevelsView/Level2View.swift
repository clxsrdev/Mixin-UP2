//
//  SwiftUIView.swift
//  
//
//  Created by Michelle Ayala on 22/02/24.
//

import SwiftUI

struct Level2View: View {
    
    @Binding var level2: Bool
    
    @State var star1: Bool = false
    @State var star2: Bool = false
    @State var star3: Bool = false
    @State private var congratula: CGFloat = 0
    
    @State var congrats: Bool = false
    @State var info: Bool = true
    
    @State private var lola: CGFloat = 0
    @State var isLola: Bool = false
    
    @State private var isTimerRunning = false
    @State var initialTime = 45
    @State private var timeRemaining = 45
    @State private var elapsedTime = 0
    
    @State private var offset: CGFloat = 0
    @State private var offset1: CGFloat = 0
    @State private var starO: CGFloat = 0
    @State private var starO2: CGFloat = 0
    
    @State var isUFO: Bool = false
    @State private var ufoPosition: CGPoint = .zero
    @State private var initialUfoPosition: CGPoint = .zero
    @State private var lastUfoPosition: CGPoint = .zero
    @State var isInUFO: Bool = false
    
    @State var isStar: Bool = false
    @State private var starPosition: CGPoint = .zero
    @State private var initialStarPosition: CGPoint = .zero
    @State private var lastStarPosition: CGPoint = .zero
    @State var isInStar: Bool = false
    
    @State var isMeteor: Bool = false
    @State private var meteorPosition: CGPoint = .zero
    @State private var initialMeteorPosition: CGPoint = .zero
    @State private var lastMeteorPosition: CGPoint = .zero
    @State var isInMeteor: Bool = false
    
    @State var isAlien: Bool = false
    @State private var alienPosition: CGPoint = .zero
    @State private var initialALienPosition: CGPoint = .zero
    @State private var lastAlienPosition: CGPoint = .zero
    @State var isInAlien: Bool = false
    
    @State var isVolcano: Bool = false
    @State private var volcanoPosition: CGPoint = .zero
    @State private var initialVolcanoPosition: CGPoint = .zero
    @State private var lastVolcanoPosition: CGPoint = .zero
    @State var isInVolcano: Bool = false
    
    @State var isFire: Bool = false
    @State private var firePosition: CGPoint = .zero
    @State private var initialFirePosition: CGPoint = .zero
    @State private var lastFirePosition: CGPoint = .zero
    @State var isInFire: Bool = false
    
    @State var isSpace: Bool = false
    @State private var spacePosition: CGPoint = .zero
    @State private var initialSpacePosition: CGPoint = .zero
    @State private var lastSpacePosition: CGPoint = .zero
    @State var isInSpace: Bool = false
    
    @State var isHuman: Bool = false
    @State private var humanPosition: CGPoint = .zero
    @State private var initialHumanPosition: CGPoint = .zero
    @State private var lastHumanPosition: CGPoint = .zero
    @State var isInHuman: Bool = false
    
    @State var isRain: Bool = false
    @State private var rainPosition: CGPoint = .zero
    @State private var initialRainPosition: CGPoint = .zero
    @State private var lastRainPosition: CGPoint = .zero
    @State var isInRain: Bool = false
    
    @State var isEnergy: Bool = false
    @State private var energyPosition: CGPoint = .zero
    @State private var initialEnergyPosition: CGPoint = .zero
    @State private var lastEnergyPosition: CGPoint = .zero
    @State var isInEnergy: Bool = false
    
    @State var isPlant: Bool = false
    @State private var plantPosition: CGPoint = .zero
    @State private var initialPlantPosition: CGPoint = .zero
    @State private var lastPlantPosition: CGPoint = .zero
    @State var isInPlant: Bool = false
    
    @State var isStone: Bool = false
    @State private var stonePosition: CGPoint = .zero
    @State private var initialStonePosition: CGPoint = .zero
    @State private var lastStonePosition: CGPoint = .zero
    @State var isInStone: Bool = false
    
    @State var isCloud: Bool = false
    @State private var cloudPosition: CGPoint = .zero
    @State private var initialCloudPosition: CGPoint = .zero
    @State private var lastCloudPosition: CGPoint = .zero
    @State var isInCloud: Bool = false
    
    @State var positionIX: CGFloat = UIScreen.main.bounds.width * 0.5
    @State var positionIY: CGFloat = UIScreen.main.bounds.height * 0.5
    
    @State var isAirDirt: Bool = false
    @State var isAirCloud: Bool = false
    @State var isAirWater: Bool = false
    @State var isWaterDirt: Bool = false
    @State var isWaterCloud: Bool = false
    @State var isEnergyPlant: Bool = false
    @State var isEnergyCloud: Bool = false
    @State var isEnergyStone: Bool = false
    @State var isFireStone: Bool = false
    @State var isSpaceHuman: Bool = false
    @State var isSpaceStone: Bool = false
    @State var isSpaceEnergy: Bool = false
    @State var isAlienEnergy: Bool = false
    
    var UISW: CGFloat = UIScreen.main.bounds.width
    var UISH: CGFloat = UIScreen.main.bounds.height
    
    let rectangleFrame = CGRect(x: UIScreen.main.bounds.width * 0.5 - 200,
         y: UIScreen.main.bounds.height * 0.45 - 350,
         width: 400, height: 700)
    
    let circleFrame = CGRect(x: UIScreen.main.bounds.width * 0.315 - 80,
          y: UIScreen.main.bounds.height * 0.67 - 80,
          width: 160, height: 160)
    
    @State var positionIXWater: CGFloat = UIScreen.main.bounds.width * 0.5
    @State var positionIYWater: CGFloat = UIScreen.main.bounds.height * 0.875
    
    @State private var waterPosition: CGPoint = .zero
    @State private var initialwaterPosition: CGPoint = .zero
    @State private var lastwaterPosition: CGPoint = .zero
    
    @State var isInWater: Bool = false
    
    @State var positionIXAir: CGFloat = UIScreen.main.bounds.width * 0.275
    @State var positionIYAir: CGFloat = UIScreen.main.bounds.height * 0.875
    
    @State private var airPosition: CGPoint = .zero
    @State private var initialAirPosition: CGPoint = .zero
    @State private var lastAirPosition: CGPoint = .zero
    
    @State var isInAir: Bool = false
    
    @State var positionIXDirt: CGFloat = UIScreen.main.bounds.width * 0.725
    @State var positionIYDirt: CGFloat = UIScreen.main.bounds.height * 0.875
    
    @State private var dirtPosition: CGPoint = .zero
    @State private var initialDirtPosition: CGPoint = .zero
    @State private var lastDirtPosition: CGPoint = .zero
    
    @State var isInDirt: Bool = false
    
    var body: some View {
        ZStack {
            Image("sandboxV")
                .resizable()
                .frame(width: UISW, height: UISH)
            
            Text("Level 2")
                .font(.custom("Futura-Bold", size: 50))
                .foregroundColor(.white)
                .position(x: UISW * 0.51, y: UISH * 0.077)
            
            Image("star1")
                .resizable()
                .frame(width: UISW * 0.08, height: UISH * 0.4)
                .position(x: UISW * 0.036, y: UISH * 0.39)
                .offset(y: starO)
                .onAppear{
                    withAnimation(Animation.easeInOut(duration: 3).repeatForever()) {
                        starO += 30
                        if starO > 15 {
                            starO = -15
                        }
                    }
                }
            
            Image("star2")
                .resizable()
                .frame(width: UISW * 0.08, height: UISH * 0.4)
                .position(x: UISW * 0.964, y: UISH * 0.4)
                .offset(y: starO2)
                .onAppear{
                    withAnimation(Animation.easeInOut(duration: 2.5).repeatForever()) {
                        starO2 += 25
                        if starO2 > 12.5 {
                            starO2 = -12.5
                        }
                    }
                }
            
            ZStack {
                Circle()
                    .foregroundStyle(Color(UIColor(red: 0.25, green: 0.18, blue: 0.35, alpha: 1.00)))
                    .frame(width: 80, height: 80)
                
                Image("recycle")
                    .resizable()
//                    .colorInvert()
                    .frame(width: 60, height: 60)
                    .onTapGesture {
                        withAnimation (.spring(duration: 0.5)){
//                            isTimerRunning = true
//                            timeRemaining = 45
//                            elapsedTime = 0
                            isCloud = false
                            isStone = false
                            isPlant = false
                            isEnergy = false
                            isRain = false
                            isHuman = false
                            isSpace = false
                            isFire = false
                            isVolcano = false
                            isAlien = false
                            isMeteor = false
                            isStar = false
                            isUFO = false
                            initialwaterPosition = CGPoint(x: positionIXWater, y: positionIYWater)
                            waterPosition = initialwaterPosition
                            
                            initialAirPosition = CGPoint(x: positionIXAir, y: positionIYAir)
                            airPosition = initialAirPosition
                            
                            initialDirtPosition = CGPoint(x: positionIXDirt, y: positionIYDirt)
                            dirtPosition = initialDirtPosition
                            
                            initialCloudPosition = CGPoint(x: positionIX, y: positionIY)
                            cloudPosition = initialCloudPosition
                            
                            initialStonePosition = CGPoint(x: positionIX, y: positionIY)
                            stonePosition = initialStonePosition
                            
                            initialPlantPosition = CGPoint(x: positionIX, y: positionIY)
                            plantPosition = initialPlantPosition
                            
                            initialEnergyPosition = CGPoint(x: positionIX, y: positionIY)
                            energyPosition = initialEnergyPosition
                            
                            initialRainPosition = CGPoint(x: positionIX, y: positionIY)
                            rainPosition = initialRainPosition
                            
                            initialHumanPosition = CGPoint(x: positionIX, y: positionIY)
                            humanPosition = initialHumanPosition
                            
                            initialSpacePosition = CGPoint(x: positionIX, y: positionIY)
                            spacePosition = initialSpacePosition
                            
                            initialFirePosition = CGPoint(x: positionIX, y: positionIY)
                            firePosition = initialFirePosition
                            
                            initialVolcanoPosition = CGPoint(x: positionIX, y: positionIY)
                            volcanoPosition = initialVolcanoPosition
                            
                            initialALienPosition = CGPoint(x: positionIX, y: positionIY)
                            alienPosition = initialALienPosition
                            
                            initialMeteorPosition = CGPoint(x: positionIX, y: positionIY)
                            meteorPosition = initialMeteorPosition
                            
                            initialStarPosition = CGPoint(x: positionIX, y: positionIY)
                            starPosition = initialStarPosition
                            
                            initialUfoPosition = CGPoint(x: positionIX, y: positionIY)
                            ufoPosition = initialUfoPosition
                        }
                    }

            }.position(x: UISW * 0.66, y: UISH * 0.23)
                .offset(y: offset1)
                .onAppear{
                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                        offset1 += 10
                        if offset1 > 5 {
                            offset1 = -5
                        }
                    }
                }
            
//            Image("planta")
//                .resizable()
//                .frame(width: 160, height: 150)
//                .position(x: UISW * 0.31, y: UISH * 0.675)
//                .offset(y: offset)
//                .onAppear {
//                    withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
//                        offset += 20
//                        if offset > 10 {
//                            offset = -10
//                        }
//                    }
//                }
            
            Image("waterI")
                .resizable()
                .frame(width: 50, height: 100)
                .position(waterPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let cloudFrame = CGRect(x: cloudPosition.x - 45, y: cloudPosition.y - 30, width: 90, height: 60)
                            waterPosition = CGPoint(x: value.location.x, y: value.location.y)
                            isAirWater = isColliding(rect1: waterFrame, rect2: airFrame)
                            isWaterDirt = isColliding(rect1: waterFrame, rect2: dirtFrame)
                            isWaterCloud = isColliding(rect1: cloudFrame, rect2: waterFrame)
                        }
                        .onEnded { value in
                            lastwaterPosition = initialwaterPosition
                            if rectangleFrame.contains(waterPosition) {
                                if(circleFrame.contains(waterPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInWater = false
                                        waterPosition = initialwaterPosition
                                    }
                                } else {
                                    if(isAirWater == true){
                                        withAnimation(.spring(duration: 0.5)) {
                                            isCloud = true
                                            waterPosition = initialwaterPosition
                                            airPosition = initialAirPosition
                                        }
                                    } else if(isWaterDirt == true){
                                        withAnimation(.spring(duration: 0.5)) {
                                            isPlant = true
                                            dirtPosition = initialDirtPosition
                                            waterPosition = initialwaterPosition
                                        }
                                    } else if(isWaterCloud == true && isCloud == true){
                                        withAnimation(.spring(duration: 0.5)) {
                                            isRain = true
                                            isCloud = false
                                            cloudPosition = initialCloudPosition
                                            waterPosition = initialwaterPosition
                                        }
                                    } else {
                                        withAnimation (.spring(duration: 0.5)){
                                            lastwaterPosition = waterPosition
                                            isInWater = true
                                        }
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    waterPosition = initialwaterPosition
                                    isInWater = false
                                }
                            }
                        }
                )
            
            Image("airI")
                .resizable()
                .frame(width: 90, height: 60)
                .position(airPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let cloudFrame = CGRect(x: cloudPosition.x - 45, y: cloudPosition.y - 30, width: 90, height: 60)
                            airPosition = CGPoint(x: value.location.x, y: value.location.y)
                            isAirWater = isColliding(rect1: waterFrame, rect2: airFrame)
                            isAirDirt = isColliding(rect1: dirtFrame, rect2: airFrame)
                            isAirCloud = isColliding(rect1: cloudFrame, rect2: airFrame)
                        }
                        .onEnded { value in
                            lastAirPosition = initialAirPosition
                            
                            if rectangleFrame.contains(airPosition) {
                                if(circleFrame.contains(airPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInAir = false
                                        airPosition = initialAirPosition
                                    }
                                } else {
                                    if(isAirDirt == true){
                                        withAnimation (.spring(duration: 0.5)){
                                            isStone = true
                                            dirtPosition = initialDirtPosition
                                            airPosition = initialAirPosition
                                        }
                                    } else if(isAirWater == true) {
                                        withAnimation(.spring(duration: 0.5)) {
                                            isCloud = true
                                            waterPosition = initialwaterPosition
                                            airPosition = initialAirPosition
                                        }
                                    } else if(isAirCloud == true && isCloud == true){
                                        withAnimation(.spring(duration: 0.5)) {
                                            isEnergy = true
                                            isCloud = false
                                            cloudPosition = initialCloudPosition
                                            airPosition = initialAirPosition
                                        }
                                    }else {
                                        withAnimation (.spring(duration: 0.5)){
                                            lastAirPosition = airPosition
                                            isInAir = true
                                        }
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    airPosition = initialAirPosition
                                    isInAir = false
                                }
                            }
                        }
                )
            
            Image("dirtI")
                .resizable()
                .frame(width: 90, height: 60)
                .position(dirtPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            dirtPosition = CGPoint(x: value.location.x, y: value.location.y)
                            isWaterDirt = isColliding(rect1: waterFrame, rect2: dirtFrame)
                            isAirDirt = isColliding(rect1: dirtFrame, rect2: airFrame)
                        }
                        .onEnded { value in
                            lastDirtPosition = initialDirtPosition
                            
                            if rectangleFrame.contains(dirtPosition) {
                                if(circleFrame.contains(dirtPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInDirt = false
                                        dirtPosition = initialDirtPosition
                                    }
                                } else {
                                    if(isAirDirt == true){
                                        withAnimation (.spring(duration: 0.5)){
                                            isStone = true
                                            dirtPosition = initialDirtPosition
                                            airPosition = initialAirPosition
                                        }
                                    } else if (isWaterDirt == true){
                                        withAnimation (.spring(duration: 0.5)){
                                            isPlant = true
                                            dirtPosition = initialDirtPosition
                                            waterPosition = initialwaterPosition
                                        }
                                    } else {
                                        withAnimation (.spring(duration: 0.5)){
                                            lastDirtPosition = dirtPosition
                                            isInDirt = true
                                        }
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    dirtPosition = initialDirtPosition
                                    isInDirt = false
                                }
                            }
                        }
                )
            
            Image("cloudI")
                .resizable()
                .frame(width: 90, height: 60)
                .opacity(isCloud ? 1 : 0)
                .position(cloudPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let cloudFrame = CGRect(x: cloudPosition.x - 45, y: cloudPosition.y - 30, width: 90, height: 60)
                            let energyFrame = CGRect(x: energyPosition.x - 35, y: energyPosition.y - 45, width: 70, height: 90)
                            cloudPosition = CGPoint(x: value.location.x, y: value.location.y)
                            isAirCloud = isColliding(rect1: cloudFrame, rect2: airFrame)
                            isWaterCloud = isColliding(rect1: cloudFrame, rect2: waterFrame)
                            isEnergyCloud = isColliding(rect1: energyFrame, rect2: cloudFrame)
                        }
                        .onEnded { value in
                            lastCloudPosition = initialCloudPosition
                            
                            if rectangleFrame.contains(cloudPosition) {
                                if(circleFrame.contains(cloudPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInCloud = false
                                        cloudPosition = initialCloudPosition
                                    }
                                } else if(isAirCloud == true && isCloud == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isEnergy = true
                                        isCloud = false
                                        cloudPosition = initialCloudPosition
                                        airPosition = initialAirPosition
                                    }
                                } else if(isWaterCloud == true && isCloud == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isRain = true
                                        isCloud = false
                                        cloudPosition = initialCloudPosition
                                        waterPosition = initialwaterPosition
                                    }
                                } else if (isEnergyCloud == true && isEnergy == true && isCloud == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isSpace = true
                                        isEnergy = false
                                        isCloud = false
                                        energyPosition = initialEnergyPosition
                                        cloudPosition = initialCloudPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastCloudPosition = cloudPosition
                                        isInCloud = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    cloudPosition = initialCloudPosition
                                    isInCloud = false
                                }
                            }
                        }
                )
            
            Image("stoneI")
                .resizable()
                .frame(width: 90, height: 60)
                .opacity(isStone ? 1 : 0)
                .position(stonePosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let stoneFrame = CGRect(x: stonePosition.x - 45, y: stonePosition.y - 30, width: 90, height: 60)
                            let energyFrame = CGRect(x: energyPosition.x - 35, y: energyPosition.y - 45, width: 70, height: 90)
                            let fireFrame = CGRect(x: firePosition.x - 32.5, y: firePosition.y - 40, width: 65, height: 80)
                            let spaceFrame = CGRect(x: spacePosition.x - 45, y: spacePosition.y - 40, width: 90, height: 80)
                            stonePosition = CGPoint(x: value.location.x, y: value.location.y)
                            isEnergyStone = isColliding(rect1: energyFrame, rect2: stoneFrame)
                            isFireStone = isColliding(rect1: fireFrame, rect2: stoneFrame)
                            isSpaceStone = isColliding(rect1: spaceFrame, rect2: stoneFrame)
                        }
                        .onEnded { value in
                            lastStonePosition = initialStonePosition
                            
                            if rectangleFrame.contains(stonePosition) {
                                if(circleFrame.contains(stonePosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInStone = false
                                        stonePosition = initialStonePosition
                                    }
                                } else if (isEnergyStone == true && isEnergy == true && isStone == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isFire = true
                                        isEnergy = false
                                        isStone = false
                                        energyPosition = initialEnergyPosition
                                        stonePosition = initialStonePosition
                                    }
                                } else if (isFireStone == true && isFire == true && isStone == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isVolcano = true
                                        isFire = false
                                        isStone = false
                                        firePosition = initialFirePosition
                                        stonePosition = initialStonePosition
                                    }
                                } else if (isSpaceStone == true && isSpace == true && isStone == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isMeteor = true
                                        isSpace = false
                                        isStone = false
                                        spacePosition = initialSpacePosition
                                        stonePosition = initialStonePosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastStonePosition = stonePosition
                                        isInStone = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    stonePosition = initialStonePosition
                                    isInStone = false
                                }
                            }
                        }
                )
            
            Image("plantI")
                .resizable()
                .frame(width: 70, height: 90)
                .opacity(isPlant ? 1 : 0)
                .position(plantPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let plantFrame = CGRect(x: plantPosition.x - 35, y: plantPosition.y - 45, width: 70, height: 90)
                            let energyFrame = CGRect(x: energyPosition.x - 35, y: energyPosition.y - 45, width: 70, height: 90)
                            plantPosition = CGPoint(x: value.location.x, y: value.location.y)
                            isEnergyPlant = isColliding(rect1: energyFrame, rect2: plantFrame)
                        }
                        .onEnded { value in
                            lastPlantPosition = initialPlantPosition
                            
                            if rectangleFrame.contains(plantPosition) {
                                if(circleFrame.contains(plantPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInPlant = false
                                        plantPosition = initialPlantPosition
                                    }
                                } else if (isEnergyPlant == true && isEnergy == true && isPlant == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isHuman = true
                                        isEnergy = false
                                        isPlant = false
                                        energyPosition = initialEnergyPosition
                                        plantPosition = initialPlantPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastPlantPosition = plantPosition
                                        isInPlant = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    plantPosition = initialPlantPosition
                                    isInPlant = false
                                }
                            }
                        }
                )
            
            Image("energyI")
                .resizable()
                .frame(width: 70, height: 90)
                .opacity(isEnergy ? 1 : 0)
                .position(energyPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let plantFrame = CGRect(x: plantPosition.x - 35, y: plantPosition.y - 45, width: 70, height: 90)
                            let energyFrame = CGRect(x: energyPosition.x - 35, y: energyPosition.y - 45, width: 70, height: 90)
                            let cloudFrame = CGRect(x: cloudPosition.x - 45, y: cloudPosition.y - 30, width: 90, height: 60)
                            let stoneFrame = CGRect(x: stonePosition.x - 45, y: stonePosition.y - 30, width: 90, height: 60)
                            let spaceFrame = CGRect(x: spacePosition.x - 45, y: spacePosition.y - 40, width: 90, height: 80)
                            let alienFrame = CGRect(x: alienPosition.x - 32.5, y: alienPosition.y - 40, width: 65, height: 80)
                            energyPosition = CGPoint(x: value.location.x, y: value.location.y)
                            isEnergyPlant = isColliding(rect1: energyFrame, rect2: plantFrame)
                            isEnergyCloud = isColliding(rect1: energyFrame, rect2: cloudFrame)
                            isEnergyStone = isColliding(rect1: energyFrame, rect2: stoneFrame)
                            isSpaceEnergy = isColliding(rect1: energyFrame, rect2: spaceFrame)
                            isAlienEnergy = isColliding(rect1: alienFrame, rect2: energyFrame)
                        }
                        .onEnded { value in
                            lastEnergyPosition = initialEnergyPosition
                            
                            if rectangleFrame.contains(energyPosition) {
                                if(circleFrame.contains(energyPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInEnergy = false
                                        energyPosition = initialEnergyPosition
                                    }
                                } else if (isEnergyPlant == true && isEnergy == true && isPlant == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isHuman = true
                                        isEnergy = false
                                        isPlant = false
                                        energyPosition = initialEnergyPosition
                                        plantPosition = initialPlantPosition
                                    }
                                } else if (isEnergyCloud == true && isEnergy == true && isCloud == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isSpace = true
                                        isEnergy = false
                                        isCloud = false
                                        energyPosition = initialEnergyPosition
                                        cloudPosition = initialCloudPosition
                                    }
                                } else if (isEnergyStone == true && isEnergy == true && isStone == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isFire = true
                                        isEnergy = false
                                        isStone = false
                                        energyPosition = initialEnergyPosition
                                        stonePosition = initialStonePosition
                                    }
                                } else if (isSpaceEnergy == true && isSpace == true && isEnergy == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isStar = true
                                        isSpace = false
                                        isEnergy = false
                                        spacePosition = initialSpacePosition
                                        energyPosition = initialEnergyPosition
                                    }
                                } else if (isAlienEnergy == true && isAlien == true && isEnergy == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isUFO = true
                                        isAlien = false
                                        isEnergy = false
                                        alienPosition = initialALienPosition
                                        energyPosition = initialEnergyPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastEnergyPosition = energyPosition
                                        isInEnergy = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    energyPosition = initialEnergyPosition
                                    isInEnergy = false
                                }
                            }
                        }
                )
            
            Image("rainI")
                .resizable()
                .frame(width: 90, height: 90)
                .opacity(isRain ? 1 : 0)
                .position(rainPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            rainPosition = CGPoint(x: value.location.x, y: value.location.y)
                        }
                        .onEnded { value in
                            lastRainPosition = initialRainPosition
                            
                            if rectangleFrame.contains(rainPosition) {
                                if(circleFrame.contains(rainPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInRain = false
                                        rainPosition = initialRainPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastRainPosition = rainPosition
                                        isInRain = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    rainPosition = initialRainPosition
                                    isInRain = false
                                }
                            }
                        }
                )
            
            Image("humanI")
                .resizable()
                .frame(width: 70, height: 90)
                .opacity(isHuman ? 1 : 0)
                .position(humanPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let spaceFrame = CGRect(x: spacePosition.x - 45, y: spacePosition.y - 40, width: 90, height: 80)
                            let humanFrame = CGRect(x: spacePosition.x - 35, y: spacePosition.y - 45, width: 70, height: 90)
                            humanPosition = CGPoint(x: value.location.x, y: value.location.y)
                            isSpaceHuman = isColliding(rect1: spaceFrame, rect2: humanFrame)
                        }
                        .onEnded { value in
                            lastHumanPosition = initialHumanPosition
                            
                            if rectangleFrame.contains(humanPosition) {
                                if(circleFrame.contains(humanPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInHuman = false
                                        humanPosition = initialHumanPosition
                                    }
                                } else if (isSpaceHuman == true && isSpace == true && isHuman == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isAlien = true
                                        isSpace = false
                                        isHuman = false
                                        spacePosition = initialSpacePosition
                                        humanPosition = initialHumanPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastHumanPosition = humanPosition
                                        isInHuman = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    humanPosition = initialHumanPosition
                                    isInHuman = false
                                }
                            }
                        }
                )
            
            Image("spaceI")
                .resizable()
                .frame(width: 90, height: 80)
                .opacity(isSpace ? 1 : 0)
                .position(spacePosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let spaceFrame = CGRect(x: spacePosition.x - 45, y: spacePosition.y - 40, width: 90, height: 80)
                            let humanFrame = CGRect(x: spacePosition.x - 35, y: spacePosition.y - 45, width: 70, height: 90)
                            let stoneFrame = CGRect(x: stonePosition.x - 45, y: stonePosition.y - 30, width: 90, height: 60)
                            let energyFrame = CGRect(x: energyPosition.x - 35, y: energyPosition.y - 45, width: 70, height: 90)
                            spacePosition = CGPoint(x: value.location.x, y: value.location.y)
                            isSpaceHuman = isColliding(rect1: spaceFrame, rect2: humanFrame)
                            isSpaceStone = isColliding(rect1: spaceFrame, rect2: stoneFrame)
                            isSpaceEnergy = isColliding(rect1: spaceFrame, rect2: energyFrame)
                        }
                        .onEnded { value in
                            lastSpacePosition = initialSpacePosition
                            
                            if rectangleFrame.contains(spacePosition) {
                                if(circleFrame.contains(spacePosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInSpace = false
                                        spacePosition = initialSpacePosition
                                    }
                                } else if (isSpaceHuman == true && isSpace == true && isHuman == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isAlien = true
                                        isSpace = false
                                        isHuman = false
                                        spacePosition = initialSpacePosition
                                        humanPosition = initialHumanPosition
                                    }
                                } else if (isSpaceStone == true && isSpace == true && isStone == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isMeteor = true
                                        isSpace = false
                                        isStone = false
                                        spacePosition = initialSpacePosition
                                        stonePosition = initialStonePosition
                                    }
                                } else if (isSpaceEnergy == true && isSpace == true && isEnergy == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isStar = true
                                        isSpace = false
                                        isEnergy = false
                                        spacePosition = initialSpacePosition
                                        energyPosition = initialEnergyPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastSpacePosition = spacePosition
                                        isInSpace = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    spacePosition = initialSpacePosition
                                    isInSpace = false
                                }
                            }
                        }
                )
            
            Image("fireI")
                .resizable()
                .frame(width: 65, height: 80)
                .opacity(isFire ? 1 : 0)
                .position(firePosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let fireFrame = CGRect(x: firePosition.x - 32.5, y: firePosition.y - 40, width: 65, height: 80)
                            let stoneFrame = CGRect(x: stonePosition.x - 45, y: stonePosition.y - 30, width: 90, height: 60)
                            firePosition = CGPoint(x: value.location.x, y: value.location.y)
                            isFireStone = isColliding(rect1: fireFrame, rect2: stoneFrame)
                        }
                        .onEnded { value in
                            lastFirePosition = initialFirePosition
                            
                            if rectangleFrame.contains(firePosition) {
                                if(circleFrame.contains(firePosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInFire = false
                                        firePosition = initialFirePosition
                                    }
                                } else if (isFireStone == true && isFire == true && isStone == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isVolcano = true
                                        isFire = false
                                        isStone = false
                                        firePosition = initialFirePosition
                                        stonePosition = initialStonePosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastFirePosition = firePosition
                                        isInFire = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    firePosition = initialFirePosition
                                    isInFire = false
                                }
                            }
                        }
                )
            
            Image("volcanoI")
                .resizable()
                .frame(width: 65, height: 80)
                .opacity(isVolcano ? 1 : 0)
                .position(volcanoPosition)
                .shadow(color: .gray, radius: 10)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            volcanoPosition = CGPoint(x: value.location.x, y: value.location.y)
                        }
                        .onEnded { value in
                            lastVolcanoPosition = initialVolcanoPosition
                            
                            if rectangleFrame.contains(volcanoPosition) {
                                if(circleFrame.contains(volcanoPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInVolcano = false
                                        volcanoPosition = initialVolcanoPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastVolcanoPosition = volcanoPosition
                                        isInVolcano = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    volcanoPosition = initialVolcanoPosition
                                    isInVolcano = false
                                }
                            }
                        }
                )
            
            Image("alienI")
                .resizable()
                .frame(width: 65, height: 80)
                .opacity(isAlien ? 1 : 0)
                .position(alienPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            let alienFrame = CGRect(x: alienPosition.x - 32.5, y: alienPosition.y - 40, width: 65, height: 80)
                            let energyFrame = CGRect(x: energyPosition.x - 35, y: energyPosition.y - 45, width: 70, height: 90)
                            alienPosition = CGPoint(x: value.location.x, y: value.location.y)
                            isAlienEnergy = isColliding(rect1: alienFrame, rect2: energyFrame)
                        }
                        .onEnded { value in
                            lastAlienPosition = initialALienPosition
                            
                            if rectangleFrame.contains(alienPosition) {
                                if(circleFrame.contains(alienPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInAlien = false
                                        alienPosition = initialALienPosition
                                    }
                                } else if (isAlienEnergy == true && isAlien == true && isEnergy == true){
                                    withAnimation(.spring(duration: 0.5)) {
                                        isUFO = true
                                        isAlien = false
                                        isEnergy = false
                                        alienPosition = initialALienPosition
                                        energyPosition = initialEnergyPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastAlienPosition = alienPosition
                                        isInAlien = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    alienPosition = initialALienPosition
                                    isInAlien = false
                                }
                            }
                        }
                )
            
            Image("meteoriteI")
                .resizable()
                .frame(width: 65, height: 80)
                .opacity(isMeteor ? 1 : 0)
                .position(meteorPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            meteorPosition = CGPoint(x: value.location.x, y: value.location.y)
                        }
                        .onEnded { value in
                            lastMeteorPosition = initialMeteorPosition
                            
                            if rectangleFrame.contains(meteorPosition) {
                                if(circleFrame.contains(meteorPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInMeteor = false
                                        meteorPosition = initialMeteorPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastMeteorPosition = meteorPosition
                                        isInMeteor = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    meteorPosition = initialMeteorPosition
                                    isInMeteor = false
                                }
                            }
                        }
                )
            
            Image("starI")
                .resizable()
                .frame(width: 80, height: 80)
                .opacity(isStar ? 1 : 0)
                .position(starPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            starPosition = CGPoint(x: value.location.x, y: value.location.y)
                        }
                        .onEnded { value in
                            lastStarPosition = initialStarPosition
                            
                            if rectangleFrame.contains(starPosition) {
                                if(circleFrame.contains(starPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInStar = false
                                        starPosition = initialStarPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastStarPosition = starPosition
                                        isInStar = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    starPosition = initialStarPosition
                                    isInStar = false
                                }
                            }
                        }
                )
            
            Image("ufoI")
                .resizable()
                .frame(width: 100, height: 100)
                .opacity(isUFO ? 1 : 0)
                .position(ufoPosition)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            let waterFrame = CGRect(x: waterPosition.x - 25, y: waterPosition.y - 50, width: 50, height: 100)
                            let airFrame = CGRect(x: airPosition.x - 45, y: airPosition.y - 30, width: 90, height: 60)
                            let dirtFrame = CGRect(x: dirtPosition.x - 45, y: dirtPosition.y - 30, width: 90, height: 60)
                            ufoPosition = CGPoint(x: value.location.x, y: value.location.y)
                        }
                        .onEnded { value in
                            lastUfoPosition = initialUfoPosition
                            
                            if rectangleFrame.contains(ufoPosition) {
                                if(circleFrame.contains(ufoPosition)) {
                                    withAnimation(.spring(duration: 0.5)) {
                                        isInUFO = false
                                        ufoPosition = initialUfoPosition
                                    }
                                } else {
                                    withAnimation (.spring(duration: 0.5)){
                                        lastUfoPosition = ufoPosition
                                        isInUFO = true
                                    }
                                }
                            } else {
                                withAnimation(.spring(duration: 0.5)) {
                                    ufoPosition = initialUfoPosition
                                    isInUFO = false
                                }
                            }
                        }
                )
            
            
            //            Text("\(String(congrats))")
            //                .font(.largeTitle)
            //                .foregroundStyle(.white)
//            Text(formattedTime(time: timeRemaining))
//                .font(.title)
//                .foregroundColor(.white)
//                .bold()
            
            ZStack {
                Rectangle()
                    .foregroundStyle(Color(UIColor(red: 0.24, green: 0.20, blue: 0.41, alpha: 1.00)))
                    .frame(width: 20, height: 25)
                    .padding(.bottom, 100)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color(UIColor(red: 0.41, green: 0.35, blue: 0.64, alpha: 1.00)))
                    .frame(width: 130, height: 80)
                    
                Text(formattedTime(time: elapsedTime))
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
            }.position(x: UISW * 0.5, y: UISH * 0.17)

            
            Button{
                if(isRain == true){
                    congrats.toggle()
                    isTimerRunning = false
                    if(congrats == true){
                        withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                            congratula += 40
                            if congratula > 20 {
                                congratula = -20
                            }
                        }
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
            } label: {
                Text("FINISH")
                    .font(.title)
                    .foregroundStyle(.white)
                    .bold()
                    .padding()
            }.background(Color(UIColor(red: 0.97, green: 0.67, blue: 0.19, alpha: 1.00)))
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 5)
                        .shadow(radius: 5)
                )
                .position(x: UISW * 0.65, y: UISH * 0.67)
                .opacity(isRain ? 1 : 0)
            
            ZStack {
                Circle()
                    .foregroundStyle(Color(UIColor(red: 0.42, green: 0.35, blue: 0.64, alpha: 1.00)))
                .frame(width: 80, height: 80)
                
                Circle()
                    .stroke(Color.white, lineWidth: 5)
                    .frame(width: 60, height: 60)
                
                Text("?")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()
            }.position(x: UISW * 0.9, y: UISH * 0.06)
                .onTapGesture{
                    withAnimation(.spring(duration: 0.5)) {
                        isLola = true
                    }
                    withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                        lola += 30
                        if lola > 15 {
                            lola = -15
                        }
                    }
                }
            
            ZStack {
                Circle()
                    .foregroundStyle(Color(UIColor(red: 0.42, green: 0.35, blue: 0.64, alpha: 1.00)))
                .frame(width: 80, height: 80)
                
                Circle()
                    .stroke(Color.white, lineWidth: 5)
                    .frame(width: 60, height: 60)
                
                Image("back")
                    .resizable()
                    .frame(width: 20, height: 30)
                    .foregroundStyle(.white)
                    .padding(.trailing, 5)
                
            }.position(x: UISW * 0.1, y: UISH * 0.06)
                .onTapGesture{
                    withAnimation(.spring(duration: 0.5)) {
                        level2 = false
                    }
                    
                }
            
            ZStack {
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width: UISW, height: UISH)
                    .opacity(info ? 0.75 : 0)
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(.white)
                    .frame(width: UISW * 0.65, height: UISH * 0.3)
                    .opacity(info ? 1 : 0)
                
                Text("In this level you have to get RAIN")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.black)
                    .padding(.horizontal)
                    .opacity(info ? 1 : 0)
            }
            
            Image("nube")
                .resizable()
                .frame(width: info ? 310 : 170, height: info ? 300 : 160)
                .position(x: info ? UISW * 0.5 : UISW * 0.31, y: info ? UISH * 0.36 : UISH * 0.675)
                .offset(y: offset)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                        withAnimation (.spring(duration: 1)){
                            info = false
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                withAnimation (.spring(duration: 1)){
                                    isTimerRunning = true
                                    startTimer()
                                    startTime()
                                }
                            }
                        }
                    }
                    withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                        offset += 20
                        if offset > 10 {
                            offset = -10
                        }
                    }
                }
            
            ZStack{
                Rectangle()
                    .frame(width: UISW, height: UISH)
                    .foregroundStyle(.black)
                    .opacity(0.7)
                
                ZStack {
                    
                    Image("score")
                        .resizable()
                        .frame(width: UISW * 0.55, height: UISH * 0.4)
                        .position(x: UISW * 0.5, y: UISH * 0.5)
                        .offset(y: congratula)
                    
                    Image(star3 ? "star 1" : "star 2")
                        .resizable()
                        .frame(width: star3 ? 150 : 200, height: star3 ? 150 : 200)
                        .position(x: UISW * 0.5, y: UISH * 0.285)
                        .offset(y: congratula)
                    
                    Image(star2 ? "star 1" : "star 2")
                        .resizable()
                        .rotationEffect(.degrees(-10))
                        .frame(width: star2 ? 90 : 130, height: star2 ? 90 : 130)
                        .position(x: UISW * 0.36, y: UISH * 0.32)
                        .offset(y: congratula)
                    
                    Image(star1 ? "star 1" : "star 2")
                        .resizable()
                        .rotationEffect(.degrees(10))
                        .frame(width: star1 ? 90 : 130, height: star1 ? 90 : 130)
                        .position(x: UISW * 0.63, y: UISH * 0.32)
                        .offset(y: congratula)
                    
                    
                    ZStack {
                        Image("btnScore")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                        
                        Text("FINISH")
                            .font(.custom("Futura-Bold", size: 30))
                            .foregroundStyle(.white)
                            .padding(.bottom, 5)
                        
                    }.onTapGesture {
                        withAnimation(.easeIn(duration: 0.5)) {
                            congrats = false
                        }
                        
                    }
                        .position(x: UISW * 0.5, y: UISH * 0.62)
                        .offset(y: congratula)
                    
                    Text(formattedTime(time: elapsedTime))
                        .font(.custom("Futura-Bold", size: 40))
                        .foregroundColor(.black)
                        .bold()
                        .position(x: UISW * 0.5, y: UISH * 0.515)
                        .offset(y: congratula)
                        .opacity(0.7)
                    
                    Text("TIMER:")
                        .font(.custom("Futura-Bold", size: 30))
                        .foregroundColor(.black)
                        .bold()
                        .position(x: UISW * 0.5, y: UISH * 0.45)
                        .offset(y: congratula)
                }
            }.ignoresSafeArea()
                .opacity(congrats ? 1 : 0)
            
            if timeRemaining == 0 {
                
                Circle()
                    .foregroundStyle(.clear)
                    .onAppear{
                        withAnimation(.spring(duration: 0.5)) {
                            isLola = true
                        }
                        withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                            lola += 30
                            if lola > 15 {
                                lola = -15
                            }
                        }
                    }
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 1)
                    .frame(width: UISW, height: UISH)
                    .foregroundStyle(.black)
                    .position(x: UISW * 0.5, y: UISH * 0.5)
                    .opacity(0.7)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            isLola = false
                        }
                    }
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: UISW * 0.4, height: UISH * 0.2)
                        .foregroundStyle(.white)
                        .position(x: UISW * 0.53, y: UISH * 0.6)
                    Triangle()
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                        .rotationEffect(Angle(degrees: 130))
                        .frame(width: 60, height: 50)
                        .position(x: UISW * 0.726, y: UISH * 0.692)
                    
                    Image("lolaPopup")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .position(x: UISW * 0.93, y: UISH * 0.75)
                    
                    ZStack {
                        Text("Remember that ")
                            .foregroundColor(.black)
                            .font(.custom("Futura-Bold", size: 20))
                        +
                        Text("CLOUDS ")
                            .foregroundColor(.gray)
                            .font(.custom("Futura-Bold", size: 20))
                        +
                        Text("hold ")
                            .foregroundColor(.black)
                            .font(.custom("Futura-Bold", size: 20))
                        +
                        Text("WATER")
                            .foregroundColor(.blue)
                            .font(.custom("Futura-Bold", size: 20))
                        +
                        Text(" to release it as a ")
                            .foregroundColor(.black)
                            .font(.custom("Futura-Bold", size: 20))
                        +
                        Text("RAIN")
                            .foregroundColor(Color(UIColor(red: 0.06, green: 0.31, blue: 1.00, alpha: 1.00)))
                            .font(.custom("Futura-Bold", size: 20))
                        +
                        Text(".")
                            .foregroundColor(.black)
                        .font(.custom("Futura-Bold", size: 20))
                    }.multilineTextAlignment(.center)
                    .frame(width: UISW * 0.35, height: UISH * 0.17)
                        .position(x: UISW * 0.53, y: UISH * 0.56)
                    
                    Button{
                        withAnimation(.easeInOut(duration: 0.5)) {
                            isLola = false
                        }
                    } label: {
                        Text("CLOSE")
                            .font(.title)
                            .foregroundStyle(.white)
                            .bold()
                            .padding()
                    }.background(Color(UIColor(red: 0.97, green: 0.67, blue: 0.19, alpha: 1.00)))
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 5)
                                .shadow(radius: 5)
                        )
                        .position(x: UISW * 0.53, y: UISH * 0.65)
                    
                }.offset(x: isLola ? 0 : UISW, y: isLola ? lola : 0)
            }.opacity(isLola ? 1 : 0)
            
        }.ignoresSafeArea()
            .onAppear {
                initialwaterPosition = CGPoint(x: positionIXWater, y: positionIYWater)
                waterPosition = initialwaterPosition
                
                initialAirPosition = CGPoint(x: positionIXAir, y: positionIYAir)
                airPosition = initialAirPosition
                
                initialDirtPosition = CGPoint(x: positionIXDirt, y: positionIYDirt)
                dirtPosition = initialDirtPosition
                
                initialCloudPosition = CGPoint(x: positionIX, y: positionIY)
                cloudPosition = initialCloudPosition
                
                initialStonePosition = CGPoint(x: positionIX, y: positionIY)
                stonePosition = initialStonePosition
                
                initialPlantPosition = CGPoint(x: positionIX, y: positionIY)
                plantPosition = initialPlantPosition
                
                initialEnergyPosition = CGPoint(x: positionIX, y: positionIY)
                energyPosition = initialEnergyPosition
                
                initialRainPosition = CGPoint(x: positionIX, y: positionIY)
                rainPosition = initialRainPosition
                
                initialHumanPosition = CGPoint(x: positionIX, y: positionIY)
                humanPosition = initialHumanPosition
                
                initialSpacePosition = CGPoint(x: positionIX, y: positionIY)
                spacePosition = initialSpacePosition
                
                initialFirePosition = CGPoint(x: positionIX, y: positionIY)
                firePosition = initialFirePosition
                
                initialVolcanoPosition = CGPoint(x: positionIX, y: positionIY)
                volcanoPosition = initialVolcanoPosition
                
                initialALienPosition = CGPoint(x: positionIX, y: positionIY)
                alienPosition = initialALienPosition
                
                initialMeteorPosition = CGPoint(x: positionIX, y: positionIY)
                meteorPosition = initialMeteorPosition
                
                initialStarPosition = CGPoint(x: positionIX, y: positionIY)
                starPosition = initialStarPosition
                
                initialUfoPosition = CGPoint(x: positionIX, y: positionIY)
                ufoPosition = initialUfoPosition
            }
    }
    
    func isColliding(rect1: CGRect, rect2: CGRect) -> Bool {
        return rect1.intersects(rect2)
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if isTimerRunning {
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    timer.invalidate()
                }
            }
        }
    }
    
    func startTime() {
           Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
               if isTimerRunning{
                   elapsedTime += 1
               }
           }
       }
    
    func formattedTime(time: Int) -> String {
        let minutes = time / 60
        let seconds = time % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

struct Level2View_Previews: PreviewProvider {
    static var previews: some View {
        let level2View = State(initialValue: false)
        return Level2View(level2: level2View.projectedValue)
    }
}
