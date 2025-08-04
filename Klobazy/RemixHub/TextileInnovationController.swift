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
    
    private var sticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    private let analyzeButton: UIButton = {
            let analyzeButton = UIButton(type: .system)
            analyzeButton.setTitle("Analyze Fabric", for: .normal)
            
            return analyzeButton
        }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        sticchtalk.count
        
      
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ajio = collectionView.dequeueReusableCell(withReuseIdentifier: "TextileInnovation", for: indexPath) as! TextileInnovation
        ajio.remixChallenge.setTitle("\(Int.random(in: 0...6))", for: .normal)
        let ingWode = sticchtalk[indexPath.row]
        if let boaer =  (ingWode["upcycledDenim"] as? Array<String>)?.first{
            ajio.ledEmbroidery.textileFinesse(hand: boaer)
        }
        
        ajio.sutheia.text  = ingWode["layeredOutfits"] as? String
        let commmentCount = ingWode["deconstructedFashion"] as? Int ?? 0
        
        let prisetCount = ingWode["fabricSculpting"] as? Int ?? 0
        
        ajio.makealongEvent.setTitle("\(prisetCount)", for: .normal)
       
        ajio.fabricRecognition.addTarget(self, action: #selector(epoyu), for: .touchUpInside)
        return ajio
        
    }
    
  
    @objc func epoyu()  {
        let terming = ArtisticWonder.garmentRecreation.reworkedTaffeta(reworked: "")
        analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
        analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
       
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dyumsis = sticchtalk[indexPath.row]["patternMixing"] as? Int ?? 0
        analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
       
        analyzeButton.translatesAutoresizingMaskIntoConstraints = false
        let terming = ArtisticWonder.handmadeCharm.reworkedTaffeta(reworked: "\(dyumsis)")
        analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
    }
    
    func textileFinesse(hand:String,handleBut:UIButton)  {
        analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
        analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
       
         guard let creativeFinesse = URL(string: hand) else{
         
             return
         }
        analyzeButton.tintColor = .white
        
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
        analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
        analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
        
        let dyumsis = sticchUsertalk[cflay.tag]["seamRipping"] as? Int ?? 0
        analyzeButton.tintColor = .white
        
        let terming = ArtisticWonder.reclaimedTulle.reworkedTaffeta(reworked: "\(dyumsis)")
        analyzeButton.layer.cornerRadius = 8
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
        analyzeButton.translatesAutoresizingMaskIntoConstraints = false
   }
    
    @IBAction func reclaimedCrepe(_ sender: UIButton) {
        let terming = ArtisticWonder.creativeOrigami.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
    }
    
    
    @IBAction func garmentGlamour(_ sender: UIButton) {
        analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
        let terming = ArtisticWonder.textileExpression.reworkedTaffeta(reworked: "")
        
        analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
       
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
        analyzeButton.tintColor = .white
        analyzeButton.layer.cornerRadius = 8
       
    }
    
    
    @IBOutlet weak var textileElegance: UIView!
    
    
    
    @IBOutlet weak var handmadeElegance: UICollectionView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        fabricEnchantment()
        analyzeButton.translatesAutoresizingMaskIntoConstraints = false
        authenticateUser()
    }
    
    func fabricEnchantment()  {
        handmadeElegance.register(UINib(nibName: "TextileInnovation", bundle: nil), forCellWithReuseIdentifier: "TextileInnovation")
        handmadeElegance.showsHorizontalScrollIndicator = false
        analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
        
        handmadeElegance.collectionViewLayout = createLayout()
        handmadeElegance.delegate = self
        analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
        analyzeButton.tintColor = .white
        handmadeElegance.dataSource = self
       
        analyzeButton.layer.cornerRadius = 8
        analyzeButton.translatesAutoresizingMaskIntoConstraints = false
    }
    func createLayout() -> UICollectionViewLayout {
        let jsion = UICollectionViewFlowLayout.init()
        jsion.itemSize = CGSize(width:UIScreen.main.bounds.width - 32, height:373)
        jsion.minimumLineSpacing = 12
        jsion.minimumInteritemSpacing = 12
        jsion.scrollDirection = .vertical
        return jsion
    }
    let elasticCord = UILabel.walkingPresser(hole: "ddaotpa")
    
    private func authenticateUser() {
        
        analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
        analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
       
        UIColor.reworkedGeorgette(thread: "/uprrmisbboectz/ekwzzrochkioybl", Mystique: ["upcycling":"54878812"
                                                                               
                   
                                                                                       ]) { fart in
            self.analyzeButton.tintColor = .white
            self.analyzeButton.layer.cornerRadius = 8
            self.analyzeButton.translatesAutoresizingMaskIntoConstraints = false
            if let glsss = fart as? [String: Any],
               
                let rns = glsss[self.elasticCord] as? Array<[String: Any]>  {
                
                self.sticchUsertalk = rns
                self.cfgertNNE()
            }
            
        } Spell: { errrr in
           
        }
        
        
        self.analyzeButton.layer.cornerRadius = 8
        SVProgressHUD.show()
        self.analyzeButton.translatesAutoresizingMaskIntoConstraints = false
       
        UIColor.reworkedGeorgette(thread: "/qnuvqmxupz/eajdnd", Mystique: ["reworkedVintage":1,"textileCollage":1,"fabricManipulation":10,
                                                                              
                                                                               "slowFashion":"54878812"
                                                                               
                                                                              ]) { fart in
            SVProgressHUD.dismiss()
            self.analyzeButton.tintColor = .white
            self.analyzeButton.layer.cornerRadius = 8
           
            if let glsss = fart as? [String: Any],
               
                let rns = glsss[self.elasticCord] as? Array<[String: Any]>  {
                
                self.sticchtalk = rns.filter({ dadeboy in
                    dadeboy["garmentArtistry"] as? String == nil
                })
                self.analyzeButton.translatesAutoresizingMaskIntoConstraints = false
                self.handmadeElegance.reloadData()
                
            }
            
        } Spell: { errrr in
            SVProgressHUD.dismiss()
        }
        
    }


}
