//
//  startScreen.swift
//  Final Project- Real
//
//  Created by Jimmy Caprio on 4/26/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit


class startScreenViewController: UIViewController, UITextFieldDelegate{
    
    //uses bugShake to shake text field
    @IBOutlet var nameTextField: bugShake!
    
    @IBAction func nameEnter(_ sender: AnyObject) {
        if nameTextField.text != nil {
        bugStats.name = nameTextField.text!
        }
    }
    
    //button to input name
    @IBAction func nameButton(_ sender: Any) {
        
        
        
    }
    
    //creates a value for textField
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    //shakes textField when typig begins
    func textFieldDidBeginEditing(_ textField: UITextField) {
        nameTextField.shake()
    }

}
