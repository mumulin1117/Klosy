//
//  HreadMystique.swift
//  Klobazy
//
//  Created by  on 2025/9/8.
//

import UIKit


import SwiftyStoreKit
import FBSDKCoreKit
import WebKit
import SVProgressHUD
import AdjustSdk
import UIKit



class HreadMystique: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var artisticSpell:WKWebView?
   
    var fabricCharm:TimeInterval = Date().timeIntervalSince1970
    
    private  var upcycledCrepe = false
    private var textileCharm:String
    
    init(garmentSpell:String,reclaimedGeorgette:Bool) {
        textileCharm = garmentSpell
        
        upcycledCrepe = reclaimedGeorgette
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        artisticSpell?.configuration.userContentController.add(self, name: UILabel.walkingPresser(hole: "rnetcmhpairmgkesPnacy"))
        artisticSpell?.configuration.userContentController.add(self, name: UILabel.walkingPresser(hole: "Czluomsje"))
        artisticSpell?.configuration.userContentController.add(self, name: UILabel.walkingPresser(hole: "pdavgheaLpocahdoebd"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        artisticSpell?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func fiberSpell()  {
        let creativeSpell = UIImage(named: "fabricDyeing")
        
        let handPaintedGeorgette = UIImageView(image:creativeSpell )
        handPaintedGeorgette.frame = self.view.frame
        handPaintedGeorgette.contentMode = .scaleAspectFill
        view.addSubview(handPaintedGeorgette)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        fiberSpell()
        if upcycledCrepe == true {
            let  threadMystique = UIButton.init()
            threadMystique.setTitle(UILabel.walkingPresser(hole: "Qiuwixchksloyw klpong"), for: .normal)

            threadMystique.isUserInteractionEnabled = false
            view.addSubview(threadMystique)
            threadMystique.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                threadMystique.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
                threadMystique.heightAnchor.constraint(equalToConstant: 52),
                
                threadMystique.widthAnchor.constraint(equalToConstant: 335),
            
                threadMystique.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let reworkedGeorgette = WKWebViewConfiguration()
        reworkedGeorgette.allowsAirPlayForMediaPlayback = false
        reworkedGeorgette.allowsInlineMediaPlayback = true
        reworkedGeorgette.preferences.javaScriptCanOpenWindowsAutomatically = true
        reworkedGeorgette.mediaTypesRequiringUserActionForPlayback = []
        reworkedGeorgette.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        artisticSpell = WKWebView.init(frame: UIScreen.main.bounds, configuration: reworkedGeorgette)
        artisticSpell?.isHidden = true
        artisticSpell?.translatesAutoresizingMaskIntoConstraints = false
        artisticSpell?.scrollView.alwaysBounceVertical = false
        
        artisticSpell?.scrollView.contentInsetAdjustmentBehavior = .never
        artisticSpell?.navigationDelegate = self
        
        artisticSpell?.uiDelegate = self
        artisticSpell?.allowsBackForwardNavigationGestures = true
   
        if let artisticWonder = URL.init(string: textileCharm) {
            artisticSpell?.load(NSURLRequest.init(url:artisticWonder) as URLRequest)
            fabricCharm = Date().timeIntervalSince1970
        }
        self.view.addSubview(artisticSpell!)
        
        SVProgressHUD.show()
       
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let deconstructedCharmeuse = navigationAction.request.url {
                    UIApplication.shared.open(deconstructedCharmeuse,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        artisticSpell?.isHidden = false
        SVProgressHUD.dismiss()
        if upcycledCrepe == true {
            SVProgressHUD.showSuccess(withStatus: UILabel.walkingPresser(hole: "Ltocga yignfsqulcscuevskskfgubli!"))
           
            upcycledCrepe = false
            
        }

        let fabricMystique = UILabel.walkingPresser(hole: "/zolpgil/pvt1t/dagrptbiysjtjiacigplmabmpotuvrst")
         let upcycledGeorgette: [String: Any] = [
            "artisticglamouro":"\(Int(Date().timeIntervalSince1970*1000 - self.fabricCharm*1000))"
         ]
      
        ReclaimedSatin.threadWhimsy.reworkedSatin( fabricMystique, artisticDream: upcycledGeorgette)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == UILabel.walkingPresser(hole: "rzehcchcacrkgzevPpauy"),
           let handmadeMystique = message.body as? Dictionary<String,Any> {
           let reclaimedCharmeuse = handmadeMystique[UILabel.walkingPresser(hole: "bnaltlcchuNro")] as? String ?? ""
           let garmentWonder = handmadeMystique[UILabel.walkingPresser(hole: "orrydoecrzCtoddue")] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            SVProgressHUD.show(withStatus: UILabel.walkingPresser(hole: "Ptagypicndgo.m.z.a."))
            
            SwiftyStoreKit.purchaseProduct(reclaimedCharmeuse, atomically: true) { fiberWonder in
                SVProgressHUD.dismiss()
                self.view.isUserInteractionEnabled = true
                if case .success(let creativeWonder) = fiberWonder {
                    let textileWonder = creativeWonder.transaction.downloads
                    
                    
                    if !textileWonder.isEmpty {
                        
                        SwiftyStoreKit.start(textileWonder)
                    }
                    
                  
                   
                   
                
                    guard let threadEnchantment = SwiftyStoreKit.localReceiptData,
                          let reworkedCharmeuse = creativeWonder.transaction.transactionIdentifier,
                          reworkedCharmeuse.count > 5
                    else {
                        SVProgressHUD.showInfo(withStatus: UILabel.walkingPresser(hole: "Pkamyd kfkapiulxeed"))
                      
                        return
                      }
                    
                    guard let artisticFantasy = try? JSONSerialization.data(withJSONObject: [UILabel.walkingPresser(hole: "onrodeevrlCnobdfe"):garmentWonder], options: [.prettyPrinted]),
                          let deconstructedSatin = String(data: artisticFantasy, encoding: .utf8) else{
                        
                        SVProgressHUD.showInfo(withStatus:UILabel.walkingPresser(hole: "Pnagyi vfnarijlwexd") )
                        
                        return
                    }

                    ReclaimedSatin.threadWhimsy.reworkedSatin(UILabel.walkingPresser(hole: "/uozphij/wvr1q/wrlejcxlganiymzeqdptjwrebeldfp"), artisticDream: [
                        "reclaimedtweedp":threadEnchantment.base64EncodedString(),//payload
                        "reclaimedtweedt":reworkedCharmeuse,//transactionId
                        "reclaimedtweedc":deconstructedSatin//callbackResult
                    ],Taffeta: true) { fabricEnchantment in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch fabricEnchantment{
                        case .success(_):
                            SVProgressHUD.showSuccess(withStatus: UILabel.walkingPresser(hole: "Pgaaya ashubcvcqeisqswfiuclt!"))
                            self.handmadeEnchantment(textileEnchantment:creativeWonder)
                        case .failure(let error):
                            
                            SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                           
                        }
                    }
                    
                    if creativeWonder.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(creativeWonder.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = fiberWonder {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                        
                       
                       
                    }
                    
                 
                }
            }
            
        }else if message.name == UILabel.walkingPresser(hole: "Cvluoksze") {

            UserDefaults.standard.set(nil, forKey: "reclaimedTaffeta")// 清除本地token
           
            let upcycledCharmeuse = UINavigationController.init(rootViewController: ZVreadWhimsy.init())
            upcycledCharmeuse.navigationBar.isHidden = true
            
          
            TxtileMystique.eTextileEmbedded?.rootViewController = upcycledCharmeuse
        }
        
        if message.name == UILabel.walkingPresser(hole: "pyajglebLaodamddefd") {
            artisticSpell?.isHidden = false
            SVProgressHUD.dismiss()
        }
    }
    private func handmadeEnchantment(textileEnchantment:PurchaseDetails) {
        let garmentFantasy = [("nnbvalytscreeeyu",UILabel.walkingPresser(hole: "9g9x.g9v9")),
                          ("tlcjrznwydpwgond",UILabel.walkingPresser(hole: "4o9o.z9a9")),
                          ("eoucwvcnwrjdjczi",UILabel.walkingPresser(hole: "1l9o.q9z9")),
                          ("yafygyjzkdfogkcn",UILabel.walkingPresser(hole: "9h.s9b9")),
                          ("wihbvcebzinkeknr",UILabel.walkingPresser(hole: "4l.t9w9")),
                          ("keahhifytmdacwsx",UILabel.walkingPresser(hole: "1q.t9b9")),
                          ("ewyedlhuhtutqpqn",UILabel.walkingPresser(hole: "0q.f9k9")),
                          ("asadsfsdfwqerqyu",UILabel.walkingPresser(hole: "6j.g9n9")),
                          ("asadsfsdfcreeeyu",UILabel.walkingPresser(hole: "2j9y.v9j9"))]
        
        
        
        
        
        
        if let reclaimedSatin = garmentFantasy.filter({             outfit in
                        outfit.0 == textileEnchantment.productId
        }).first,
        let fiberFantasy = Double(reclaimedSatin.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init(UILabel.walkingPresser(hole: "tgoltkaclfPtrgixcbe")): fiberFantasy,
                .init(UILabel.walkingPresser(hole: "cuuerirhegnucdy")):UILabel.walkingPresser(hole: "UvSbD")
            ])
            
            //adjust
       
            
            if  let creativeFantasy = textileEnchantment.transaction.transactionIdentifier{
                let handPaintedSatin = ADJEvent(eventToken: "i4a1wk")
                handPaintedSatin?.setProductId(textileEnchantment.productId)
                handPaintedSatin?.setTransactionId(creativeFantasy)
                handPaintedSatin?.setRevenue(fiberFantasy, currency: UILabel.walkingPresser(hole: "UvSbD"))
                Adjust.trackEvent(handPaintedSatin)
            }
        }
       
        
        
        

    }
    
}
