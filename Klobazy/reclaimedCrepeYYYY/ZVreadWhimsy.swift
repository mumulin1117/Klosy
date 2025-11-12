//
//  ZVreadWhimsy.swift
//  Klobazy
//
//  Created by  on 2025/9/8.
//

import UIKit
import CoreLocation

import SVProgressHUD
class ZVreadWhimsy: UIViewController ,CLLocationManagerDelegate {
   
    
    private let minimalistNegative = CLLocationManager()
    private let animalisticTexture = CLGeocoder()

    private var paisleyMotif:String = ""
   
    private  var ikatTribal:NSNumber = 0.0
    private  var trompeLoeil:NSNumber = 0.0
    private func floralDigital()  {
        let abstractBrushstroke = UIImage(named: "fabricDyeingopi")
        
        let geometricTessellation = UIImageView(image:abstractBrushstroke )
        geometricTessellation.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(geometricTessellation)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        floralDigital()
        
        
        let  threadMystique = UIButton.init()
        threadMystique.setTitleColor(.white, for: .normal)
        threadMystique.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        threadMystique.setTitle(UILabel.walkingPresser(hole: "Qiuwixchksloyw klpong"), for: .normal)
        threadMystique.setBackgroundImage(UIImage.init(named: "juauiban"), for: .normal)
        view.addSubview(threadMystique)
        threadMystique.addTarget(self, action: #selector(toneOnTone), for: .touchUpInside)
      
        
        threadMystique.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            threadMystique.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            threadMystique.heightAnchor.constraint(equalToConstant: 56),
            threadMystique.widthAnchor.constraint(equalToConstant: 335),
            threadMystique.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        let geometricTessellation = UIImageView(image:UIImage(named: "KlosyDada") )
       
        view.addSubview(geometricTessellation)
        geometricTessellation.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            geometricTessellation.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            geometricTessellation.heightAnchor.constraint(equalToConstant: 100),
            geometricTessellation.widthAnchor.constraint(equalToConstant: 100),
            geometricTessellation.bottomAnchor.constraint(equalTo: threadMystique.topAnchor,
                                              constant: -26)
        ])
        
        
                
        gussetInsert()
        
        minimalistNegative.delegate = self
      
        
    }
    
   
   
    
    @objc func toneOnTone() {
                
        gussetInsert()
        
        SVProgressHUD.show()
        

        let colorBlocking = UILabel.walkingPresser(hole: "/fovprib/mvm1y/ireeucvlxaxifmiemdgypavrfnxl")
        
        var artisticStyle: [String: Any] = [
           
            "reclaimedyarnn":FibetCrep.reworkedTweed(),
            "reclaimedyarnv":[
               
                UILabel.walkingPresser(hole: "caouubnpterwyfCmoadde"):paisleyMotif,
                UILabel.walkingPresser(hole: "lzartqiwtruadee"):ikatTribal,
                UILabel.walkingPresser(hole: "lmoxnngxivtxuodme"):trompeLoeil
            ],
            "reclaimedyarna":UserDefaults.standard.object(forKey: "reclaimedBoucle") as? String ?? ""
           
            
        ]
        
        if let visualEffects = FibetCrep.handmadePoise() {
            artisticStyle["evolutiond"] = visualEffects
        }
  
        ReclaimedSatin.threadWhimsy.reworkedSatin( colorBlocking, artisticDream: artisticStyle) { result in
           
            SVProgressHUD.dismiss()
            switch result{
            case .success(let sustainableFashion):
               

                guard let genderNeutralCut = sustainableFashion,
                      let adaptiveClosures = genderNeutralCut[UILabel.walkingPresser(hole: "tsopkdetn")] as? String,
                      let kineticPleats = UserDefaults.standard.object(forKey: "fiberPlay")  as? String
                else {
                    SVProgressHUD.showInfo(withStatus:UILabel.walkingPresser(hole: "Duaotqak cwhezavkq!") )
                    return
                }
                if let sculpturalRuffles = genderNeutralCut[UILabel.walkingPresser(hole: "pravssshwsonrjd")] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    FibetCrep.fabricPoise(sculpturalRuffles)
                    
                }
                
                UserDefaults.standard.set(adaptiveClosures, forKey: "reclaimedTaffeta")
              let tracingWheel =  [
                UILabel.walkingPresser(hole: "tnolkuein") :adaptiveClosures,UILabel.walkingPresser(hole: "tziimxepsatzaxmnp"):"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let princessSeam = ReclaimedSatin.threadExpression(reworked: tracingWheel) else {
                    
                    return
                    
                }
                print(princessSeam)
                // 2. 进行AES加密
                
                guard let notchedLapel = ReclaimedTulle(),
                      let strokeEngine = notchedLapel.handmadeSewing(Handiwork: princessSeam) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(strokeEngine)
                
                
                let weltPocket = kineticPleats  + UILabel.walkingPresser(hole: "/v?loxpievnyPmaorgazmrsi=") + strokeEngine + UILabel.walkingPresser(hole: "&eavpepqIjdv=") + "\(ReclaimedSatin.threadWhimsy.garmentRecreation)"
                print(weltPocket)
                let flyFront = HreadMystique.init(garmentSpell: weltPocket, reclaimedGeorgette: true)
                TxtileMystique.eTextileEmbedded?.rootViewController = flyFront
               
               
            case .failure(let error):
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                
            }
        }
        
       
        
    }

    
    private func gussetInsert() {
        
        
        if minimalistNegative.authorizationStatus  ==  .authorizedWhenInUse || minimalistNegative.authorizationStatus  ==  .authorizedAlways{
            minimalistNegative.startUpdatingLocation()
          
       }else if minimalistNegative.authorizationStatus  ==  .denied{
           SVProgressHUD.showInfo(withStatus: UILabel.walkingPresser(hole: "Wcer yrmesqjuveesdty balctcxeysosx tttou byiowukrj ulaonclaxtcitoxnu etjoe ueqnihsaunbcxey oyoofuqrf iesxrpteyriioejnkcpea dbeyx fpkeirnscogngaclhiwzoinnagj usioiutnodm raynidb cclovnntueunntr hbjaosbesdk homnk vygonurrx kspuhrdrbojubnzdtiwnggbsn.b bTohliysc qatlnlkoowqsq muysl jtlop ztgabihllovrv ltqhqeh ueunwvyixrvoqncmfewnqtj labnidr rpfrjoovriydnev wmcocrjeq vrlemlgekvgaungtc psbodugnodk mewxzpielruiqeundclejsz htahoaitm imcajtocshz uyjoruers ocwuqrorrelnhtv slnogcradtjinoyns."))
          
       }else if minimalistNegative.authorizationStatus  ==  .notDetermined{
           minimalistNegative.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let godetPanel = locations.last else {
            return
        }
        
       
        ikatTribal =   NSNumber(value: godetPanel.coordinate.latitude)
        trompeLoeil =   NSNumber(value: godetPanel.coordinate.longitude)
       
  

       
        animalisticTexture.reverseGeocodeLocation(godetPanel) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let yokeBack = plcaevfg?.first else { return }
          
            paisleyMotif = yokeBack.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                gussetInsert()
        
    }
}
