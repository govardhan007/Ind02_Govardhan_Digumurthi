//  ViewController.swift
//  Ind02_Govardhan_Digumurthi
import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    @IBOutlet weak var shuffleTap: UIButton!
    @IBOutlet weak var showanswerTap: UIButton!
    var images : Array<Any> = []
    var currentcenterImages : Array<Any> = []
    //var currentImageViews : [UIImage] = []
    @IBOutlet weak var img0: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    @IBOutlet weak var img10: UIImageView!
    @IBOutlet weak var img11: UIImageView!
    @IBOutlet weak var img12: UIImageView!
    @IBOutlet weak var img13: UIImageView!
    @IBOutlet weak var img14: UIImageView!
    @IBOutlet weak var img15: UIImageView!
    @IBOutlet weak var img16: UIImageView!
    @IBOutlet weak var img17: UIImageView!
    @IBOutlet weak var img18: UIImageView!
    @IBOutlet weak var img19: UIImageView!
    var previousState : Array <Any> = []
    var currentState : Array<Any> = []
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
        let imagecenters = [img0.center,img1.center,img2.center,img3.center,img4.center,img5.center,img6.center,img7.center,img8.center,img9.center,img10.center,img11.center,img12.center,img13.center,img14.center,img15.center,img16.center,img17.center,img18.center,img19.center]
        for i in 0...19{
            images.append(imagecenters[i])
        }
        for n in 0...19{
            currentState.append(imagecenters[n])
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
            showingCorrectState()
        }; if sender.titleLabel?.text == "Hide Answer" {
            sender.setTitle("Show Answer", for: .normal)
            showingPreviousState()
           
        }
        
    }
    @IBAction func tapHandling(_ sender: UITapGestureRecognizer) {
        if(sender.view == img0 || sender.view == img1 || sender.view == img2 || sender.view == img3 || sender.view == img4 || sender.view == img5 || sender.view == img6 || sender.view == img7 || sender.view == img8 || sender.view == img9 || sender.view == img10 || sender.view == img11 || sender.view == img12 || sender.view == img13 || sender.view == img14 || sender.view == img15 || sender.view == img16 || sender.view == img17 || sender.view == img18 || sender.view == img19)
        {
            if((sender.view?.frame.minX)!-93 == img0.frame.minX && sender.view?.frame.minY == img0.frame.minY)
            {
                let xorg = sender.view?.frame.minX
                let yorg = sender.view?.frame.minY
                sender.view?.frame.origin.x = img0.frame.origin.x
                sender.view?.frame.origin.y = img0.frame.origin.y
                img0.frame.origin.x = xorg!
                img0.frame.origin.y = yorg!
            }
            else if((sender.view?.frame.minX)!+93 == img0.frame.minX && sender.view?.frame.minY == img0.frame.minY)
            {
                let xorg = sender.view?.frame.minX
                let yorg = sender.view?.frame.minY
                sender.view?.frame.origin.x = img0.frame.origin.x
                sender.view?.frame.origin.y = img0.frame.origin.y
                img0.frame.origin.x = xorg!
                img0.frame.origin.y = yorg!
            }
            else if((sender.view?.frame.minX)! == img0.frame.minX && (sender.view?.frame.minY)!-93 == img0.frame.minY)
            {
                let xorg = sender.view?.frame.minX
                let yorg = sender.view?.frame.minY
                sender.view?.frame.origin.x = img0.frame.origin.x
                sender.view?.frame.origin.y = img0.frame.origin.y
                img0.frame.origin.x = xorg!
                img0.frame.origin.y = yorg!
            }
            else if((sender.view?.frame.minX)! == img0.frame.minX && (sender.view?.frame.minY)!+93 == img0.frame.minY)
            {
                let xorg = sender.view?.frame.minX
                let yorg = sender.view?.frame.minY
                sender.view?.frame.origin.x = img0.frame.origin.x
                sender.view?.frame.origin.y = img0.frame.origin.y
                img0.frame.origin.x = xorg!
                img0.frame.origin.y = yorg!
            }
        }
        
    }
    
    
    func showingCorrectState() {
        currentcenterImages = [img0.center,img1.center,img2.center,img3.center,img4.center,img5.center,img6.center,img7.center,img8.center,img9.center,img10.center,img11.center,img12.center,img13.center,img14.center,img15.center,img16.center,img17.center,img18.center,img19.center]
        let currImages = [img0, img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17, img18, img19]
        var temporary : CGPoint
        for k in 0...19 {
            temporary = currentState[k] as! CGPoint
            currImages[k]?.center = temporary
        }
    }
    
    func showingPreviousState() {
        let currImages = [img0, img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17, img18, img19]
        print(img0.center)
        var temporary : CGPoint
        for l in 0...19 {
            temporary = currentcenterImages[l] as! CGPoint
            currImages[l]?.center = temporary
        }
    }
}


