//
//  login.swift
//  D-Braille
//
//  Created by LowVisionProject on 06/05/2023.
//

import SwiftUI
import Firebase

struct login: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn  = false
    
    var body: some View {
        if userIsLoggedIn {
        teacherscreen()
        } else  {
            content
        }
    }
    var content: some View{
        
        ZStack {
             Color( red: 0, green: 0.102,blue: 0.545)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        
                        Text("BRAILLE LERNEN")
                            .font(.largeTitle).bold()
                            .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                        
                      
                            
                            TextField("Email", text: $email)
                                .foregroundColor(.yellow)
                                .textFieldStyle(.plain)
                                .placeholder(when: email.isEmpty){
                                    Text ("Email")
                                        .foregroundColor(.yellow)
                                        .bold()
                                    
                                    
                                }
                            Rectangle()
                                .frame(width: 350,height: 1)
                                .foregroundColor(.yellow)
                            
                            SecureField("Password",text: $password)
                                .foregroundColor(.yellow)
                                .textFieldStyle(.plain)
                                .placeholder(when: password.isEmpty){
                                    Text("password")
                                        .foregroundColor(.yellow)
                                        .bold()
                                }
                            
                            Rectangle()
                                .frame(width: 350,height: 1)
                                .foregroundColor(.yellow)
                            
                            Button{
                                Login()
                            } label: {
                                Text ("Sign In")
                                    .bold()
                                    .frame(width: 200, height: 40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.white)
                                    )
                                
                                    .foregroundColor(.blue)
                                    .bold()
                                
                                
                                
                            }
                            .padding(.top)
                            .offset(y: 100)
                            Button{
                                Login()
                                
                            } label: {
                                Text("Already have an account? Login")
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding(.top)
                            .offset(y: 110)
                        
                        }
                        .frame(width: 350)
                        .onAppear{
                            Auth.auth().addStateDidChangeListener{ auth,user in
                                if user  !=  nil {
                                
                               // userIsLoggedIn.toggle()
                                
                            }
                                
                            }
                        }
                            
                            
                        
                        
                    }
    }
        
            
    
    func Login(){
        Auth.auth().signIn(withEmail: email, password: password){ result,error in if error != nil{
            print(error!.localizedDescription)} else {
                userIsLoggedIn.toggle()
            }
        
        }
    }
    
    
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password){ Result, error in if error != nil{
            print(error!.localizedDescription)
        }
            
        }
    }
    
        
        struct login_Previews: PreviewProvider {
            static var previews: some View {
                login()
            }
        }
    }
    
    extension View {
        func placeholder<Content: View >(
            when shouldShow:Bool,
            alignment: Alignment = .leading,
            @ViewBuilder placeholder: () -> Content) -> some View {
                
                ZStack(alignment: alignment) {
                    placeholder().opacity(shouldShow ? 1 : 0)
                    self
                }
                
            }
    }
    
    
    

