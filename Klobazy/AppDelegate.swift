//
//  AppDelegate.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

   
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let stobaord = UIStoryboard(name: "Main", bundle: nil)
        
//        if UserDefaults.standard.bool(forKey: "ifLogin") == true {
            window?.rootViewController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Dreammennhba")
            
//        }else{
//            
//            let vontetn = UINavigationController(rootViewController: MaLoaiController.init())
//            vontetn.navigationBar.isHidden = true
//          
//            window?.rootViewController = vontetn
//        }
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in }
        window?.makeKeyAndVisible()
        return true
    }

   

}

extension UIImageView{
    func textileFinesse(hand:String)  {
         guard let creativeFinesse = URL(string: hand) else{
         
             return
         }

         URLSession.shared.dataTask(with: creativeFinesse) {  data, response, error in
            
             if
                 let data = data,
                 let fiberFinesse = UIImage(data: data)
              {
                 DispatchQueue.main.async {
                     self.image = fiberFinesse
                 }
             }
             
           
         }.resume() // 启动网络请求
     }

    
    
    
    static var handPaintedLinen:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "handPaintedLinen") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "handPaintedLinen")
            
        }
        
    }
    
    static var fiberMix:String?{
        get{
            return UserDefaults.standard.object(forKey: "fiberMix") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "fiberMix")
        }
        
    }

    
    
   
    class func reworkedGeorgette(
     thread: String,
     Mystique: [String: Any],
      textile: ((Any?) -> Void)?,
     Spell: ((Error) -> Void)?
 ) {
    
     guard let fiber = URL(string: "http://pixelstorm873.xyz/backtwo" +     thread) else {
                     Spell?(NSError(domain: "NetworkError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
         return
     }
     
     var garmentSpell = creativeFlair(fabric: fiber, mentation:     Mystique)
     var textileCharm = ["Content-Type": "application/json"]
    
     textileCharm["key"] = "54878812"
     textileCharm["token"] = (UIImageView.handPaintedLinen)
     textileCharm.forEach { garmentSpell.setValue($1, forHTTPHeaderField: $0) }
     
     let handmadeCharm = URLSessionConfiguration.default
     handmadeCharm.timeoutIntervalForRequest = 30
     handmadeCharm.timeoutIntervalForResource = 60
     

     
     URLSession(configuration: handmadeCharm).dataTask(with: garmentSpell) { data, response, error in
         DispatchQueue.main.async {

             guard let fabricCharm = data else {
                             Spell?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                 return
             }

             print("Raw response:", String(data: fabricCharm, encoding: .utf8) ?? "Non-UTF8 data")
      
             do {
                 let creativeFlair = try JSONSerialization.jsonObject(with: fabricCharm, options: [.mutableContainers, .allowFragments])
                                         textile?(creativeFlair)
             } catch let artisticSpell {
  
                             Spell?(NSError(
                     domain: "ParseError",
                     code: -4,
                     userInfo: [
                         NSLocalizedDescriptionKey: "Failed to parse : \(artisticSpell.localizedDescription)",
                         "rawResponse": String(data: fabricCharm, encoding: .utf8) ?? "Non-text data",
                         "underlyingError": artisticSpell
                     ]
                 ))
             }
         }
     }.resume()
 }
     
  
     
     private class func creativeFlair(fabric:URL,mentation: [String: Any]) -> URLRequest {
         var deconstructedTulle = URLRequest(
                     url: fabric,
                     cachePolicy: .useProtocolCachePolicy,
                     timeoutInterval: 30
                 )
         
         deconstructedTulle.httpMethod = "POST"
         deconstructedTulle.setValue("application/json", forHTTPHeaderField: "Content-Type")
         deconstructedTulle.setValue("application/json", forHTTPHeaderField: "Accept")
         deconstructedTulle.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
         
         deconstructedTulle.httpBody = try? JSONSerialization.data(withJSONObject: mentation, options: [])
         
         
        
         return deconstructedTulle
      }
}


enum ArtisticWonder:String {

    case reclaimedGeorgette = "pages/AIexpert/index?"
    case garmentSpell = "pages/repository/index?current="
    case textileCharm = "pages/AromatherapyDetails/index?dynamicId="
    case handmadeCharm = "pages/DynamicDetails/index?dynamicId="
    case handDyedLinen = "pages/VideoDetails/index?dynamicId="
    case creativeOrigami = "pages/issue/index?"
    case fiberPlay = "pages/postVideos/index?"
    case reclaimedTulle = "pages/homepage/index?userId="
    case garmentRecreation = "pages/report/index?"
    case textileExpression = "pages/information/index?"
    case handmadeCouture = "pages/EditData/index?"
    
    case upcycledOrganza = "pages/attentionList/index?type=1&"
    case deconstructedTulle = "pages/attentionList/index?type=2&"
    case artisticReconstruction = "pages/wallet/index?"
    case reworkedOrganza = "pages/SetUp/index?"
    case threadExpression = "pages/Agreement/index?type=1&"
    case fiberVision = "pages/Agreement/index?type=2&"
    case textileVision = "pages/privateChat/index?userId="
 
    case garmentVision = ""
    
    func reworkedTaffeta(reworked:String) -> String {
        let threadWhimsy = "http://pixelstorm873.xyz/#"
        if self != .garmentVision {
            return  threadWhimsy + self.rawValue + reworked + "&token=" + (UIImageView.handPaintedLinen ?? "") + "&appID=54878812"
        }
        return  threadWhimsy
 
    }
}
