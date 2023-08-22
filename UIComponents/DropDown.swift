//
//  DropDown.swift
//  D-Braille
//
//  Created by LowVisionProject on 12/05/2023.
//

import SwiftUI

struct DropDown: View {
    @State var expand = false
    @Binding var viewSelectedCategory: String
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Text("Select Category")
                        .foregroundColor(.black )
                    Image(systemName:expand ? "chevron.up" : "chevron.down")
                        .font(.system(size:10))
                        .foregroundColor(.gray)
                    
                }.onTapGesture {
                    withAnimation(.spring()){
                        self.expand.toggle()
                    }
                }
                
                Button(action:  {
                    self.expand.toggle()
                }){}
                
                
                if expand{
                    VStack(alignment: .leading, spacing: 10) {
                        Button(action: {
                            self.viewSelectedCategory = "Easy"
                        }, label: {
                            Text("Easy")
                                .foregroundColor(.black)
                        })
                        
                        Divider()
                        Button(action: {
                            self.viewSelectedCategory = "Medium"
                        }, label: {
                            Text("Medium")
                                .foregroundColor(.black)
                        })
                        Divider()
                        Button(action: {
                            self.viewSelectedCategory = "Difficult"
                        }, label: {
                            Text("Difficult")
                                .foregroundColor(.black)
                        })
                        Divider()
                       // Button(action: {
                          //  self.viewSelectedCategory = "Difficult"
                      //  }, label: {
                         //   Text("Difficult")
                             //   .foregroundColor(.black)
                        
                    }
                }
                
                //
                
            }
        }
    }
}


