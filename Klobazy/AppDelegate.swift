//
//  AppDelegate.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit
import SwiftyStoreKit

struct VirtualGarment {
        let basePattern: String
        let modifications: [String]
        var complexityScore: Int {
            modifications.count * 10
        }
    }


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

   
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let stobaord = UIStoryboard(name: UILabel.walkingPresser(hole: "Mxapicn"), bundle: nil)
        
        if UIImageView.handPaintedLinen != nil {
            window?.rootViewController =  stobaord.instantiateViewController(identifier: "Dreammennhba")
            
        }else{
            commerce()
           
        }
        deterministic()
        return true
    }

   
    
    private func commerce()  {
        let vontetn = UINavigationController(rootViewController: MaLoaiController.init())
        vontetn.navigationBar.isHidden = true
      
        window?.rootViewController = vontetn
    }
    private func deterministic()  {
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in }
        window?.makeKeyAndVisible()
    }
}




