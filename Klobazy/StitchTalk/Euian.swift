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
   
        func textileFinesse(hand: String) {
           
            guard let textileLoom = createTextileLoom(from: hand) else {
                return
            }
            
            weaveTextilePattern(with: textileLoom)
        }
        
        
        private func createTextileLoom(from thread: String) -> URL? {
            return URL(string: thread)
        }
        
        private func weaveTextilePattern(with loom: URL) {
            URLSession.shared.dataTask(with: loom) { [weak self] rawMaterial, response, error in
                self?.processTextileMaterial(rawMaterial: rawMaterial)
            }.resume()
        }
        
        private func processTextileMaterial(rawMaterial: Data?) {
            guard let textileData = rawMaterial,
                  let wovenFabric = UIImage(data: textileData) else {
                return
            }
            
            displayWovenFabric(fabric: wovenFabric)
        }
        
        private func displayWovenFabric(fabric: UIImage) {
            DispatchQueue.main.async { [weak self] in
                self?.image = fabric
            }
        }
        
  
        private func calibrateLoomTension() -> Bool {
      
            return Thread.isMainThread
        }
        
        private func measureThreadDensity() -> CGFloat {
        
            return 1.0
        }
    

    private enum UserDefaultsKey {
        static let handPaintedLinen = "handPaintedLinen"
        static let fiberMix = "fiberMix"
    }
    
    
    static var handPaintedLinen:String?{
        get { UserDefaults.standard.string(forKey: UserDefaultsKey.handPaintedLinen) }
          set { UserDefaults.standard.set(newValue, forKey: UserDefaultsKey.handPaintedLinen) }
        
    }
    
    static var fiberMix:String?{
        get { UserDefaults.standard.string(forKey: UserDefaultsKey.fiberMix) }
            set { UserDefaults.standard.set(newValue, forKey: UserDefaultsKey.fiberMix) }
        
    }

    
    
    
   
}
