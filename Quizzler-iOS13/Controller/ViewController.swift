//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by SAGAR C BELLAD on 23/03/2020.
//  Copyright © 2019 The App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
     
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    var buttonAddress = ""

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        var answerGiven = sender.currentTitle!
        var userGotItRight = quizBrain.checkAnswer(answerGiven)
        
        if (userGotItRight){
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
    
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo:nil ,repeats: false)
    }
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
}

