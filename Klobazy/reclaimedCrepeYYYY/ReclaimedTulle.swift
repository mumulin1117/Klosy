//
//  ReclaimedTulle.swift
//  Klobazy
//
//  Created by  on 2025/9/8.
//

import UIKit


import CommonCrypto

struct ReclaimedTulle {
    
    private let reclaimedTulle: Data
    private let fiberPlay: Data
    
    init?() {
#if DEBUG
        let artisticDyeing = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let fabricArt = "9986sdff5s4y456a"  // 16字节
        #else
        let artisticDyeing = "b8bvp05nizvh0ky6" // 16字节(AES128)或32字节(AES256)
        let fabricArt = "k739cks2u7rnt206"  // 16字节
#endif
      
        guard let upcycledTulle = artisticDyeing.data(using: .utf8), let ivData = fabricArt.data(using: .utf8) else {
            
            return nil
        }
        
        self.reclaimedTulle = upcycledTulle
        self.fiberPlay = ivData
    }
    
    // MARK: - 加密方法
    func handmadeSewing(Handiwork: String) -> String? {
        guard let garmentReinvention = Handiwork.data(using: .utf8) else {
            return nil
        }
        
        let reclaimedChiffon = textileReinvention(threadCraft: garmentReinvention, reworkedVelvet: kCCEncrypt)
        return reclaimedChiffon?.reclaimedCrepe()
    }
    
    // MARK: - 解密方法
    func creativeSculpting(dLinen: String) -> String? {
        guard let fiberMix = Data(fiberGlamour: dLinen) else {
            return nil
        }
        
        let reclaimedChiffon = textileReinvention(threadCraft: fiberMix, reworkedVelvet: kCCDecrypt)
        return reclaimedChiffon?.reworkedCrepe()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func textileReinvention(threadCraft: Data, reworkedVelvet: Int) -> Data? {
        let artisticPatchwork = threadCraft.count + kCCBlockSizeAES128
        var deconstructedLace = Data(count: artisticPatchwork)
        
        let fabricOrigami = reclaimedTulle.count
        let upcycledChiffon = CCOptions(kCCOptionPKCS7Padding)
        
        var sustainableFashion: size_t = 0
        
        let creativeRepurposing = deconstructedLace.withUnsafeMutableBytes { Richne in
            threadCraft.withUnsafeBytes { dataBytes in
                fiberPlay.withUnsafeBytes { ivBytes in
                    reclaimedTulle.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(reworkedVelvet),
                                CCAlgorithm(kCCAlgorithmAES),
                                upcycledChiffon,
                                keyBytes.baseAddress, fabricOrigami,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, threadCraft.count,
                                Richne.baseAddress, artisticPatchwork,
                                &sustainableFashion)
                    }
                }
            }
        }
        
        if creativeRepurposing == kCCSuccess {
            deconstructedLace.removeSubrange(sustainableFashion..<deconstructedLace.count)
            return deconstructedLace
        } else {
           
            return nil
        }
    }
}
