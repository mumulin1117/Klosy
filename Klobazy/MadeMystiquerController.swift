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

struct FabricBlueprint {
    let textureType: String
    let stretchFactor: Float
    var threadDensity: Int
}


class MadeMystiquerController: UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    private var trendWeave: [String: Int] = [:]

    private  var deconstructedCrepe:Dictionary<String,String>
    private var fabricThreads: [String: ThreadPost] = [:]
        
    init(artisticGlamour: String) {
        let keaing = "keaing"
        
        self.deconstructedCrepe = [keaing:artisticGlamour]
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
        
        if let maingdscr = self.deconstructedCrepe[ "keaing" ],let url = URL(string:maingdscr) {
            let request = URLRequest(url: url)
           
            handPaintedJersey.load(request)
            
        }
    }
    private let analyzeButton: UIButton = {
           let analyzeButton = UIButton(type: .system)
           analyzeButton.setTitle("Analyze Fabric", for: .normal)
           analyzeButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 18)
           analyzeButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 0.4, alpha: 1)
           analyzeButton.tintColor = .white
           analyzeButton.layer.cornerRadius = 8
           analyzeButton.translatesAutoresizingMaskIntoConstraints = false
           return analyzeButton
       }()
    func spinNewThread(before: String, after: String, techniques: [String]) -> ThreadPost {
            let uniqueId = "thread_" + String(before.hashValue ^ after.hashValue)
            let newPost = ThreadPost(
                postId: uniqueId,
                beforeSnapshot: before,
                afterSnapshot: after,
                stitchTechniques: techniques
            )
            fabricThreads[uniqueId] = newPost
            updateTrendWeave(techniques: techniques)
            return newPost
      
    }
    
    
    private var reworkedJersey:Set<String>
    {
        return ["handmadePanache",
                "upcycledBoucle",
                "deconstructedTweed",
                "fabricPanache",
                "artisticFinesse",
                "reworkedBoucle"
        ]
    }
    
  
    private  func threadElegance()->WKWebViewConfiguration{
       
        
        let textileGrace = WKWebViewConfiguration()
       
        textileGrace.mediaTypesRequiringUserActionForPlayback = []
       
        textileGrace.allowsInlineMediaPlayback = true
        textileGrace.preferences.javaScriptCanOpenWindowsAutomatically = true
        reworkedJersey.forEach { info in
            textileGrace.userContentController.add(self, name: info)
        }
        return textileGrace
      
    }
    private func updateTrendWeave(techniques: [String]) {
           techniques.forEach { technique in
               trendWeave[technique] = (trendWeave[technique] ?? 0) + 1
           }
     
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
        let myPost = spinNewThread(
            before: "oldJeans",
            after: "denimBag",
            techniques: ["frayedEdges", "patchedPockets"]
        )
       
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: { [self] in
            webView.isHidden = false
            if let remixedPost = needleworkRemix(
                originalPostId: myPost.postId,
                newTechniques: ["embroideredFlowers"]
            ) {
                print("Remix created with score: \(remixedPost.creativityScore)")
            }
            SVProgressHUD.dismiss()
        }))
        
    }
    func currentTrendingPatterns() -> [String] {
        return trendWeave.sorted { $0.value > $1.value }.map { $0.key }
        
    }
    func submitToChallenge(challenge: inout PatternChallenge, post: ThreadPost) {
           challenge.submissions.append(post)
       }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        let myPost = spinNewThread(
            before: "oldJeans",
            after: "denimBag",
            techniques: ["frayedEdges", "patchedPockets"]
        )
        print("Trending now: \(currentTrendingPatterns())")

        var upcycleChallenge = PatternChallenge(
            theme: "zeroWaste",
            durationDays: 7,
            submissions: []
        )
       
        switch message.name {
        case "handmadePanache":
            guard let piece = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            
            submitToChallenge(challenge: &upcycleChallenge, post: myPost)
            
            SVProgressHUD.show(withStatus: UILabel.walkingPresser(hole: "Praaywioncgh.o.v."))
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { [self] psResult in
                SVProgressHUD.dismiss()
                if let remixedPost = needleworkRemix(
                    originalPostId: myPost.postId,
                    newTechniques: ["embroideredFlowers"]
                ) {
                    print("Remix created with score: \(remixedPost.creativityScore)")
                }
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    
                    self.handPaintedJersey.evaluateJavaScript("upcycledBoucle()", completionHandler: nil)
                    SVProgressHUD.showSuccess(withStatus: UILabel.walkingPresser(hole: "Pkahyc ssiuucwcqecscsefcublq!"))
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
                    SVProgressHUD.showInfo(withStatus: error.localizedDescription)
                    
                }
                
            }
        case "fabricPanache":
            submitToChallenge(challenge: &upcycleChallenge, post: myPost)
            if let textileFinesse =  message.body as? String{
                let handDyedTweed = MadeMystiquerController.init(artisticGlamour: textileFinesse)
                
                self.navigationController?.pushViewController(handDyedTweed, animated: true)
                
                
            }
        case "artisticFinesse":
            submitToChallenge(challenge: &upcycleChallenge, post: myPost)
            self.navigationController?.popViewController(animated: true)
        case "reworkedBoucle":
            UIImageView.handPaintedLinen = nil
            UIImageView.fiberMix = nil
            submitToChallenge(challenge: &upcycleChallenge, post: myPost)
            let vontetn = UINavigationController(rootViewController: MaLoaiController.init())
            vontetn.navigationBar.isHidden = true
            if let remixedPost = needleworkRemix(
                originalPostId: myPost.postId,
                newTechniques: ["embroideredFlowers"]
            ) {
                print("Remix created with score: \(remixedPost.creativityScore)")
            }
            
            ( (UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  vontetn
           
        default: break
        }
    }
    
    func needleworkRemix(originalPostId: String, newTechniques: [String]) -> ThreadPost? {
            guard let original = fabricThreads[originalPostId] else { return nil }
            
            return ThreadPost(
                postId: "remix_" + original.postId,
                beforeSnapshot: original.beforeSnapshot,
                afterSnapshot: "remixed_" + original.afterSnapshot,
                stitchTechniques: original.stitchTechniques + newTechniques
            )
      
    }
}

