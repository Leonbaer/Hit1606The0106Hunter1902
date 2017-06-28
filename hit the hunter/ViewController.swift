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
       
        dimView.alpha = 0
        
        UIView.animate(withDuration: 0.3, delay: 0, options: [], animations: {
            self.welcomeView.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        }) { (success) in
            self.welcomeView.removeFromSuperview()
        }
        
        
    }
    
//MARK:- override Func
    override func viewDidLoad() {
        super.viewDidLoad()
        
   welcomeView.center = view.center
    welcomeView.transform = CGAffineTransform(scaleX: 0.8, y: 1.2)
        view.addSubview(welcomeView)
    
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
        self.welcomeView.transform = .identity
        })
        
    
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








    
