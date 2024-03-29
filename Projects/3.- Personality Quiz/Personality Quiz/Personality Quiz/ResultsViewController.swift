//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Jose Hermilo Ortega Martinez on 2020-05-08.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses: [Answer]!

    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            let newCount: Int
            if let oldCount = frequencyOfAnswers[response]  { newCount = oldCount + 1   }
            else                                            { newCount = 1              }
            frequencyOfAnswers[response] = newCount
        }
        
        let frequentAnswerSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) -> Bool in return pair1.value > pair2.value})
        let mostCommonAnswer = frequentAnswerSorted.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
}
