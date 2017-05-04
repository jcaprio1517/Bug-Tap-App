//
//  mainScreen.swift
//  Final Project- Real
//
//  Created by Jimmy Caprio on 4/26/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit
import AVFoundation

class mainScreenViewController: UIViewController {
    //instance of audio player
    var bugSound = AVAudioPlayer()
    //counts time passed between clicks of the bug
    var timeBetweenSmashes = 0
    //counts number of smashes in a row
    var numberOfSmashes = 0
    //instance of Timer
    var timer: Timer!
    
    // trying to make the name you put in the text field show up in mainVC as "tap those bugs \(name)!"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Tap those bugs, \(bugStats.name)!"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector: #selector(self.timeCounter), userInfo: nil, repeats: true)
        
        let smash = Bundle.main.path(forResource: "bugSound", ofType: "mp3")
        
        do {
            bugSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: smash! ))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
    }
    
    //label for name
    @IBOutlet var nameLabel: UILabel!
   
    
    //label for bug count
    @IBOutlet var bugTextField: UILabel!
   
    //fires every time bug is clicked
    @IBAction func bugSmash(_ sender: AnyObject) {
        if timeBetweenSmashes >= 5 {
            numberOfSmashes = 0
        }
        timeBetweenSmashes = 0
        numberOfSmashes += 1
        bugClick()
        bugTextField.text = "Bug Count: \(bugStats.bugCount)"
        bugSound.play()
    }
    
    //counts time elapsed
    func timeCounter() {
        timeBetweenSmashes += 1
        bugStats.bugCount += 1
        bugTextField.text = "Bug Count: \(bugStats.bugCount)"
    }
    
    //adds bugs to the bug count
    func bugClick() {
        if numberOfSmashes <= 10 {
            bugStats.bugCount += 10 * bugStats.bugMultiplier
        } else if numberOfSmashes <= 20 && numberOfSmashes > 10 {
            bugStats.bugCount += 20 * bugStats.bugMultiplier
        } else if numberOfSmashes <= 100 && numberOfSmashes > 20 {
            bugStats.bugCount += 30 * bugStats.bugMultiplier
        } else {
            bugStats.bugCount += 40 * bugStats.bugMultiplier
        }
    }
    

}
