//
//  shopVC.swift
//  Final Project- Real
//
//  Created by Jimmy Caprio on 5/1/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit

class shopVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet var bugTextField: UILabel!
    
    @IBAction func x2Multiplier(_ sender: AnyObject) {
        if bugStats.bugCount >= 5000 && bugStats.bugMultiplier != 2 && bugStats.bugMultiplier != 5 && bugStats.bugMultiplier != 10 {
            bugStats.bugCount -= 5000
            bugStats.bugMultiplier = 2
        } else if bugStats.bugMultiplier == 2 || bugStats.bugMultiplier == 5 || bugStats.bugMultiplier == 10 {
            bugTextField.text = "You have already bought this one."
        }
    }
    
    @IBAction func x5Multiplier(_ sender: AnyObject) {
        if bugStats.bugCount >= 50000  && bugStats.bugMultiplier != 5 && bugStats.bugMultiplier != 10 {
            bugStats.bugCount -= 50000
            bugStats.bugMultiplier = 5
        } else if bugStats.bugMultiplier == 5 || bugStats.bugMultiplier == 10 {
            bugTextField.text = "You have already bought this one."
        }
    }
    
    @IBAction func x10Multiplier(_ sender: AnyObject) {
        if bugStats.bugCount >= 5000000  && bugStats.bugMultiplier != 10 {
            bugStats.bugCount -= 5000000
            bugStats.bugMultiplier = 10
        } else if bugStats.bugMultiplier == 10 {
            bugTextField.text = "You have already bought this one."
        }
    }

    
    
}
