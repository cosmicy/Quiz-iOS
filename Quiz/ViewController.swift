//
//  ViewController.swift
//  Quiz
//
//  Created by cymac on 16/7/14.
//  Copyright © 2016年 cymac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel:UILabel!
    @IBOutlet var answerLabel:UILabel!
    
    let question : [String] = ["q1sdf","q2flskd","q3ldskjf"]
    let answer: [String] = ["123", "456", "789"]
    var currentQuestionIndex : Int = -1
    
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        currentQuestionIndex += 1
        if currentQuestionIndex == 3 {
            currentQuestionIndex = 0
        }
        questionLabel.text = question[currentQuestionIndex]
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        answerLabel.text = answer[currentQuestionIndex]
    }
    
}

