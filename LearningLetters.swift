//
//  LearningLetters.swift
//  D-Braille
//
//  Created by LowVisionProject on 19/06/2023.
//



//
//  Learning Letters.swift
//  D-Braille
//
//  Created by Abdallah Amadou Gueye on 25.02.23.
//

import SwiftUI
import AVKit
class soundManager {
   static let instance = soundManager()
    
    var player: AVAudioPlayer?
    
    func playSound() {
        
        guard  let url = Bundle.main.url(forResource: "clicksound", withExtension: ".mp3") else { return }
        
        do{
            player =  try AVAudioPlayer(contentsOf: url )
            player?.play()
        } catch let error {
            print("Error playing sound.\(error.localizedDescription)")
        }
    }
}
struct Learning_Letters: View {
    @State private var isButton1Clicked = false
    @State private var isButton2Clicked = false
    @State private var isButton3Clicked = false
    @State private var isButton4Clicked = false
    @State private var isButton5Clicked = false
    @State private var isButton6Clicked = false
    @State private var navigateToNextView = false

    var body: some View {
        NavigationView {
            //LazyVGrid{
            ZStack {
                Color(red: 1, green: 0.929, blue: 0.063).edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Buchstaben lernen")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                        
                    HStack {
                        
                            Button(action: {
                                soundManager.instance.playSound()
                                isButton1Clicked.toggle()
                            }) {
                                Text("1")
                                    .font(.largeTitle).bold()
                                    .foregroundColor(isButton1Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                                    .frame(width: 150, height: 150)
                                    .background(isButton1Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                                    .cornerRadius(25)
                            }
                            .buttonStyle(CustomButtonStyle())
                            .accessibilityLabel(" punkt 1 angeklickt")
                        
                        Button(action: {
                            soundManager.instance.playSound()
                            isButton4Clicked.toggle()
                        }) {
                            Text("4")
                                .font(.largeTitle).bold()
                                .foregroundColor(isButton4Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                                .frame(width: 150, height: 150)
                                .background(isButton4Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                                .cornerRadius(25)
                        }
                        .buttonStyle(CustomButtonStyle())
                        .accessibilityLabel(" punkt 4 angeklickt")
                    }
                    .padding()
                    HStack{
                        Button(action: {
                            soundManager.instance.playSound()
                        isButton2Clicked.toggle()
                    }) {
                        Text("2")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton2Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 150, height: 150)
                            .background(isButton2Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    .buttonStyle(CustomButtonStyle())
                    .accessibilityLabel(" punkt 2 angeklickt")
                    Button(action: {
                        soundManager.instance.playSound()
                        isButton5Clicked.toggle()
                    }) {
                        Text("5")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton5Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 150, height: 150)
                            .background(isButton5Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    .buttonStyle(CustomButtonStyle())
                    .accessibilityLabel(" punkt 5 angeklickt")
                        
                    }
                    .padding(10)
                    HStack{
                        Button(action: {
                            soundManager.instance.playSound()
                        isButton3Clicked.toggle()
                    }) {
                        Text("3")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton3Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 150, height: 150)
                            .background(isButton3Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    .buttonStyle(CustomButtonStyle())
                    .accessibilityLabel(" punkt 3 angeklickt")
                    Button(action: {
                        soundManager.instance.playSound()
                        isButton6Clicked.toggle()
                    }) {
                        Text("6")
                            .font(.largeTitle).bold()
                            .foregroundColor(isButton6Clicked ? (Color.white) : Color(red: 0, green: 0.102, blue: 0.545))
                            .frame(width: 150, height: 150)
                            .background(isButton6Clicked ? Color(red: 0, green: 0.102, blue: 0.545) : Color.white)
                            .cornerRadius(25)
                    }
                    
                        .buttonStyle(CustomButtonStyle())
                        .accessibilityLabel(" punkt 6 angeklickt")
                        
                    }
                    .padding(10)
                
                    
                        .navigationDestination(isPresented: $navigateToNextView) {
                            destinationView()
                        }
                    Spacer()
                        
                    Button(action: {
                        navigateToNextView = true
                    }) {
                        Text("NÄCHSTE").accessibilityLabel("Nächste")
                            .font(.largeTitle).bold()
                            .foregroundColor(Color.white)
                            .frame(width: 340, height: 110)
                            .background(Color(red: 0, green: 0.102, blue: 0.545))
                            .cornerRadius(25)
                    }
                    .fullScreenCover(isPresented: $navigateToNextView) {
                        destinationView()
                    }
                    
                }
            }
        }
        
    }
    func destinationView() -> AnyView {
        switch(isButton1Clicked, isButton2Clicked, isButton3Clicked, isButton4Clicked, isButton5Clicked, isButton6Clicked) {
        case(true, false, false, false, false, false) :
            return AnyView(Letter_a())
            
        case(true, true, false, false, false, false) :
            return AnyView(letter_b())
            
        case(true, false, false, true, false, false) :
            return AnyView(letter_c())
            
        case(true, false, false, true, true, false) :
            return AnyView(letter_d())
            
        case(true, false, false, false, true, false) :
            return AnyView(letter_e())
            
        case(true, true, false, true, false, false) :
            return AnyView(letter_f())

        case(true, true, false, true, true, false) :
            return AnyView(letter_g())
            
        case(true, true, false, false, true, false) :
            return AnyView(letter_h())

        case(false, true, false, true, false, false) :
            return AnyView(letter_i())
            
        case(false, true, false, true, true, false) :
            return AnyView(letter_j())
            
        case(true, false, true, false, false, false) :
            return AnyView(letter_k())
            
        case(true, true, true, false, false, false) :
            return AnyView(letter_l())
            
        case(true, false, true, true, false, false) :
            return AnyView(letter_m())
            
        case(true, false, true, true, true, false) :
            return AnyView(letter_n())

        case(true, false, true, false, true, false) :
            return AnyView(letter_o())

        case(true, true, true, true, false, false) :
            return AnyView(letter_p())

        case(true, true, true, true, true, false) :
            return AnyView(letter_q())

        case(true, true, true, false, true, false) :
            return AnyView(letter_r())

        case(false, true, true, false, true, false) :
            return AnyView(letter_s())

        case(false, true, true, true, true, false) :
            return AnyView(letter_t())

        case(true, false, false, true, false, true) :
            return AnyView(letter_u())

        case(true, true, true, false, false, true) :
            return AnyView(letter_v())

        case(false, true, false, true, true, true) :
            return AnyView(letter_w())
            
        case(true, false, true, true, false, true) :
            return AnyView(letter_x())

        case(true, false, true, true, true, true) :
            return AnyView(letter_y())

        case(true, false, true, false, true, true) :
            return AnyView(letter_z())

            
        default:
            return AnyView( no_letter())
        }
    }
}


struct Learning_Letters_Previews: PreviewProvider {
    static var previews: some View {
        Learning_Letters()
    }
}
