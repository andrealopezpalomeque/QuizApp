//
//  QuizBrain.swift
//  QuizApp
//
//  Created by Andrea Victoria López Palomeque on 12/09/2023.
//

import Foundation
import UIKit

struct QuizBrain {
    
    let questions = [
        Question(text: "Tokio always has been the capital of Japan.", answer: "FALSE", color: UIColor.black, image: UIImage(named:"tokio")!),
        Question(text: "The Great Wall of China is visible from space.", answer: "FALSE", color: UIColor.black, image: UIImage(named:"great_wall")!),
        Question(text: "The Nile River is the longest river in the world.", answer: "TRUE", color: UIColor.black, image: UIImage(named:"nile_river")!),
    ]
    

    var numQuestion = 0
    var score = 0
    
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == questions[numQuestion].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getTextQuestion() -> String {
        return questions[numQuestion].text
    }
    
    func getProgress() -> Float {
        let progress = Float(numQuestion + 1) / Float(questions.count)
        return progress
    }
    
    func getColor() -> UIColor {
        return questions[numQuestion].color
    }
    
    func getImage() -> UIImage {
        return questions[numQuestion].image
    }
    
    mutating func nexQuestion() -> Bool {
        if numQuestion + 1 < questions.count {
            numQuestion += 1
            return false
        } else {
            numQuestion = 0 //to reset the quiz
            return true
        }
    }
}
