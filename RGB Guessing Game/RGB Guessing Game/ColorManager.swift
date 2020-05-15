//
//  ColorManager.swift
//  RGB Guessing Game
//
//  Created by Daren Davis on 5/10/20.
//  Copyright © 2020 Daren Davis. All rights reserved.
//

import UIKit

struct ViewColor {
    var color = UIColor()
    
    init() {
        self.color = grabRandomColorNumbers()
    }
    
    func grabRandomColorNumbers() -> UIColor {
        let redHue = Int.random(in: 0...10)
        let blueHue = Int.random(in: 0...10)
        let greenHue = Int.random(in: 0...10)
        
        let redHueFloat = Float(redHue) / 10.0
        let greenHueFloat = Float(greenHue) / 10.0
        let blueHueFloat = Float(blueHue) / 10.0
        
        print("Red: \(redHueFloat) Green: \(greenHueFloat) Blue: \(blueHueFloat)") // TODO: Use for title label
        return UIColor(displayP3Red: CGFloat(redHueFloat), green: CGFloat(greenHueFloat), blue: CGFloat(blueHueFloat), alpha: 1.0)
    }
}

struct ColorManager {
    var colorList = [UIColor]()
    
    init() {
        for _ in 0...5 {
            let newColor = ViewColor().grabRandomColorNumbers()
            self.colorList.append(newColor)
        }
    }
    
}
