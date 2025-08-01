//
//  FiberCraftntroller.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
import SVProgressHUD

class FiberCraftntroller: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    var sticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dyumsis = sticchtalk[indexPath.row]["patternMixing"] as? Int ?? 0
        
        let terming = ArtisticWonder.handDyedLinen.reworkedTaffeta(reworked: "\(dyumsis)")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
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
        let terming = ArtisticWonder.garmentRecreation.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
   
   }

    
    @IBAction func garmentGlamour(_ sender: UIButton) {
        let terming = ArtisticWonder.fiberPlay.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
    
   
    
    @IBOutlet weak var handmadeElegance: UICollectionView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        fabricEnchantment()
        
    }
    
    func fabricEnchantment()  {
        handmadeElegance.register(UINib(nibName: "FiberCrafCell", bundle: nil), forCellWithReuseIdentifier: "FiberCrafCell")
        handmadeElegance.showsHorizontalScrollIndicator = false
        
        handmadeElegance.delegate = self
        handmadeElegance.dataSource = self
        SVProgressHUD.show()
        UIImageView.reworkedGeorgette(thread: "/qnuvqmxupz/eajdnd", Mystique: ["reworkedVintage":1,"textileCollage":1,"fabricManipulation":10,
                                                                              
                                                                               "slowFashion":"54878812"
                                                                               
                                                                              ]) { fart in
            SVProgressHUD.dismiss()
            if let glsss = fart as? [String: Any],
               
                let rns = glsss["data"] as? Array<[String: Any]>  {
                
                self.sticchtalk = rns.filter({ dadeboy in
                    dadeboy["garmentArtistry"] as? String != nil
                })
                
                self.handmadeElegance.reloadData()
                
            }
            
        } Spell: { errrr in
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
