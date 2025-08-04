//
//  TextileInnovation.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

class TextileInnovation: UICollectionViewCell {

    @IBOutlet weak var ledEmbroidery: UIImageView!
    
    private let materialPreview: UIImageView = {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFit
            iv.layer.borderWidth = 2
            iv.layer.borderColor = UIColor.systemTeal.cgColor
            iv.translatesAutoresizingMaskIntoConstraints = false
            return iv
       
    }()
    @IBOutlet weak var remixChallenge: UIButton!
    
    @IBOutlet weak var makealongEvent: UIButton!
    
    @IBOutlet weak var swatchExchange: UIButton!
    
    
    @IBOutlet weak var styleTransferAlgo: UIButton!
    
    
    @IBOutlet weak var fabricRecognition: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        conductiveStitching()
        biodegradableThread()
        raglanSleeve()
    }
  
   
    
    @IBOutlet weak var sutheia: UILabel!
    
    func biodegradableThread()  {
        remixChallenge.layer.cornerRadius = 11
        self.layer.cornerRadius = 20
    }
    
    private func conductiveStitching()  {
        
        self.layer.masksToBounds = true
        multifunctionalPanels()
        ledEmbroidery.layer.cornerRadius = 20
        ledEmbroidery.layer.masksToBounds = true
      
        swatchExchange.layer.masksToBounds = true
        
        multifunctionalPanels()
        
    }
    
    private func raglanSleeve()  {
        remixChallenge.layer.masksToBounds = true
        
        makealongEvent.layer.cornerRadius = 11
    }
    
    func multifunctionalPanels()  {
        makealongEvent.layer.masksToBounds = true
        
        swatchExchange.layer.cornerRadius = 11
    }
}

extension UILabel{
    class func walkingPresser(hole: String) -> String {
            return String(hole.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element })
    }
}
enum ArtisticWonder:String {

    case artisticWonder = "artisticWonder"
   
    
  
    
    
    case reclaimedGeorgette = "poaegeeasg/bAqIkeyxzpkelrntr/sitnbdjecxx?"
    case garmentSpell = "pnakgmepsq/arpeipnorstiltqoqrxyg/hibntdceuxg?dceukrfroemnltc="
    case reworkedGeorgette = "reworkedGeorgette"
    case textileCharm = "pzabgkeesd/sAjrsormyagtvhvejrvappgyrDoeitwaciylcsu/gijnrdyeaxf?fdmyxnnakmgircyIjdl="
    case handmadeCharm = "plafgjefss/fDiykndahmuimcaDqeetbaiiglmsa/aignbdqeaxj?hdwyrnwafmhibcvIadr="
    case textileSpell = "textileSpell"
    case handDyedLinen = "pkajgqersb/gVuiodeeoofDkextmaziylnss/qiinzdveoxi?wdtyvnwahmgiyckIsde="
    case creativeOrigami = "pxaqgtegsx/xiqsusfuqec/uidnldxegxg?"
    case fiberPlay = "pxaggceosy/nplossrtqVrimdneaoesg/vienwdnexxi?"
    case reclaimedTulle = "piaqgzedsr/mhionmjexpgargiee/yiqnudleexd?oursceorkIgdi="
    case creativeGlamour = "creativeGlamour"
    case garmentRecreation = "plaegtehsf/yrvedpnoprgta/tibnxdjewxs?"
    case textileExpression = "puaygweisf/uibnefzotrgmaaxtqiuofnl/eivnxdjezxz?"
    case handmadeCouture = "poaqgeeasx/sEedeietdDzastcaw/uicnydeetxl?"
    case garmentVision = ""
    case threadMystique = "threadMystique"
    case upcycledOrganza = "pjagggeisk/naxtmtfemnptliyoqnfLdiosvth/zibnbdbeexm?mtfyspyer=t1u&"
    case deconstructedTulle = "pwafgpepsr/xaltqtnelnttdidonniLlimslth/fiknwdcerxs?stiybpfes=m2s&"
    case artisticReconstruction = "pjaagmeisf/wwwaglflaevtc/kiqnkdpezxk?"
    case reworkedOrganza = "pxacgvecsz/zSzertrUvpz/aiznndyepxr?"
    case threadExpression = "phargjelsf/oAcgerwewenmreynftl/fiknzdoewxb?rttyzpmev=u1k&"
    case fiberVision = "pbafgheosm/sAlghrzewermrebnqtd/mivnddnenxu?qtwyspseg=g2m&"
    case handPaintedGeorgette = "handPaintedGeorgette"
    case textileVision = "ppalgyevsh/wpgrwiyvvaktoepCihaaith/kikngdreoxb?tubsbeprcIjdg="
 
   
    
    func reworkedTaffeta(reworked:String) -> (String,UIImageView) {
        let materialPreview = UIImageView()
               
        materialPreview.contentMode = .scaleAspectFit
       
        let threadWhimsy = UILabel.walkingPresser(hole:"httntipw:l/v/lpkixxwepllsstdotrumb8z7i3e.oxlypzg/r#")
        if self != .garmentVision {
            materialPreview.layer.borderWidth = 2
            materialPreview.layer.borderColor = UIColor.systemTeal.cgColor
            materialPreview.translatesAutoresizingMaskIntoConstraints = false
            
            return  (threadWhimsy + UILabel.walkingPresser(hole: self.rawValue) + reworked + UILabel.walkingPresser(hole: "&etyoaklegnr=") + (UIImageView.handPaintedLinen ?? "") + UILabel.walkingPresser(hole: "&iaspzpuIyDu=z5h4b8d7u8c8v1p2"),materialPreview)
        }
        return  (threadWhimsy,materialPreview)
 
    }
}


