//
//  gameViewController.swift
//  hit the hunter
//
//  Created by Janne Krellig on 26.06.17.
//  Copyright © 2017 Leon_baer. All rights reserved.
//

import UIKit
import AVFoundation

class gameViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var audioGame = AVAudioPlayer()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Seren", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
            
            
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
   
}
