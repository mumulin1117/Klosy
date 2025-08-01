//
//  TextileFlairController.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/31.
//

import UIKit

class TextileFlairController: UIViewController {

    @IBOutlet weak var artisticSpell: UIImageView!
    
    
    @IBOutlet weak var reworkedCrepe: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reworkedCrepe.text = UIImageView.fiberMix
    }
    

    @IBAction func threadCharm(_ sender: UIButton) {
        let terming = ArtisticWonder.reworkedOrganza.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
        
    }
    
    @IBAction func textileGlamour(_ sender: UIButton) {
        
        let terming = ArtisticWonder.handmadeCouture.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
    
    
    @IBAction func creativeGlamour(_ sender: UIButton) {
        
        var terming = ArtisticWonder.upcycledOrganza.reworkedTaffeta(reworked: "")
        
        switch sender.tag {
        case 11:
            terming = ArtisticWonder.upcycledOrganza.reworkedTaffeta(reworked: "")
        case 12:
            terming = ArtisticWonder.deconstructedTulle.reworkedTaffeta(reworked: "")
        case 13:
            terming = ArtisticWonder.textileExpression.reworkedTaffeta(reworked: "")
        case 14:
            terming = ArtisticWonder.artisticReconstruction.reworkedTaffeta(reworked: "")
        default:
            break
        }
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
        
        
    }
    
    
}
