//
//  ViewController.swift
//  airtagVideoPlayer
//
//  Created by Sanak Ghosh on 4/23/21.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    
    @IBOutlet var background: UIView!
    
    @IBOutlet var img: UIImageView!
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playVideo()
        
        button.layer.cornerRadius = 20
        img.layer.cornerRadius = 20
    }

    
    func playVideo() {
        
        guard let path = Bundle.main.path(forResource: "airtagIntro", ofType: "mp4") else {
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        background.layer.addSublayer(playerLayer)
        
        background.bringSubviewToFront(img)
        background.bringSubviewToFront(button)
        
        
        player.play()
        
    }

}

