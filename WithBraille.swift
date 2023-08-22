//
//  WithBraille.swift
//  D-Braille
//
//  Created by LowVisionProject on 13/07/2023.
//

import SwiftUI
import AVKit
class SoundManager {
   static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound() {
        
        guard  let url = Bundle.main.url(forResource: "winsound", withExtension: ".mp3") else { return }
        
        do{
            player =  try AVAudioPlayer(contentsOf: url )
            player?.play()
        } catch let error {
            print("Error playing sound.\(error.localizedDescription)")
        }
    }
}
struct WithBraille: View {
     
    @State private var navigateToNextView = false
    @State private var navigateToNextView2 = false
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0, green: 0.102, blue: 0.545).edgesIgnoringSafeArea(.all)
                VStack{
                    Text("BRAILLE LERNEN")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                        .padding(20)
                    Text("Buchstabe i Finden?").accessibilityLabel(" Buchstabe i Finden")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                    Spacer()
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                            
                                )
                                .font(.system(size:30))
                            
                            //.foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            SoundManager.instance.playSound()
                        }, label: {
                            Text("i")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            //.foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                    }
                    HStack{
                        Button(action: {
                            SoundManager.instance.playSound()
                        }, label: {
                            Text("i")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            //.foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                            
                                )
                                .font(.system(size:30))
                            
                            
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            SoundManager.instance.playSound()
                        }, label: {
                            Text("i")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            //  .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                    }
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                        Button(action: {
                            
                        }, label: {
                            Text("%")
                                .bold()
                                .frame(width: 58, height: 70)
                                .background(Color(red: 0, green: 0.102, blue: 0.545)
                                )
                                .font(.system(size:30))
                            
                            // .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                        })
                    }
                    
                    
                    Spacer()
                    
                        
                        NavigationLink( destination:Tactile2()){
                             
                                 Text("NÄCHSTE").accessibilityLabel("Nächste")
                                .font(.largeTitle).bold()
                                .foregroundColor(Color.white)
                                .frame(width: 340, height: 110)
                                .background(Color(red: 1, green: 0.929, blue: 0.063))
                                .cornerRadius(25)
                                     
                                 
                                     .foregroundColor(.white)
                                     .bold()
                                     .font(.system(size:30))
                             
                                     
                             }
                        
                        .buttonStyle(CustomButtonStyle())
                        Button(action: {
                            navigateToNextView2 = true
                        }) {
                            Text("STARSEITE").accessibilityLabel("STARSEITE")
                                .font(.largeTitle).bold()
                                .foregroundColor(Color.white)
                                .frame(width: 340, height: 110)
                                .background(Color(red: 1, green: 0.929, blue: 0.063))
                                .cornerRadius(25)
                        
                                .fullScreenCover(isPresented: $navigateToNextView2) {
                                    ContentView()
                                }
                        
                        
                        
                        
                    }
                        .fullScreenCover(isPresented: $navigateToNextView2) {
                            ContentView()
                        }
                    
                }
                }
            }
        }
    }
    
    
    struct WithBraille_Previews: PreviewProvider {
        static var previews: some View {
            WithBraille()
        }
    }

