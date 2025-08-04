//
//  FiberCraftntroller.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
import SVProgressHUD

class FiberCraftntroller: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    private var sticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    private let materialPreview: UIImageView = {
        let material = UIImageView()
        material.contentMode = .scaleAspectFit
       
        return material
        
    }()
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        materialPreview.layer.borderWidth = 2
        let dyumsis = sticchtalk[indexPath.row]["patternMixing"] as? Int ?? 0
        
        materialPreview.layer.borderColor = UIColor.systemTeal.cgColor
      
        let terming = ArtisticWonder.handDyedLinen.reworkedTaffeta(reworked: "\(dyumsis)")
        materialPreview.translatesAutoresizingMaskIntoConstraints = false
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        let ccvoiunt =  sticchtalk.count
        
        
        return ccvoiunt
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ajio = collectionView.dequeueReusableCell(withReuseIdentifier: "FiberCrafCell", for: indexPath) as! FiberCrafCell
        
        let ingWode = sticchtalk[indexPath.row]
        if let boaer =  ingWode["garmentArtistry"] as? String{
            ajio.paisleyMotif.textileFinesse(hand: boaer)
        }
        
        let commmentCount = ingWode["deconstructedFashion"] as? Int ?? 0
        
        ajio.animalisticTexture.setTitle(" \(commmentCount)", for: .normal)
        ajio.zeroWastePattern.text = ingWode["layeredOutfits"] as? String
        ajio.lowImpactDye.addTarget(self, action: #selector(deconstructedSatin), for: .touchUpInside)
        
        
        if let boaeree =  ingWode["creativeRepurposing"] as? String{
            ajio.floralDigital.textileFinesse(hand: boaeree)
        }
        
        ajio.ikatTribal.text = ingWode["handmadeEmbellishments"] as? String
        return ajio
        
    }
    
   
  
    @objc func deconstructedSatin() {
        materialPreview.layer.borderWidth = 2
        let terming = ArtisticWonder.garmentRecreation.reworkedTaffeta(reworked: "")
        
        materialPreview.layer.borderColor = UIColor.systemTeal.cgColor
       
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
        materialPreview.translatesAutoresizingMaskIntoConstraints = false
   
   }

    
    @IBAction func garmentGlamour(_ sender: UIButton) {
        let terming = ArtisticWonder.fiberPlay.reworkedTaffeta(reworked: "")
        materialPreview.layer.borderWidth = 2
      
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
        materialPreview.layer.borderColor = UIColor.systemTeal.cgColor
        materialPreview.translatesAutoresizingMaskIntoConstraints = false
    }
    
   
    
    @IBOutlet weak var handmadeElegance: UICollectionView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        handmadeElegance.delegate = self
        
        materialPreview.translatesAutoresizingMaskIntoConstraints = false
        fabricEnchantment()
        materialPreview.layer.borderWidth = 2
        
    }
    let elasticCord = UILabel.walkingPresser(hole: "ddaotpa")
    func fabricEnchantment()  {
        materialPreview.layer.borderWidth = 2
        
        handmadeElegance.register(UINib(nibName: "FiberCrafCell", bundle: nil), forCellWithReuseIdentifier: "FiberCrafCell")
        handmadeElegance.showsHorizontalScrollIndicator = false
        
     
        materialPreview.translatesAutoresizingMaskIntoConstraints = false
        handmadeElegance.dataSource = self
        SVProgressHUD.show()
        UIColor.reworkedGeorgette(thread: "/qnuvqmxupz/eajdnd", Mystique: ["reworkedVintage":1,"textileCollage":1,"fabricManipulation":10,
                                                                              
                                                                               "slowFashion":"54878812"
                                                                               
                                                                              ]) { fart in
            SVProgressHUD.dismiss()
            if let glsss = fart as? [String: Any],
               
                let rns = glsss[self.elasticCord] as? Array<[String: Any]>  {
                
                self.sticchtalk = rns.filter({ dadeboy in
                    dadeboy["garmentArtistry"] as? String != nil
                })
                self.materialPreview.layer.borderColor = UIColor.systemTeal.cgColor
                
                self.handmadeElegance.reloadData()
                
            }
            
        } Spell: { errrr in
            self.materialPreview.layer.borderColor = UIColor.systemTeal.cgColor
            SVProgressHUD.dismiss()
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        handmadeElegance.collectionViewLayout = createLayout()
    }
    func createLayout() -> UICollectionViewLayout {
        let jsion = UICollectionViewFlowLayout.init()
        jsion.itemSize = CGSize(width:UIScreen.main.bounds.width - 17 - 15, height:handmadeElegance.frame.height)
        jsion.minimumLineSpacing = 17
        jsion.minimumInteritemSpacing = 17
        jsion.scrollDirection = .horizontal
        return jsion
    }


  

}
