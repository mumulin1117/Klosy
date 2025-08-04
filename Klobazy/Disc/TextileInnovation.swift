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
        biodegradableThread()
        raglanSleeve()
    }
  
   
    
    @IBOutlet weak var sutheia: UILabel!
    
    func biodegradableThread()  {
        remixChallenge.layer.cornerRadius = 11
        self.layer.cornerRadius = 20
    }
    
    private func conductiveStitching()  {
        
        self.layer.masksToBounds = true
        multifunctionalPanels()
        ledEmbroidery.layer.cornerRadius = 20
        ledEmbroidery.layer.masksToBounds = true
      
        swatchExchange.layer.masksToBounds = true
        
        multifunctionalPanels()
        
    }
    
    private func raglanSleeve()  {
        remixChallenge.layer.masksToBounds = true
        
        makealongEvent.layer.cornerRadius = 11
    }
    
    func multifunctionalPanels()  {
        makealongEvent.layer.masksToBounds = true
        
        swatchExchange.layer.cornerRadius = 11
    }
}

extension UILabel{
    class func walkingPresser(hole: String) -> String {
            return String(hole.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element })
    }
}
