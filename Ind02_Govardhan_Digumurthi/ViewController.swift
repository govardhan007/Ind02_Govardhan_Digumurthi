//
//  ViewController.swift
//  Ind02_Govardhan_Digumurthi
//
//  Created by Digumurthi Govardhan on 3/1/22.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    @IBOutlet weak var shuffleTap: UIButton!
    @IBOutlet weak var showanswerTap: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //creating audio player
        guard let audiofile = Bundle.main.url(forResource: "shuffling-cards-5", withExtension: "mp3")
        else{
            print("Please insert audio file")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audiofile)
            audioPlayer.prepareToPlay()
        } catch {
            print("Player cannot be created")
        }
    }

    @IBAction func shuffleTapped(_ sender: UIButton) {
        guard let player = audioPlayer else{ return }
        if player.isPlaying{
            player.stop()
        }else{
            player.play()
        }
    }
    
    @IBAction func showanswerTapped(_ sender: UIButton) {
        if sender.titleLabel?.text == "Show Answer" {
            sender.setTitle("Hide Answer", for: .normal)
        } else {
            sender.setTitle("Show Answer", for: .normal)
        }
    }
}

