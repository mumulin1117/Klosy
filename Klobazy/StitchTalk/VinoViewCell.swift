//
//  VinoViewCell.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
struct ThreadPost {
    let postId: String
    var beforeSnapshot: String
    var afterSnapshot: String
    let stitchTechniques: [String]
    var creativityScore: Int {
        stitchTechniques.count * 5
    }
}
class VinoViewCell: UICollectionViewCell {
    private let analyzeButton: UIButton = {
           let analyzeButton = UIButton(type: .system)
           analyzeButton.setTitle("Analyze Fabric", for: .normal)
           analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
           analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
           analyzeButton.tintColor = .white
           analyzeButton.layer.cornerRadius = 8
           analyzeButton.translatesAutoresizingMaskIntoConstraints = false
           return analyzeButton
       }()
    @IBOutlet weak var weltPocket: UIImageView!
    
    
    @IBOutlet weak var toloaibe: UIButton!
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
    
    class func creativeFlair(fabric:URL,mentation: [String: Any]) -> URLRequest {
       var deconstructedTulle = URLRequest(
                   url: fabric,
                   cachePolicy: .useProtocolCachePolicy,
                   timeoutInterval: 30
               )
       
       deconstructedTulle.httpMethod = UILabel.walkingPresser(hole: "PyOgSeT")
       deconstructedTulle.setValue(UILabel.walkingPresser(hole: "aaptpmliihcsactdihozns/hjhsjorn"), forHTTPHeaderField:UILabel.walkingPresser(hole: "Cboonotbeenotw-pThyzpxe") )
       deconstructedTulle.setValue(UILabel.walkingPresser(hole: "awpdpelqilcaagtnifomnx/ajpspoyn"), forHTTPHeaderField: UILabel.walkingPresser(hole: "Amcpcdevppt"))
       deconstructedTulle.setValue(UILabel.walkingPresser(hole: "chhyalrusfeutb=eUxTqFt-n8"), forHTTPHeaderField: UILabel.walkingPresser(hole: "Axcfczempstm-aCuhoabrqsiert"))
       
       deconstructedTulle.httpBody = try? JSONSerialization.data(withJSONObject: mentation, options: [])
       
       
      
       return deconstructedTulle
    }
}
