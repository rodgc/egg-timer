//
//  ViewController.swift
//  Egg Timer
//
//  Created by Rodrigo Gonzalez on 10/18/18.
//  Copyright © 2018 Rodrigo Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    var time = 210
    
    @objc func decreaseTimer() {
        if time > 0 {
            time -= 1
            timerLabel.text = String(time)
        } else {
            timer.invalidate()
        }
       
    }

    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func puse(_ sender: Any) {
        timer.invalidate()
    }

    @IBAction func minusTen(_ sender: Any) {
        if time > 10 {
            time -= 10
            timerLabel.text = String(time)
        }
    }
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
    }
    
    
    @IBAction func reset(_ sender: Any) {
        time = 210
        
        timerLabel.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

