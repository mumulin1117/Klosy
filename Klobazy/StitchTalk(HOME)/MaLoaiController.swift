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

        refashionedStyle.attributedPlaceholder = NSAttributedString(string: "Enter email adderss", attributes: [.foregroundColor:UIColor.init(white: 0.8, alpha: 1),
                                                                                                                .font:UIFont.systemFont(ofSize: 16, weight: .semibold)])
        self.view.layer.masksToBounds = true
        
        reclaimedFabric.isUserInteractionEnabled = true
        
        garmentUpgrade.isUserInteractionEnabled = true
        
        handDyedTextiles.attributedPlaceholder = NSAttributedString(string: "Enter password", attributes: [.foregroundColor:UIColor.init(white: 0.8, alpha: 1),
                                                                                                                 .font:UIFont.systemFont(ofSize: 16, weight: .semibold)])
        
        reclaimedFabric.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(reclaimedFabrictap)))
        
        garmentUpgrade.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(garmentUpgradetap)))
    }
    
   @objc func reclaimedFabrictap()  {
       
       let terming = ArtisticWonder.threadExpression.reworkedTaffeta(reworked: "")
       
       self.navigationController?.pushViewController(MadeMystiquerController.init(artisticGlamour: terming), animated: true)
   }
    
    
    
    
    @IBAction func upcycledDenim(_ sender: UIButton) {
        guard let email = refashionedStyle.text, !email.isEmpty ,
        let password = handDyedTextiles.text, !password.isEmpty
        
        else {
            let alert = UIAlertController(title: "Error", message: "Email or Password cannot be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }
        
        
        authenticateUser(email: email, password: password)
    }
    
    private func authenticateUser(email: String, password: String) {
        SVProgressHUD.show()
        UIImageView.reworkedGeorgette(thread: "/ngjfyhnjfasz/leqzuaxpbzaum", Mystique: ["creativeWeaving":email,
                                                                                        "fiberTransformation":password,
                                                                                        "reclaimedWool":"54878812"
                                                                                       
                                                                                       ]) { fart in
            SVProgressHUD.dismiss()
            if let glsss = fart as? [String: Any],
                              
                let rns = glsss["data"] as? [String: Any] {
                
                
                UIImageView.handPaintedLinen = rns["textileRecreation"] as? String
                UIImageView.fiberMix = email
                SVProgressHUD.showSuccess(withStatus: "Login successful!")
                
                ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Dreammennhba")
                
            } else {
                SVProgressHUD.showInfo(withStatus: "Login failed!")
                
            }
            
        } Spell: { errrr in
            SVProgressHUD.showError(withStatus: "Login failed!")
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
