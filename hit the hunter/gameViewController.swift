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
        var audioSchuss = AVAudioPlayer()
 
    
        var kokosnussPosition = CGPoint()
    
    @IBOutlet weak var kokosnussAusgang: UIButton!
    @IBOutlet weak var kokosnuss: UIButton!
    
    @IBOutlet weak var nuss: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        kokosnussPosition = kokosnuss.center
       
        kokosnuss.center = kokosnussAusgang.center
        
        nuss.isHidden = false
        
        
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
    
    
    @IBAction func shot(_ sender: UIButton) {
       
        UIView.animate(withDuration: 0.6, animations: {
            
// zu bewegende Objekte hier einfügen
            
            self.kokosnuss.center = self.kokosnussPosition
        })
        UIView.animate(withDuration: 0.6, animations: {
        self.kokosnuss.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
            // Put your code which should be executed with a delay here
            self.kokosnuss.transform = CGAffineTransform(scaleX: 1, y: 1)

            self.kokosnuss.center = self.kokosnussAusgang.center
        })
        }
        
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func stop(_ sender: Any) {
        audioGame.stop()
        
     
        
    }
    
    
    
       
}
