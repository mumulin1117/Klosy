//
//  StitchTalkntroller.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
import SVProgressHUD

class StitchTalkntroller: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout, MaBottomUHEgydelegate, ThriftFlipViewdelegate{
    func dareplaure() {
        let terming = ArtisticWonder.garmentRecreation.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
    
    func cuffBarrelKnowedge(di: Int) {
        //知识
        let terming = ArtisticWonder.garmentSpell.reworkedTaffeta(reworked: "\(di)")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
        
    }
    
    func cuffBarrel(di: Int) {
        
        
        let terming = ArtisticWonder.textileCharm.reworkedTaffeta(reworked: "\(di)")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
    
    var recorireusehead:ThriftFlipView?
    
    var sticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()//cha香薰
    
    var knowedgealk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()//
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 327)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind ==  UICollectionView.elementKindSectionHeader{
            let vvrsdsd = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ThriftFlipView", for: indexPath)  as! ThriftFlipView
            vvrsdsd.stickTalkAI.addTarget(self, action: #selector(asTAlk), for: .touchUpInside)
            vvrsdsd.talk = self
            
            self.recorireusehead = vvrsdsd
            
            return vvrsdsd
        }
        return UICollectionReusableView()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let maing = collectionView.dequeueReusableCell(withReuseIdentifier: "MaBottomUHEgy", for: indexPath) as! MaBottomUHEgy
        maing.sticchtalk = self.knowedgealk
        maing.talk = self
        return maing
        
    }
    

   @objc func asTAlk()  {
        let terming = ArtisticWonder.reclaimedGeorgette.reworkedTaffeta(reworked: "")
        
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
  
    @IBOutlet weak var fiberGlamour: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fiberGlamour.collectionViewLayout = createLayout()
        fiberGlamour.showsHorizontalScrollIndicator = false
        fiberGlamour.register(UINib.init(nibName: "ThriftFlipView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ThriftFlipView")
        
        
        
        fiberGlamour.register(MaBottomUHEgy.self, forCellWithReuseIdentifier: "MaBottomUHEgy")

        fiberGlamour.showsHorizontalScrollIndicator = false
        
        fiberGlamour.delegate = self
        fiberGlamour.dataSource = self
        authenticateUser()
    }
    
    func createLayout() -> UICollectionViewLayout {
        let jsion = UICollectionViewFlowLayout.init()
        jsion.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 422)
        jsion.minimumLineSpacing = 0
        jsion.minimumInteritemSpacing = 0
        jsion.scrollDirection = .vertical
        return jsion
    }

    
    
    private func authenticateUser() {
        SVProgressHUD.show()
        UIImageView.reworkedGeorgette(thread: "/qnuvqmxupz/eajdnd", Mystique: ["textileCollage":1,"fabricManipulation":10,
                                                                               "wearableArt":2,
                                                                                        "reworkedVintage":5,
                                                                                        "slowFashion":"54878812"
                                                                                       
                                                                                       ]) { fart in
            SVProgressHUD.dismiss()
            if let glsss = fart as? [String: Any],
                              
                let rns = glsss["data"] as? Array<[String: Any]>  {
               
                self.recorireusehead?.sticchtalk = rns
                self.recorireusehead?.shareingUserView.reloadData()
            }
            
        } Spell: { errrr in
            SVProgressHUD.dismiss()
        }
        
        
        UIImageView.reworkedGeorgette(thread: "/qnuvqmxupz/eajdnd", Mystique: ["textileCollage":1,"fabricManipulation":10,
                                                                                        "reworkedVintage":4,
                                                                                        "slowFashion":"54878812"
                                                                                       
                                                                                       ]) { fart in
            
            if let glsss = fart as? [String: Any],
                              
                let rns = glsss["data"] as? Array<[String: Any]>  {
                
                self.knowedgealk = rns
             
                self.fiberGlamour.reloadData()
            }
            
        } Spell: { errrr in
            SVProgressHUD.dismiss()
        }

    }
    
}
