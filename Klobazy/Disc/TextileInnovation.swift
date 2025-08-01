//
//  TextileInnovation.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

class TextileInnovation: UICollectionViewCell {

    @IBOutlet weak var ledEmbroidery: UIImageView!
    
    
    @IBOutlet weak var remixChallenge: UIButton!
    
    @IBOutlet weak var makealongEvent: UIButton!
    
    @IBOutlet weak var swatchExchange: UIButton!
    
    
    @IBOutlet weak var styleTransferAlgo: UIButton!
    
    
    @IBOutlet weak var fabricRecognition: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        conductiveStitching()
    }
  
   
    
    @IBOutlet weak var sutheia: UILabel!
    
    
    private func conductiveStitching()  {
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        ledEmbroidery.layer.cornerRadius = 20
        ledEmbroidery.layer.masksToBounds = true
        
        remixChallenge.layer.cornerRadius = 11
        remixChallenge.layer.masksToBounds = true
        
        makealongEvent.layer.cornerRadius = 11
        makealongEvent.layer.masksToBounds = true
        
        swatchExchange.layer.cornerRadius = 11
        swatchExchange.layer.masksToBounds = true
        
      
        
    }
}
