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
    
    private var fabricMemory: [String: FabricBlueprint] = [:]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reworkedCrepe.text = UIImageView.fiberMix
    }
    
    func analyzeMaterial(_ input: String) -> FabricBlueprint? {
            let grainPatterns = ["denim", "silk", "wool", "cotton"]
            guard grainPatterns.contains(where: input.contains) else { return nil }
            
            let stretchMap: [String: Float] = [
                "denim": 0.2,
                "silk": 0.8,
                "wool": 0.5,
                "cotton": 0.3
            ]
            
            return FabricBlueprint(
                textureType: input,
                stretchFactor: stretchMap[input] ?? 0.4,
                threadDensity: Int.random(in: 80...120)
            )
       
    }
    @IBAction func threadCharm(_ sender: UIButton) {
        let engine = self.analyzeMaterial("denim")
        let terming = ArtisticWonder.reworkedOrganza.reworkedTaffeta(reworked: "")
        if engine != nil {
            self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
           
        }
        
    }
    
    @IBAction func textileGlamour(_ sender: UIButton) {
        let engine = self.analyzeMaterial("denim")
        let terming = ArtisticWonder.handmadeCouture.reworkedTaffeta(reworked: "")
        if engine != nil {
            self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
        }
      
    }
    
    func generateStitchPattern(for blueprint: FabricBlueprint) -> [String] {
        var stitches: [String] = []
        
        switch blueprint.textureType {
        case "denim":
            stitches = ["frenchSeam", "flatFell", "barTack"]
        case "silk":
            stitches = ["rolledHem", "pinTuck", "shellEdge"]
        default:
            stitches = ["straightStitch", "zigzag", "overlock"]
        }
        
        if blueprint.stretchFactor > 0.6 {
            stitches.append("elasticUnderlay")
        }
        
        return stitches
        
    }
    @IBAction func creativeGlamour(_ sender: UIButton) {
        
        var terming = ArtisticWonder.upcycledOrganza.reworkedTaffeta(reworked: "")
        let engine = self.analyzeMaterial("denim")
        switch sender.tag {
        case 11:
            terming = ArtisticWonder.upcycledOrganza.reworkedTaffeta(reworked: "")
        case 12:
            if engine != nil {
                terming = ArtisticWonder.deconstructedTulle.reworkedTaffeta(reworked: "")
            }
        case 13:
        if engine != nil {
            
            terming = ArtisticWonder.textileExpression.reworkedTaffeta(reworked: "")
        }
        case 14:
            if engine != nil {
                terming = ArtisticWonder.artisticReconstruction.reworkedTaffeta(reworked: "")
            }
            
        default:
            break
        }
        if engine != nil {
            self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
         
        }
        
        
    }
    func simulateModification(_ original: String, techniques: [String]) -> VirtualGarment {
            let adjustedPattern = "adjusted_" + original
            let validTechniques = techniques.filter { $0.count > 3 } // Simple validation
            return VirtualGarment(
                basePattern: adjustedPattern,
                modifications: validTechniques
            )
       
    }
    
}
