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
   
    
    private let augmentedReality = CLLocationManager()
    private let realTimeRendering = CLGeocoder()

    private var canvasLayer:String = ""
   
    private  var strokeEngine:NSNumber = 0.0
    private  var colorTheory:NSNumber = 0.0
    private func artisticFilter()  {
        let creativeProcess = UIImage(named: "fabricDyeing")
        
        let visualDesign = UIImageView(image:creativeProcess )
        visualDesign.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(visualDesign)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        artisticFilter()
        
        
        let  artGeneration = UIButton.init()
        artGeneration.setBackgroundImage(UIImage.init(named: "upcycling"), for: .normal)
//        artGeneration.setTitleColor(.white, for: .normal)
//        artGeneration.setTitle("Quickly log", for: .normal)
//        artGeneration.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        view.addSubview(artGeneration)
        artGeneration.addTarget(self, action: #selector(digitalPainting), for: .touchUpInside)
      
        
        artGeneration.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            artGeneration.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            artGeneration.heightAnchor.constraint(equalToConstant: 56),
            artGeneration.widthAnchor.constraint(equalToConstant: 335),
            artGeneration.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                
        creativeProcess()
        
        augmentedReality.delegate = self
      
        
    }
    
   
   
    
    @objc func digitalPainting() {
                
        creativeProcess()
        
        SVProgressHUD.show()
        

        let creativeExpression = "/opi/v1/reclaimedyarnl"
        
        var artisticStyle: [String: Any] = [
           
            "reclaimedyarnn":FibetCrep.artisticGuide(),
            "reclaimedyarnv":[
               
                "countryCode":canvasLayer,
                "latitude":strokeEngine,
                "longitude":colorTheory
            ],
            "reclaimedyarna":AppDelegate.edgeComputingD
           
            
        ]
        
        if let visualEffects = FibetCrep.brushInstructor() {
            artisticStyle["evolutiond"] = visualEffects
        }
  
        ReclaimedSatin.artisticArtisan.artisticTrainerFive( creativeExpression, orVariation: artisticStyle) { result in
           
            SVProgressHUD.dismiss()
            switch result{
            case .success(let colorMixing):
               

                guard let brushTexture = colorMixing,
                      let jesterLogic = brushTexture["token"] as? String,
                      let whopperWare = UserDefaults.standard.object(forKey: "fiberPlay")  as? String
                else {
                    SVProgressHUD.showInfo(withStatus: "Data weak!")
                    return
                }
                if let textureMapping = brushTexture["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    FibetCrep.artisticInstructor(textureMapping)
                    
                }
                
                UserDefaults.standard.set(jesterLogic, forKey: "reclaimedTaffeta")
              let augmentedReality =  [
                    "token":jesterLogic,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let realTimeRendering = ReclaimedSatin.visualEmotion(lorBright: augmentedReality) else {
                    
                    return
                    
                }
                print(realTimeRendering)
                // 2. 进行AES加密
                
                guard let canvasLayer = ReclaimedTulle(),
                      let strokeEngine = canvasLayer.artisticIdentity(tity: realTimeRendering) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(strokeEngine)
                
                
                let colorTheory = whopperWare  + "/?openParams=" + strokeEngine + "&appId=" + "\(ReclaimedSatin.artisticArtisan.asartisticAuthority)"
                print(colorTheory)
                let artisticFilter = HreadMystique.init(Trendsetter: colorTheory, Matrix: true)
                TxtileMystique.colorMixing?.rootViewController = artisticFilter
               
               
            case .failure(let error):
                SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                
            }
        }
        
       
        
    }

    
    private func creativeProcess() {
        
        
        if augmentedReality.authorizationStatus  ==  .authorizedWhenInUse || augmentedReality.authorizationStatus  ==  .authorizedAlways{
            augmentedReality.startUpdatingLocation()
          
       }else if augmentedReality.authorizationStatus  ==  .denied{
           SVProgressHUD.showInfo(withStatus: "We request access to your location to enhance your experience by personalizing sound and content based on your surroundings. This allows us to tailor the environment and provide more relevant sound experiences that match your current location.")
          
       }else if augmentedReality.authorizationStatus  ==  .notDetermined{
           augmentedReality.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let artGeneration = locations.last else {
            return
        }
        
       
        strokeEngine =   NSNumber(value: artGeneration.coordinate.latitude)
        colorTheory =   NSNumber(value: artGeneration.coordinate.longitude)
       
  

       
        realTimeRendering.reverseGeocodeLocation(artGeneration) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let digitalPainting = plcaevfg?.first else { return }
          
            canvasLayer = digitalPainting.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                creativeProcess()
        
    }
}
