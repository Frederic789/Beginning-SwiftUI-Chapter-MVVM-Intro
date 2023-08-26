//
//  QuizVM.swift
//  Chapter-MVVM-Intro
//
//  Created by Mike Panitz on 5/20/23.
//

import Foundation

class QuizViewModel: ObservableObject {
    @Published private var model: Quiz

    init(model: Quiz) {
        self.model = model
    }

    // Exposed properties and methods
    var questions: [String] {
        return model.questions
    }

    @Published var currentQuestionIndex: Int = 0

    func getNextQuestion() {
        // Increment the currentQuestionIndex to move to the next question
        currentQuestionIndex += 1
        
        // Check if the index goes out of bounds and wrap back to the first question if needed
        if currentQuestionIndex >= questions.count {
            currentQuestionIndex = 0
        }
    }
}

