//
//  Searchview.swift
//  D-Braille
//
//  Created by LowVisionProject on 12/05/2023.
//

import SwiftUI

struct Searchview: View {
    @Binding var text: String
    @State private var isEditing = false
    var body: some View {
        HStack{
            TextField("Search for Categories", text: $text)
                .padding(15)
                .padding(.horizontal,20)
                .background(Color(.systemGray6))
                .foregroundColor(.blue)
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("mainfont"))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                        
                     if isEditing {
                            Button(action: {
                                self.text = ""
                            }){
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                ).onTapGesture {
                    self.isEditing = true
                }
            if isEditing{
                Button(action : {
                    self.isEditing = false
                    self.text = ""
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }){
                    Text("cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}



