//
//  QuizQuestions.swift
//  D-Braille
//
//  Created by LowVisionProject on 18/06/2023.
//

import SwiftUI

struct QuizQuestions: View {
    @ObservedObject var gameManagerVM: GameManagerVM
    var body: some View {
        ZStack {
            Color(red: 0, green: 0.102, blue: 0.545).edgesIgnoringSafeArea(.all)
            if (gameManagerVM.model.quizCompleted) {
                QuizCompletedView(gameManagerVM: gameManagerVM)
            } else {
                VStack {
                    ReusableText(text: "BRAILLE LERNENEN", size: 30)
                        .foregroundColor(Color(red: 1, green: 0.929, blue: 0.063))
                        .padding()
                    
                    ReusableText(text: gameManagerVM.model.quizModel.question, size: 40)
                        .lineLimit(4)
                       // .frame(width: UIScreen.main.bounds.size.width - 20, height: 60, alignment: .center)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                   // ZStack {
                      //  Circle()
                        //    .stroke(lineWidth: 20)
                          //  .foregroundColor(.gray)
                            //.opacity(0.3)
                        
                        
                        //Circle()
                          //  .trim(from: 0.0, to: //min(CGFloat((Double(gameManagerVM.progress) * Double(gameManagerVM.maxProgress))/100),1.0))
                            //.stroke(LinearGradient(colors: [.orange, .red],
                              //                     startPoint: .topLeading,
                                //                   endPoint: .bottomTrailing),
                                  //  style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                           // .rotationEffect(Angle(degrees: 270))
                            //.animation(Animation.linear(duration: Double(gameManagerVM.maxProgress)), value: gameManagerVM.progress)
                        
                       // ReusableText(text: String(gameManagerVM.progress), size: 30)
                   // }.frame(width: 150, height: 150)
                    
                    
                    Spacer()
                    
                    OptionsGridView(gameManagerVM: gameManagerVM)
                }
            }
        }
    }
}

struct QuizQuestions_Previews: PreviewProvider {
    static var previews: some View {
        QuizQuestions(gameManagerVM: GameManagerVM())
    }
}


