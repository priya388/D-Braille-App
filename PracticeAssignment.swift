//
//  PracticeAssignment.swift
//  D-Braille
//
//  Created by LowVisionProject on 18/06/2023.
//

import SwiftUI

struct PracticeAssignment: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0, green: 0.102, blue: 0.545).edgesIgnoringSafeArea(.all)
                VStack{
                    Text("BRAILLE LERNEN")
                        .font(.largeTitle).bold()
                        .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                        .padding(40)
                    NavigationLink( destination: WithBraille()){
                        
                            Text("Mit Braille")
                                .bold()
                                .bold()
                                .frame(width: 340, height: 110)
                                .background(Color(red: 1, green: 0.929, blue: 0.063))
                                .cornerRadius(25)
                                .font(.system(size:40))
                            
                                .foregroundColor(Color(red: 0, green: 0.102, blue: 0.545))
                                .bold()
                            
                                
                        }
                   
                    NavigationLink( destination: SelectionOption()){
                        
                            Text("Ohne Braille")
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
    
    struct PracticeAssignment_Previews: PreviewProvider {
        static var previews: some View {
            PracticeAssignment()
        }
    }
}
