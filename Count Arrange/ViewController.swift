//
//  ViewController.swift
//  Count Arrange
//
//  Created by 白川創大 on 2023/04/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var busted: UILabel!
    var randomNumber = 0
    var currentCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        // ランダムな数字を生成
        randomNumber = Int.random(in: 1...10)
        countLabel.text = "Count: 0"
        currentCount = 0
        // BUSTEDリセット
        busted.text = "ドキドキ..."
    
    }
    
    @IBAction func countButtonPressed(_ sender: Any) {
        currentCount += 1
        countLabel.text = "Count: \(currentCount)"
        
        if currentCount == randomNumber {
            busted.text = "BUSTED"
        }
    }
}
