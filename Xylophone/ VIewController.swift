//
//  ViewController.swift
//  Xylophone
//
//  Created by Jonas Rosendo on 20/10/2019.
//  Copyright © 2019 Jonas Rosendo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{

    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(selectedNote: soundArray[sender.tag - 1])
    }
    
    func playSound(selectedNote: String){
        let soundURL = Bundle.main.url(forResource: selectedNote, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }catch {
            print(error)
        }
        
        audioPlayer.play()
    }
}
