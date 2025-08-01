//
//  VinoViewCell.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

class VinoViewCell: UICollectionViewCell {

    @IBOutlet weak var weltPocket: UIImageView!
    
    
    @IBOutlet weak var DIYtextiles: UILabel!
    
    
    @IBOutlet weak var bespokeAlterations: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        weltPocket.layer.cornerRadius = 32
        
        walkingPresser()
    }

    
    func walkingPresser() {
        
        weltPocket.layer.masksToBounds = true
    }
}
