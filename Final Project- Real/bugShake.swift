//
//  bugShake.swift
//  Final Project- Real
//
//  Created by Jimmy Caprio on 5/2/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit

class bugShake: UITextField {

    //func used to shake button
    func shake() {
        
        //creates an animation
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
    
        
        self.layer.add(animation, forKey: "position")
    
    }
    
    
    
    
}
