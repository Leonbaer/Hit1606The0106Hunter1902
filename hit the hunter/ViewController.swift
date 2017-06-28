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

    
    
    
//MARK:- Variablen 
    var audioPlayer = AVAudioPlayer()
    
    var audioPlayercheck = true
    
    
    
    @IBOutlet weak var dimView: UIView!
    @IBOutlet var welcomeView: UIView!
    @IBAction func exitWelcome(_ sender: Any) {
        welcomeView.removeFromSuperview()
        dimView.alpha = 0
    }
    
//MARK:- override Func
    override func viewDidLoad() {
        super.viewDidLoad()
        
   welcomeView.center = view.center
        view.addSubview(welcomeView)
     dimView.alpha = 0.7
        
        
        
        
        
        
        
        
        
        
       
if audioPlayercheck == true {
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Seren", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            audioPlayercheck = false
        }
    catch{
            
            print("app neu starten")
        }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
//MARK:- Menu Buttons
       @IBAction func play(_ sender: Any) {
    audioPlayer.stop()
        
        }

    @IBAction func score(_ sender: Any) {
    audioPlayer.stop()
    }
    @IBAction func settings(_ sender: Any) {
    audioPlayer.stop()
    }

}








    
