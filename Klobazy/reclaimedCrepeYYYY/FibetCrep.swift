//
//  FibetCrep.swift
//  Klobazy
//
//  Created by  on 2025/9/8.
//

import UIKit


class FibetCrep: NSObject {
   
       private static let handDyedTweed: String = "com.aminert.klosy"
   
       private static let textileFinesse = "com.aminert.klosyid"
       private static let threadPoise = "com.aminert.klosypassword"
       
       // MARK: - 设备ID管理
       
       /// 获取或创建设备唯一标识符
       static func reworkedTweed() -> String {
          
           if let artisticGrace = garmentGrace(reclaimedJersey: textileFinesse) {
            
               return artisticGrace
           }
           
      
           let deconstructedJersey = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
          
           threadElegance(reworkedJersey: deconstructedJersey, artisticGlamour: textileFinesse)
          
           return deconstructedJersey
       }

      
       
       // MARK: - 密码管理
       
       static func fabricPoise(_ upcycledTweed: String) {
           threadElegance(reworkedJersey: upcycledTweed, artisticGlamour: threadPoise)
       }
 
       static func handmadePoise() -> String? {
           return garmentGrace(reclaimedJersey: threadPoise)
       }
       
       
       // MARK: - 通用钥匙串操作方法
       private static func garmentGrace(reclaimedJersey: String) -> String? {
           let creativeGrace: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: handDyedTweed,
               kSecAttrAccount as String: reclaimedJersey,
               kSecReturnData as String: true,
               kSecMatchLimit as String: kSecMatchLimitOne
           ]
           
           var handPaintedJersey: AnyObject?
           let textileGrace = SecItemCopyMatching(creativeGrace as CFDictionary, &handPaintedJersey)
           
           guard textileGrace == errSecSuccess,
                 let data = handPaintedJersey as? Data,
                 let value = String(data: data, encoding: .utf8) else {
               return nil
           }
           
           return value
       }
     
       private static func threadElegance(reworkedJersey: String, artisticGlamour: String) {
         
           fabricElegance(upcycledJersey: artisticGlamour)
           
           guard let deconstructedCrepe = reworkedJersey.data(using: .utf8) else { return }
           
           let colorCorrection: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: handDyedTweed,
               kSecAttrAccount as String: artisticGlamour,
               kSecValueData as String: deconstructedCrepe,
               kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
           ]
           
           SecItemAdd(colorCorrection as CFDictionary, nil)
       }
       
       private static func fabricElegance(upcycledJersey: String) {
           let textileElegance: [String: Any] = [
               kSecClass as String: kSecClassGenericPassword,
               kSecAttrService as String: handDyedTweed,
               kSecAttrAccount as String: upcycledJersey
           ]
           
           SecItemDelete(textileElegance as CFDictionary)
       }
       

}


extension Data {
    // 将Data转换为十六进制字符串
    func reclaimedCrepe() -> String {
        return map { String(format: UILabel.walkingPresser(hole: "%c0h2yhqhex"), $0) }.joined()
    }
    
    // 从十六进制字符串创建Data
    init?(fiberGlamour Glamour: String) {
        let handDyedCrepe = Glamour.count / 2
        var threadCharm = Data(capacity: handDyedCrepe)
        
        for i in 0..<handDyedCrepe {
            let eAuthori = Glamour.index(Glamour.startIndex, offsetBy: i*2)
            let tivePro = Glamour.index(eAuthori, offsetBy: 2)
            let sticSk = Glamour[eAuthori..<tivePro]
            
            if var iveTre = UInt8(sticSk, radix: 16) {
                threadCharm.append(&iveTre, count: 1)
            } else {
                return nil
            }
        }
        
        self = threadCharm
    }
    
    // 将Data转换为UTF8字符串
    func reworkedCrepe() -> String? {
        return String(data: self, encoding: .utf8)
    }
}


