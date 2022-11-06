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

    @IBAction func keyCPressed(_ sender: UIButton) {
        playSound(soundName: "C")
    }
    
    @IBAction func keyDPressed(_ sender: UIButton) {
        playSound(soundName: "D")
    }
    
    
    @IBAction func keyEPressed(_ sender: UIButton) {
        playSound(soundName: "E")
    }
    
    
    @IBAction func keyFPressed(_ sender: UIButton) {
        playSound(soundName: "F")
    }
    
    
    @IBAction func keyGPressed(_ sender: UIButton) {
        playSound(soundName: "G")
    }
    
    
    @IBAction func keyAPressed(_ sender: UIButton) {
        playSound(soundName: "A")
    }
    
    
    @IBAction func keyBPressed(_ sender: UIButton) {
        playSound(soundName: "B")
    }
    
    func playSound(soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType:"wav") else {
            return
        }
        
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}

