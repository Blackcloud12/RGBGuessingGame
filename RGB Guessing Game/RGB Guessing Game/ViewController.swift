//
//  ViewController.swift
//  RGB Guessing Game
//
//  Created by Daren Davis on 5/10/20.
//  Copyright © 2020 Daren Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
   
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var colors = ColorManager()
    var currentColor = UIColor.white
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func colorButtonPressed(_ sender: UIButton) {
        if sender.backgroundColor == currentColor {
            print("Correct!!!")
            
        } else {
            print("Nope womp womp.")
            sender.isHidden = true
        }
        
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        updateUI()
    }
    
    func updateUI() {
        colors = ColorManager()
        let buttonList = [
        button1,
        button2,
        button3,
        button4,
        button5,
        button6]
        
        // grab random color from list
        let randomIndex = Int.random(in: 0...5)
        let choosenColor = colors.colorList[randomIndex]
        currentColor = choosenColor
        titleLabel.text = String("RGB Color: R, G, B")
        print("-> button[\(randomIndex)]")
        
        for index in 0...5 {
            buttonList[index]?.backgroundColor = colors.colorList[index]
            buttonList[index]?.layer.cornerRadius = 15
            buttonList[index]?.isHidden = false
        }
        resetButton.layer.cornerRadius = 15
    }
    
    func youWin(color: UIColor) {
        let buttonList = [
        button1,
        button2,
        button3,
        button4,
        button5,
        button6]
    }

}

