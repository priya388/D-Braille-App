//
//  ContentView.swift
//  D-Braille
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0, green: 0.102, blue: 0.545).edgesIgnoringSafeArea(.all)
                VStack {
                    Text("BRAILLE LERNEN")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                    HStack( spacing: 86)
                    {
                       
                        NavigationLink( destination:
                                            Learning_Letters()){
                            Image("Buchstaben lernen").accessibilityLabel("Buchstaben lernen")
                        }
                        NavigationLink (destination: Practice_Letters()) {
                            Image("Buchstaben üben").accessibilityLabel("Buchstaben üben")
                        }
                    }
                    Spacer()
                    HStack( spacing: 86) {
                        NavigationLink( destination: Learning_Numbers()){
                            Image("Zahlen lernen").accessibilityLabel("Zahlen lernen")
                        }
                        Image("Zahlen üben").accessibilityLabel("Zahlen üben")
                    }
                    Spacer()
                    HStack( spacing: 86) {
                        NavigationLink( destination:
                                            PracticeAssignment()){
                            
                            
                            Image("Wörter lernen").accessibilityLabel("Wörter lernen")
                        }
                        
                        NavigationLink( destination: QuizQuestions(gameManagerVM: GameManagerVM()))
                        {Image("Wörter üben").accessibilityLabel("Wörter üben")}
                        
                    }
                    
                                        
                        
                        
                        Spacer()
                        
                        
                        Image("ANFANG")
                    }
                }
            }
        }
    }
    struct CustomButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
                .opacity(configuration.isPressed ? 0.8 : 1.0)
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

