//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Sagar c bellad on 24/03/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quiz = [
        Question(q : "A slugs blood is green.",a : "True"),
        Question(q : "Approximately one fourth of human bone is in feet.",a : "True"),
        Question(q : "The total surface of Human lungs are approximately 70 square meters.",a : "True"),
        Question(q : "In west virginia,USA,if you hit an animal by a vechicle you are free to take it home and eat.",a : "True"),
        Question(q : "In UK if you die in the house of parliment you are techinally entitled to the state funeral,because the building is considered to be too sacred a place.",a : "False"),
        Question(q : "It is illigal to pee in the ocean of Portugal.",a : "True"),
        Question(q : "You can lead a cow down the stairs but not up the stairs.",a : "False"),
        Question(q : "Google was orignally called the 'Backrub'.",a : "True"),
        Question(q : "Buzz Aldrin's mother maiden name was 'Moon'.",a : "True"),
        Question(q : "The loudest sound produced by any animal is 188 decibels.That animal is African Elephant.",a : "False"),
        Question(q : "No piece of dry paper can be folded in half more than 7 times.",a : "False"),
        Question(q : "Chocolate affects  a dog's heart and nervous system;a few ounces are enough to kill a small dog.",a : "True"),
    ]
    var questionNumber = 0
    
    func checkAnswer (_ userAnswer: String) -> Bool{
        if (userAnswer == quiz[questionNumber].answer){
            return (true)
        }
        else{
            return (false)
        }
    }
    func getQuestionText() -> String{
        return(quiz[questionNumber].text)
    }
    func getProgress() ->Float{
        var progress = Float(questionNumber)/Float(11)
        return(progress)
    }
    mutating func nextQuestion(){
        if(questionNumber<11){
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
    }
}
