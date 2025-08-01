//
//  MadeMystique rController.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/31.
//
import SVProgressHUD
import UIKit
import WebKit
import SwiftyStoreKit
class MadeMystiquerController: UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    private  var deconstructedCrepe:String
    
    
    init(artisticGlamour: String) {
      
        self.deconstructedCrepe = artisticGlamour
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        SVProgressHUD.show()
  
        self.view.addSubview(self.handPaintedJersey)
        handPaintedJersey.navigationDelegate = self
        
        handPaintedJersey.scrollView.contentInsetAdjustmentBehavior = .never
        if let url = URL(string:deconstructedCrepe ) {
            let request = URLRequest(url: url)
           
            handPaintedJersey.load(request)
            
        }
    }
    
    private var reworkedJersey:[String] = Array()
    
  
    func threadElegance()->WKWebViewConfiguration{
        reworkedJersey.append("handmadePanache")
        
        reworkedJersey.append("upcycledBoucle")
        reworkedJersey.append("fabricPanache")
        reworkedJersey.append("deconstructedTweed")
        reworkedJersey.append("artisticFinesse")
        reworkedJersey.append("reworkedBoucle")
        
        let textileGrace = WKWebViewConfiguration()
       
        textileGrace.mediaTypesRequiringUserActionForPlayback = []
       
        textileGrace.allowsInlineMediaPlayback = true
        textileGrace.preferences.javaScriptCanOpenWindowsAutomatically = true
        reworkedJersey.forEach { info in
            textileGrace.userContentController.add(self, name: info)
        }
        return textileGrace
      
    }
    
    
    private lazy var handPaintedJersey: WKWebView = {
        let creativeGrace = WKWebView(frame: UIScreen.main.bounds, configuration: self.threadElegance())
        
       
        creativeGrace.scrollView.showsVerticalScrollIndicator = false
        
        creativeGrace.uiDelegate = self
        creativeGrace.backgroundColor = .clear
        
        creativeGrace.isHidden = true
        return creativeGrace
    }()
    
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            SVProgressHUD.dismiss()
        }))
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        
        switch message.name {
        case "handmadePanache":
            guard let piece = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            SVProgressHUD.show(withStatus: "Paying...")
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                SVProgressHUD.dismiss()
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    
                    self.handPaintedJersey.evaluateJavaScript("upcycledBoucle()", completionHandler: nil)
                    SVProgressHUD.showSuccess(withStatus: "Pay successful!")
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                    SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                    
                }
                
            }
        case "fabricPanache":
            if let textileFinesse =  message.body as? String{
                let handDyedTweed = MadeMystiquerController.init(artisticGlamour: textileFinesse)
                
                self.navigationController?.pushViewController(handDyedTweed, animated: true)
                
                
            }
        case "artisticFinesse":
            
            self.navigationController?.popViewController(animated: true)
        case "reworkedBoucle":
            UIImageView.handPaintedLinen = nil
            UIImageView.fiberMix = nil
            let vontetn = UINavigationController(rootViewController: MaLoaiController.init())
            vontetn.navigationBar.isHidden = true
            ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  vontetn
           
        default: break
        }
    }
}

