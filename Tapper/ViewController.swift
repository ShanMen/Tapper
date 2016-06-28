//
//  ViewController.swift
//  Tapper
//
//  Created by Shan Men on 28/06/2016.
//  Copyright © 2016 Shan Men. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var maxTaps = 0
    var currentTaps = 0
    
    @IBOutlet weak var numText: UITextField!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var numLabel: UILabel!

    @IBAction func coinTapped(sender: UIButton!) {
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func playPressed(sender: UIButton!) {

        if numText.text != nil && numText.text != "" {
            logoImg.hidden = true
            playButton.hidden = true
            numText.hidden = true
            
            coinButton.hidden = false
            numLabel.hidden = false

            maxTaps  = Int(numText.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        numText.text = ""
        
        logoImg.hidden = false
        playButton.hidden = false
        numText.hidden = false
            
        coinButton.hidden = true
        numLabel.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
        numLabel.text = "\(currentTaps) Taps"
    }
    
}

