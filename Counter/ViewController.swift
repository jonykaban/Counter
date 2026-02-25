//
//  ViewController.swift
//  Counter
//
//  Created by Никита Федоров on 25.02.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    private var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeScoreButton(_ sender: Any) {
        score += 1
        scoreLabel.text = "Значение счетчика: \(score)"
    }
    
}

