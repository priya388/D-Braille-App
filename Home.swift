//
//  Home.swift
//  D-Braille
//
//  Created by LowVisionProject on 10/05/2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0, green: 0.102, blue: 0.545).edgesIgnoringSafeArea(.all)
                VStack{
                    Text("BRAILLE LERNEN")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                        Spacer()
                    NavigationLink( destination: ContentView()){
                        
                        Text("Bist Du Eine Schulerin?").accessibilityLabel("Bist Du Eine Schulerin")
                            .bold()
                            .frame(width: 350, height: 110)
                            .background(Color(red: 1, green: 0.929, blue: 0.063))
                            .cornerRadius(25)
                            .font(.system(size:30))
                        
                            .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                            .bold()
                                
                        }
                    NavigationLink( destination: login ()){
                        
                        Text("Bist Du Eine Lehrkraft?") .accessibilityLabel("Bist Du Eine Lehrkraft")
                                .bold()
                                .bold()
                                .frame(width: 350, height: 110)
                                .background(Color(red: 1, green: 0.929, blue: 0.063))
                                .cornerRadius(25)
                                .font(.system(size:30))
                            
                                .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                        }
                    .padding(40)
                        }
                    }
                }
            }
            
        }
    
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }

