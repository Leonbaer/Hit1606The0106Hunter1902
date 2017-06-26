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
    
        var audioGame = AVAudioPlayer()

    
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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func stop(_ sender: Any) {
        audioGame.stop()
    }
   
}
