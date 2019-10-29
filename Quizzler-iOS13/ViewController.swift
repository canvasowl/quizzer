//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + 2 equals 6","True"],
        ["I am better then you", "False"],
        ["I am worst then you", "True"]
    ]
    
    var questionNumber = 0
    var correct = 0
    var incorrect = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    fileprivate func updateUI() {
        if questionNumber + 1 >= quiz.count{
            questionLabel.text = "QUIZ DONE!"
        }else{
            questionNumber += 1
            questionLabel.text = quiz[questionNumber][0]
        }
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        print(questionNumber)
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            correct += 1
        }else{
            incorrect += 1
        }
                        
        updateUI()
    }
    
    

}
