//
//  playViewController.swift
//  hit the hunter
//
//  Created by leon bär on 03.06.17.
//  Copyright © 2017 Leon_baer. All rights reserved.
//

import UIKit
import AVFoundation

class playViewController: UIViewController {

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
    
    @IBAction func StopGameMusic(_ sender: Any) {
        audioGame.stop()
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
