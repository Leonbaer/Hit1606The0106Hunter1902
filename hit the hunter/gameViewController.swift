//
//  gameViewController.swift
//  hit the hunter
//
//  Created by Janne Krellig on 26.06.17.
//  Copyright © 2017 Leon_baer. All rights reserved.
//

import UIKit
import AVFoundation
import Darwin

class gameViewController: UIViewController {
    
        var audioGame = AVAudioPlayer()
        var audioSchuss = AVAudioPlayer()
    
    
    @IBOutlet weak var kokosnuss: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do{
            
            audioGame = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Move", ofType: "mp3")!))
            audioGame.prepareToPlay()
            audioGame.play()
            
                   }
        catch{
            
            print("app neu starten")
        }
    
        do {
            
            audioSchuss = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "affe", ofType: "mp3")!))
            audioSchuss.prepareToPlay()
        }
        catch{
            print("app neu starten")
        }
        }
    
        
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func stop(_ sender: Any) {
        audioGame.stop()
        
     
        
    }
    
    @IBAction func schuss(_ sender: Any) {
     
        UIImageView.animate(withDuration: 0.5, delay: 0.0, options: UIViewAnimationOptions.curveLinear, animations: {
            self.kokosnuss.frame.origin.y = 160
        }, completion: { (finished: Bool) in
            print("Animation Ended!")
        });
    }
    
       
}
