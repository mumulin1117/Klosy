//
//  TextileInnovationController.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
import SVProgressHUD

class TextileInnovationController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private var sticchUsertalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
     var sticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        sticchtalk.count
        
      
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ajio = collectionView.dequeueReusableCell(withReuseIdentifier: "TextileInnovation", for: indexPath) as! TextileInnovation
        let ingWode = sticchtalk[indexPath.row]
        if let boaer =  (ingWode["upcycledDenim"] as? Array<String>)?.first{
            ajio.ledEmbroidery.textileFinesse(hand: boaer)
        }
        
        ajio.sutheia.text  = ingWode["layeredOutfits"] as? String
        let commmentCount = ingWode["deconstructedFashion"] as? Int ?? 0
        
        let prisetCount = ingWode["fabricSculpting"] as? Int ?? 0
        ajio.remixChallenge.setTitle("\(Int.random(in: 0...6))", for: .normal)
        ajio.makealongEvent.setTitle("\(prisetCount)", for: .normal)
        ajio.swatchExchange.setTitle("\(commmentCount)", for: .normal)
        ajio.fabricRecognition.addTarget(self, action: #selector(epoyu), for: .touchUpInside)
        return ajio
        
    }
    
  
    @objc func epoyu()  {
        let terming = ArtisticWonder.garmentRecreation.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dyumsis = sticchtalk[indexPath.row]["patternMixing"] as? Int ?? 0
        
        let terming = ArtisticWonder.handmadeCharm.reworkedTaffeta(reworked: "\(dyumsis)")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
    
    func textileFinesse(hand:String,handleBut:UIButton)  {
         guard let creativeFinesse = URL(string: hand) else{
         
             return
         }

         URLSession.shared.dataTask(with: creativeFinesse) {  data, response, error in
            
             if
                 let data = data,
                 let fiberFinesse = UIImage(data: data)
              {
                 DispatchQueue.main.async {
                     handleBut.setImage(fiberFinesse, for: .normal)
                 }
             }
             
           
         }.resume() // 启动网络请求
     }
    
    func cfgertNNE()  {
        self.textileElegance.subviews.forEach { f in
            f.removeFromSuperview()
        }
        for (i,item) in sticchUsertalk.enumerated() {
            let wangter = UIButton.init(frame: CGRect.init(x: 71*i, y: 0, width: 60, height: 60))
            
            if let boaer =  item["fabricDyeing"] as? String{
                textileFinesse(hand: boaer, handleBut: wangter)
            }
           
            wangter.layer.borderColor = UIColor(red: 1, green: 0.17, blue: 0.74, alpha: 1).cgColor
            wangter.tag = i
            wangter.addTarget(self, action: #selector(deconstructedSatin(cflay:)), for: .touchUpInside)
            wangter.layer.borderWidth = 1
            wangter.layer.masksToBounds = true
            wangter.layer.cornerRadius = 30
            self.textileElegance.addSubview(wangter)
        }
    }
  
    @objc func deconstructedSatin(cflay:UIButton) {
        
        let dyumsis = sticchUsertalk[cflay.tag]["seamRipping"] as? Int ?? 0
        
        let terming = ArtisticWonder.reclaimedTulle.reworkedTaffeta(reworked: "\(dyumsis)")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
   }
    
    @IBAction func reclaimedCrepe(_ sender: UIButton) {
        let terming = ArtisticWonder.creativeOrigami.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
    
    
    @IBAction func garmentGlamour(_ sender: UIButton) {
        let terming = ArtisticWonder.textileExpression.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
    
    
    @IBOutlet weak var textileElegance: UIView!
    
    
    
    @IBOutlet weak var handmadeElegance: UICollectionView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        fabricEnchantment()
        authenticateUser() 
    }
    
    func fabricEnchantment()  {
        handmadeElegance.register(UINib(nibName: "TextileInnovation", bundle: nil), forCellWithReuseIdentifier: "TextileInnovation")
        handmadeElegance.showsHorizontalScrollIndicator = false
        handmadeElegance.collectionViewLayout = createLayout()
        handmadeElegance.delegate = self
        handmadeElegance.dataSource = self
    }
    func createLayout() -> UICollectionViewLayout {
        let jsion = UICollectionViewFlowLayout.init()
        jsion.itemSize = CGSize(width:UIScreen.main.bounds.width - 32, height:373)
        jsion.minimumLineSpacing = 12
        jsion.minimumInteritemSpacing = 12
        jsion.scrollDirection = .vertical
        return jsion
    }

    
    private func authenticateUser() {
        UIImageView.reworkedGeorgette(thread: "/uprrmisbboectz/ekwzzrochkioybl", Mystique: ["upcycling":"54878812"
                                                                               
                                                                              ]) { fart in
            
            if let glsss = fart as? [String: Any],
               
                let rns = glsss["data"] as? Array<[String: Any]>  {
                
                self.sticchUsertalk = rns
                self.cfgertNNE()
            }
            
        } Spell: { errrr in
           
        }
        
        
        
        SVProgressHUD.show()
        UIImageView.reworkedGeorgette(thread: "/qnuvqmxupz/eajdnd", Mystique: ["reworkedVintage":1,"textileCollage":1,"fabricManipulation":10,
                                                                              
                                                                               "slowFashion":"54878812"
                                                                               
                                                                              ]) { fart in
            SVProgressHUD.dismiss()
            if let glsss = fart as? [String: Any],
               
                let rns = glsss["data"] as? Array<[String: Any]>  {
                
                self.sticchtalk = rns.filter({ dadeboy in
                    dadeboy["garmentArtistry"] as? String == nil
                })
                
                self.handmadeElegance.reloadData()
                
            }
            
        } Spell: { errrr in
            SVProgressHUD.dismiss()
        }
        
    }


}
