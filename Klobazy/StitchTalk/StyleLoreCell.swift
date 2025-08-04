//
//  StyleLoreCell.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

class StyleLoreCell: UICollectionViewCell {
    private let materialPreview: UIImageView = {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFit
            iv.layer.borderWidth = 2
            iv.layer.borderColor = UIColor.systemTeal.cgColor
            iv.translatesAutoresizingMaskIntoConstraints = false
            return iv
       
    }()
    @IBOutlet weak var fiberCraft: UIImageView!
    
    @IBOutlet weak var artisticStitching: UIButton!
    
    
    @IBOutlet weak var threadSketching: UIButton!
    
    
    @IBOutlet weak var creativeReuse: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        fiberCraft.layer.cornerRadius = 32
        
        walkingPresser()
        
        artisticStitching.layer.cornerRadius = 11.5
    }

    
    func walkingPresser() {
        artisticStitching.layer.masksToBounds = true
        fiberCraft.layer.masksToBounds = true
    }
    
    

}
