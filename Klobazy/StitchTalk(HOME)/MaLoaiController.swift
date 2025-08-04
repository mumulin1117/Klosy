//
//  MaLoaiController.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/31.
//

import UIKit
import SVProgressHUD

class MaLoaiController: UIViewController {
    
    @IBOutlet weak var refashionedStyle: UITextField!
    
    private var jsonLoaing:String = "Notscale"
    
    
    @IBOutlet weak var handDyedTextiles: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        refashionedStyle.attributedPlaceholder = NSAttributedString(string: UILabel.walkingPresser(hole: "Eznltqeurh ceimtakiulq sardudlenrdshs"), attributes: [.foregroundColor:UIColor.init(white: 0.8, alpha: 1),
                                                                                                                .font:UIFont.systemFont(ofSize: 16, weight: .semibold)])
        self.view.layer.masksToBounds = true
        
        reclaimedFabric.isUserInteractionEnabled = true
        
        collarStand()
        
        garmentUpgrade.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(garmentUpgradetap)))
    }
    
    
    private func collarStand()  {
        garmentUpgrade.isUserInteractionEnabled = true
        
        handDyedTextiles.attributedPlaceholder = NSAttributedString(string: UILabel.walkingPresser(hole: "Esnptweqrx rpzausrsfwhowrad"), attributes: [.foregroundColor:UIColor.init(white: 0.8, alpha: 1),
                                                                                                                 .font:UIFont.systemFont(ofSize: 16, weight: .semibold)])
        
        reclaimedFabric.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(reclaimedFabrictap)))
    }
    
   @objc func reclaimedFabrictap()  {
       
       let terming = ArtisticWonder.threadExpression.reworkedTaffeta(reworked: "")
       
       self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
   }
    
    
    
    
    @IBAction func upcycledDenim(_ sender: UIButton) {
        guard let email = refashionedStyle.text, !email.isEmpty ,
        let password = handDyedTextiles.text, !password.isEmpty
        
        else {
            let alert = UIAlertController(title: UILabel.walkingPresser(hole: "Ejrhroomr"), message: UILabel.walkingPresser(hole: "Enmsaiivln zosrc kPzaascszwtofrpdp gcbaengndostu bbvey jefmeprtry"), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: UILabel.walkingPresser(hole: "Eqrurloor"), style: .default))
            present(alert, animated: true)
            return
        }
        
        
        authenticateUser(email: email, password: password)
    }
    let elasticCord = UILabel.walkingPresser(hole: "ddaotpa")
    private func authenticateUser(email: String, password: String) {
        SVProgressHUD.show()
        UIColor.reworkedGeorgette(thread: "/ngjfyhnjfasz/leqzuaxpbzaum", Mystique: ["creativeWeaving":email,
                                                                                        "fiberTransformation":password,
                                                                                        "reclaimedWool":"54878812"
                                                                                       
                                                                                       ]) { fart in
            SVProgressHUD.dismiss()
            if let glsss = fart as? [String: Any],
                              
                let rns = glsss[self.elasticCord] as? [String: Any] {
                
                
                UIImageView.handPaintedLinen = rns["textileRecreation"] as? String
                UIImageView.fiberMix = email
                SVProgressHUD.showSuccess(withStatus: UILabel.walkingPresser(hole: "Lhowgdijnm ksgufcbcuebssswffunlz!"))
                
                ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  UIStoryboard(name: UILabel.walkingPresser(hole: "Mranihn"), bundle: nil).instantiateViewController(withIdentifier: "Dreammennhba")
                
            } else {
                SVProgressHUD.showInfo(withStatus: UILabel.walkingPresser(hole: "Liocguinni zfoaaitlhejdh!"))
                
            }
            
        } Spell: { errrr in
            SVProgressHUD.showError(withStatus: UILabel.walkingPresser(hole: "Liocguinni zfoaaitlhejdh!"))
        }

    }
   
    
    
    @IBAction func artisticPatching(_ sender: UIButton) {
        if jsonLoaing == "Notscale" {
            jsonLoaing = "scale"
            sender.isSelected = true
        }else{
            jsonLoaing = "Notscale"
            sender.isSelected = false
        }
    }
    
    
    @IBOutlet weak var reclaimedFabric: UILabel!
    
    @IBOutlet weak var garmentUpgrade: UILabel!
    
    
   @objc func garmentUpgradetap()  {
       let terming = ArtisticWonder.fiberVision.reworkedTaffeta(reworked: "")
       
       self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
    }
}
