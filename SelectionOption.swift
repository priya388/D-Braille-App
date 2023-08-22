//
//  SelectionOption.swift
//  D-Braille
//
//  Created by LowVisionProject on 16/07/2023.
//

import SwiftUI

struct SelectionOption: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0, green: 0.102, blue: 0.545).edgesIgnoringSafeArea(.all)
                VStack {
                    Text("BRAILLE LERNEN")
                        .font(.largeTitle).bold()
                    .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                    .padding(50)
                    Spacer()
                   NavigationLink( destination:WithoutBraille()){
                       
                       Text("BUCHSTABEN").accessibilityLabel("Buchstaben")
                           .bold()
                           .frame(width: 340, height: 110)
                           .background(Color(red: 1, green: 0.929, blue: 0.063))
                           .cornerRadius(25)
                           .font(.system(size:40))
                       
                           .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                           .bold()
                                
                        }
                    NavigationLink( destination: Numberchoose()){
                        
                        Text("ZAHLEN").accessibilityLabel("Zahlen")
                            .bold()
                            .frame(width: 340, height: 110)
                            .background(Color(red: 1, green: 0.929, blue: 0.063))
                            .cornerRadius(25)
                            .font(.system(size:40))
                        
                            .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                            .bold()
                        }
                    .padding(40)
                    
                    
                }
            }
        }
    }
}

struct SelectionOption_Previews: PreviewProvider {
    static var previews: some View {
        SelectionOption()
    }
}
