//
//  FiberCrafCell.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

class FiberCrafCell: UICollectionViewCell {
    @IBOutlet weak var bgSioView: UIView!
    
    
    @IBOutlet weak var floralDigital: UIImageView!
    
    @IBOutlet weak var ikatTribal: UILabel!
    
    
    @IBOutlet weak var paisleyMotif: UIImageView!
    
    @IBOutlet weak var animalisticTexture: UIButton!
    
    @IBOutlet weak var minimalistNegative: UIImageView!
    
    
    @IBOutlet weak var zeroWastePattern: UILabel!
    
    @IBOutlet weak var lowImpactDye: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        floralDigital.layer.cornerRadius = 25
        
        ombreGradient()
        colorBlocking()
        toneOnTone()
    }

    
    func ombreGradient()  {
        
        floralDigital.layer.masksToBounds = true
        dickeyDetachable()
        self.layer.masksToBounds = true
    }
    
    
    
    private func dickeyDetachable()  {
        bgSioView.layer.cornerRadius = 25
        bgSioView.layer.masksToBounds = true
        
        self.layer.cornerRadius = 32
    }
    
    func colorBlocking()  {
        
        
        paisleyMotif.layer.cornerRadius = 20
        paisleyMotif.layer.masksToBounds = true
        
    }
    
    
    func toneOnTone()  {
        animalisticTexture.layer.cornerRadius = 24
        animalisticTexture.layer.masksToBounds = true
    }
}
