//
//  GameManagerVM.swift
//  D-Braille
//
//  Created by LowVisionProject on 19/06/2023.
//

import Foundation
import SwiftUI

class GameManagerVM : ObservableObject {

    static var currentIndex = 0

    static func createGameModel(i:Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData[i])
    }
    
    @Published var model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)


    var timer = Timer()
    var maxProgress = 20
    @Published var progress = 0

    init() {
        self.start()
    }

    func verifyAnswer(selectedOption: QuizOption) {
        for index in model.quizModel.optionsList.indices {
            model.quizModel.optionsList[index].isMatched = false
            model.quizModel.optionsList[index].isSelected = false

        }
        if let index = model.quizModel.optionsList.firstIndex(where: {$0.optionId == selectedOption.optionId}) {
            if selectedOption.optionId ==  model.quizModel.answer {
                model.quizModel.optionsList[index].isMatched = true
                model.quizModel.optionsList[index].isSelected = true

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                    if (GameManagerVM.currentIndex < 2) {
                        GameManagerVM.currentIndex = GameManagerVM.currentIndex + 1
                        self.model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
                    } else {
                        self.model.quizCompleted = true
                        self.model.quizWinningStatus = true
                        self.reset()
                    }
                }
            } else {
                model.quizModel.optionsList[index].isMatched = false
                model.quizModel.optionsList[index].isSelected = true
            }

        }
    }

    func restartGame() {
        GameManagerVM.currentIndex = 0
        model = GameManagerVM.createGameModel(i: GameManagerVM.currentIndex)
        self.start()
    }

    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats:true, block: { time in
            if self.progress == self.maxProgress {
                self.model.quizCompleted = true
                self.model.quizWinningStatus = false
                self.reset()
            } else {
                self.progress += 1
            }
        })
    }

    func reset () {
        timer.invalidate()
        self.progress = 0
    }






}

extension GameManagerVM
{
    static var quizData: [QuizModel] {
        [
             QuizModel(question: "What is combination for letter a?",
                     answer: "B",
                      optionsList: [QuizOption(id: 11, optionId: "A", option: "1 2", color: Color.yellow),
                                     QuizOption(id: 12,optionId: "B", option: "1", color: Color.yellow),
                                    QuizOption(id: 13,optionId: "C", option: "1 2 3", color: Color.yellow),
                                    QuizOption(id: 14,optionId: "D", option: "1 4 5 6", color: Color.yellow)]),

             QuizModel(question: "What is combination for letter b?",
                       answer: "C",
                       optionsList: [QuizOption(id: 21,optionId: "A", option: "1 ", color: Color.yellow),
                                     QuizOption(id: 22,optionId: "B", option: "2 4", color: Color.yellow),
                                     QuizOption(id: 23,optionId: "C", option: "1 2", color: Color.yellow),
                                     QuizOption(id: 24,optionId: "D", option: "3 5", color: Color.yellow)]),

             QuizModel(question: "what is combination for number 1?",
                       answer: "B",
                       optionsList: [QuizOption(id: 31,optionId: "A", option: "2 3", color: Color.yellow),
                                     QuizOption(id: 32,optionId: "B", option: "3 4 5 6 1", color: Color.yellow),
                                     QuizOption(id: 33,optionId: "C", option: "3 4 5 6 2 4", color: Color.yellow),
                                    QuizOption(id: 34,optionId: "D", option: "2 3 5", color: Color.yellow)])
        ]
    }
}


