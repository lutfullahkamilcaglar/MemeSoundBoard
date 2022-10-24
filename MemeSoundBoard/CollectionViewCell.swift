//
//  CollectionViewCell.swift
//  MemeSoundBoard
//
//  Created by Kamil Caglar on 23/10/2022.
//

import UIKit
import AVFoundation

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var buttonName: UIButton!
    
    @IBAction func shareButton(_ sender: Any) {
        print("Share Button pressed.")
        
    }
    
    @IBAction func favButton(_ sender: Any) {
        print("Favorite Button pressed.")
    }
    
    @IBAction func soundButton(_ sender: UIButton) {
        print("Sound Button pressed")
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }

    }
    
    
    
    // MARK: Button Methods
    
    func playSound(soundName: String) {
        
        Sound.stopAll()
        
        Sound.play(file: soundName, fileExtension: "mp3")
        
    }
    
    
}
