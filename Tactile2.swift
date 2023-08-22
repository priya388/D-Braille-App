//
//  Tactile2.swift
//  D-Braille
//
//  Created by LowVisionProject on 20/08/2023.
//

import SwiftUI

struct Tactile2: View  {
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
                    Text("Finde den Buchstabe m und markien ihn?").accessibilityLabel("Finde den Buchstabe m und markien ihn")
                        .font(.system(size:40)).bold()
                        .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                        .padding(5)
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
                            SoundManager.instance.playSound()
                        }, label: {
                            Text("m")
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
                            Text("m")
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
                            SoundManager.instance.playSound()
                        }, label: {
                            Text("m")
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
                            
                            //  .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
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
                            Text("STARSEITE").accessibilityLabel("starseite")
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

struct Tactile2_Previews: PreviewProvider {
    static var previews: some View {
        Tactile2()
    }
}
