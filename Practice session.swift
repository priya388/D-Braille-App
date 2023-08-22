//
//  Practice session.swift
//  D-Braille
//
//  
//

import SwiftUI

struct Practice_session: View {
    @State private var isButton1Clicked = false
    @State private var isButton2Clicked = false
    @State private var isButton3Clicked = false
    @State private var isButton4Clicked = false
    @State private var isButton5Clicked = false
    @State private var isButton6Clicked = false
    @State private var navigateToNextView = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 1, green: 0.929, blue: 0.063).edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Buchstabe Üben")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                        
                    Spacer()
                    HStack{
                        
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
                    .padding(10)
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
                    HStack{                    Button(action: {
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
}
                    .padding(10)
                    .buttonStyle(CustomButtonStyle())
                    .accessibilityLabel(" punkt 6 angeklickt")
                   
                    .navigationDestination(isPresented: $navigateToNextView) {
                        destinationView()
                    }
                    Spacer()
                    Button(action: {
                        navigateToNextView = true
                    }) {
                        Text("NÄCHSTE")
                            .font(.largeTitle).bold()
                            .foregroundColor(Color.white)
                            .frame(width: 346, height: 110)
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
        case(true, true, false, false, false, false) :
            return AnyView(Answer_of_letter_f())
            
        case(true, true, false, true, false, false) :
            return AnyView(Answer_of_letter_f())
            
        case(true, false, false, true, false, true) :
            return AnyView(Answer_of_letter_f())
            
        case(true, true, false, false, true, true) :
            return AnyView(Answer_of_letter_f())
            
        default:
            return AnyView(Wrong_Answer())
        }
    }
}

struct Practice_session_Previews: PreviewProvider {
    static var previews: some View {
        Practice_session()
    }
}
