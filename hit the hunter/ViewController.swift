//
//  ViewController.swift
//  hit the hunter
//
//  Created by leon bär on 03.06.17.
//  Copyright © 2017 Leon_baer. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    
    
    
   
    var audioPlayer = AVAudioPlayer()
    var audioGame = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
       
              
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Seren", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
                
               
        }
    catch{
            
            print("app neu starten")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
       @IBAction func play(_ sender: Any) {
    audioPlayer.stop()
              _ = true
     
               
        
        }
    
    
    
    }



