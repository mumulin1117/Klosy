//
//  Euian.swift
//  Klobazy
//
//  Created by mumu on 2025/8/4.
//

import UIKit

class Euian: NSObject {

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
            let zipperInvisible = UserDefaults.standard.object(forKey: "handPaintedLinen") as? String
            
            return zipperInvisible
        }set{
            UserDefaults.standard.set(newValue, forKey: "handPaintedLinen")
            
        }
        
    }
    
    static var fiberMix:String?{
        get{
            let elasticCord = UserDefaults.standard.object(forKey: "fiberMix") as? String
            
            return elasticCord
        }set{
            UserDefaults.standard.set(newValue, forKey: "fiberMix")
        }
        
    }

    
    
    
   
}
