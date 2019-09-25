//
//  ViewController.swift
//  hamhorn
//
//  Created by CAJ1213 on 9/25/19.
//  Copyright © 2019 CAJ1213. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["hamhorn"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func pressedHam(_ sender: UIButton) {
        selectedSoundFileName = soundArray[0]
        
        print(selectedSoundFileName)
        
        playSound()
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: "hamhorn", withExtension: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
    
}
