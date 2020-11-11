//
//  ViewController.swift
//  WarCardGame
//
//  Created by Biswajeet Chatterjee on 2019-02-21.
//  Copyright © 2019 Biswajeet Chatterjee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
        }
        
    }
    
    func isEven(number: Int) -> Bool {
        if number%2 == 0 {
            return true
        } else {
            return false
        }
    }
    
    
    
    
}
