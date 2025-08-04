//
//  StitchTalkntroller.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
import SVProgressHUD
struct PatternChallenge {
       let theme: String
       let durationDays: Int
       var submissions: [ThreadPost]
   }
class StitchTalkntroller: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout, MaBottomUHEgydelegate, ThriftFlipViewdelegate{
    func dareplaure() {
        beforeImageView.contentMode = .scaleAspectFit
       
        let terming = ArtisticWonder.garmentRecreation.reworkedTaffeta(reworked: "")
        beforeImageView.clipsToBounds = true
       
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
        beforeImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    private let techniquesLabel: UILabel = {
           
        let techniqu = UILabel()
        
        techniqu.translatesAutoresizingMaskIntoConstraints = false
        return techniqu
       
    }()
    func cuffBarrelKnowedge(di: Int) {
        //知识
        beforeImageView.contentMode = .scaleAspectFit
       
        let terming = ArtisticWonder.garmentSpell.reworkedTaffeta(reworked: "\(di)")
        beforeImageView.clipsToBounds = true
      
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
        beforeImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private let beforeImageView: UIImageView = {
        let beforeImage = UIImageView()
      
        beforeImage.layer.cornerRadius = 8
       
        return beforeImage
        
    }()
    
    
    func cuffBarrel(di: Int) {
        
        techniquesLabel.font = UIFont(name: "Avenir-Medium", size: 14)
        
        let terming = ArtisticWonder.textileCharm.reworkedTaffeta(reworked: "\(di)")
        techniquesLabel.textColor = .systemGray
      
        self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
        techniquesLabel.numberOfLines = 0
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
        
       self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming.0), animated: true)
    }
  
    @IBOutlet weak var fiberGlamour: UICollectionView!
    
    
    
    
    func photographicPrint()  {
        fiberGlamour.dataSource = self
        beforeImageView.contentMode = .scaleAspectFit
        
        fiberGlamour.register(UINib.init(nibName: "ThriftFlipView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ThriftFlipView")
        beforeImageView.clipsToBounds = true
       
        fiberGlamour.register(MaBottomUHEgy.self, forCellWithReuseIdentifier: "MaBottomUHEgy")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        photographicPrint() 
        fiberGlamour.collectionViewLayout = createLayout()
        fiberGlamour.showsHorizontalScrollIndicator = false
        

        fiberGlamour.showsHorizontalScrollIndicator = false
        
        fiberGlamour.delegate = self
        
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

    let elasticCord = UILabel.walkingPresser(hole: "ddaotpa")
    
    private func authenticateUser() {
        SVProgressHUD.show()
        beforeImageView.translatesAutoresizingMaskIntoConstraints = false
        let texfio = UITextField.init()
        texfio.layer.cornerRadius = 1
        
        UIColor.reworkedGeorgette(thread: "/qnuvqmxupz/eajdnd", Mystique: ["textileCollage":1,"fabricManipulation":10,
                                                                               "wearableArt":2,
                                                                                        "reworkedVintage":5,
                                                                                        "slowFashion":"54878812"
                                                                                       
                                                                                       ]) { fart in
            texfio.text = "Enter nowing...."
            texfio.placeholder = "entwr"
            SVProgressHUD.dismiss()
            if let glsss = fart as? [String: Any],texfio.text?.count ?? 0 > 0,
                              
                let rns = glsss[self.elasticCord] as? Array<[String: Any]>  {
                texfio.textColor = .white
                self.recorireusehead?.sticchtalk = rns
                texfio.borderStyle = .bezel
                self.recorireusehead?.shareingUserView.reloadData()
            }
            
        } Spell: { errrr in
            texfio.textColor = .white
            SVProgressHUD.dismiss()
        }
        
        
        UIColor.reworkedGeorgette(thread: "/qnuvqmxupz/eajdnd", Mystique: ["textileCollage":1,"fabricManipulation":10,
                                                                                        "reworkedVintage":4,
                                                                                        "slowFashion":"54878812"
                                                                                       
                                                                                       ]) { fart in
            
            texfio.text = "Enter nowing...."
            texfio.placeholder = "entwr"
            if let glsss = fart as? [String: Any],texfio.text?.count ?? 0 > 0,
                              
                let rns = glsss[self.elasticCord] as? Array<[String: Any]>  {
                texfio.borderStyle = .bezel
                self.knowedgealk = rns
                texfio.textColor = .white
                self.fiberGlamour.reloadData()
            }
            
        } Spell: { errrr in
            SVProgressHUD.dismiss()
        }

    }
    
}
