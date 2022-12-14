//
//  ViewController.swift
//  PlayMusic
//
//  Created by Mateusz Urbas on 06/11/2022.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton ) {
        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
    }
    
    func playSound(soundName: String) {
        let path = Bundle.main.path(forResource: soundName, ofType:"wav")
        let url = URL(fileURLWithPath: path!)
        player = try! AVAudioPlayer(contentsOf: url);
        player?.play()
    }
    
}

