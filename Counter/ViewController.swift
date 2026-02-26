//
//  ViewController.swift
//  Counter
//
//  Created by Никита Федоров on 25.02.2026.
//

import UIKit

class CounterViewController: UIViewController {
    
    @IBOutlet weak private var scoreLabel: UILabel!
    @IBOutlet weak private var historyTextView: UITextView!
    private var score: Int = 0
    private var isFirstChange: Bool = true
    private let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        dateFormatter.dateFormat = "dd-MM-YYYY HH-mm"
    }
    
    private func IsFirstChange() {
        guard isFirstChange else {
            return
        }
        historyTextView.text = ""
        isFirstChange = false
    }
    
    @IBAction private func plusButton(_ sender: Any) {
        IsFirstChange()
        
        score += 1
        scoreLabel.text = String(score)
        historyTextView.text += "\(dateFormatter.string(from: Date())): значение изменено на +1\n"
    }
    
    @IBAction private func minusButton(_ sender: Any) {
        IsFirstChange()
        
        if score <= 0 {
            historyTextView.text += "\(dateFormatter.string(from: Date())): попытка уменьшить значение счётчика ниже 0\n"
            scoreLabel.text = "0"
        } else {
            score -= 1
            scoreLabel.text = String(score)
            historyTextView.text += "\(dateFormatter.string(from: Date())): значение изменено на -1\n"
        }
    }
    @IBAction private func resetButton(_ sender: Any) {
        score = 0
        scoreLabel.text = "0"
        historyTextView.text += "\(dateFormatter.string(from: Date())): значение сброшено\n"
    }
}

