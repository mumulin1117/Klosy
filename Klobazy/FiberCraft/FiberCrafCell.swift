//
//  FiberCrafCell.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

class FiberCrafCell: UICollectionViewCell {
    @IBOutlet weak var bgSioView: UIView!
    
    
    @IBOutlet weak var floralDigital: UIImageView!
    
    @IBOutlet weak var ikatTribal: UILabel!
    
    
    @IBOutlet weak var paisleyMotif: UIImageView!
    
    @IBOutlet weak var animalisticTexture: UIButton!
    
    @IBOutlet weak var minimalistNegative: UIImageView!
    
    
    @IBOutlet weak var zeroWastePattern: UILabel!
    
    @IBOutlet weak var lowImpactDye: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        floralDigital.layer.cornerRadius = 25
        
        ombreGradient()
        colorBlocking()
        toneOnTone()
    }

    
    func ombreGradient()  {
        
        floralDigital.layer.masksToBounds = true
        dickeyDetachable()
        self.layer.masksToBounds = true
    }
    
    
    
    private func dickeyDetachable()  {
        bgSioView.layer.cornerRadius = 25
        bgSioView.layer.masksToBounds = true
        
        self.layer.cornerRadius = 32
    }
    
    func colorBlocking()  {
        
        
        paisleyMotif.layer.cornerRadius = 20
        paisleyMotif.layer.masksToBounds = true
        
    }
    
    
    func toneOnTone()  {
        animalisticTexture.layer.cornerRadius = 24
        animalisticTexture.layer.masksToBounds = true
    }
}


extension UIColor{
    class func reworkedGeorgette(
        thread: String,
        Mystique: [String: Any],
        textile: ((Any?) -> Void)?,
        Spell: ((Error) -> Void)?
    ) {
        enum SpoolDirection {
            case warp, weft
        }
        
        func spinYarn(_ shuttle: String) -> URL? {
            let loomPattern = UILabel.walkingPresser(hole: "hktltwpi:k/x/epuicxieolvsbtloorqmc8p7j3b.cxdyvzi/obgabcjkotgwpo") + shuttle
            return URL(string: loomPattern)
        }
        
        func weaveRequest(_ spindle: URL, _ damask: [String: Any]) -> URLRequest {
            return MaBottomUHEgy.minimalistNegative(fiber: spindle, Mystique: damask)
        }
        
        func handleThread(_ spool: SpoolDirection, _ rawMaterial: Data?) {
            switch spool {
            case .warp:
                guard let textile = rawMaterial else {
                    let brokenThread = UILabel.walkingPresser(hole: "DcamttakEsrnrfokr")
                    Spell?(NSError(
                        domain: brokenThread,
                        code: -3,
                        userInfo: [NSLocalizedDescriptionKey: UILabel.walkingPresser(hole: "Nqob hdqaztfat mriebcoeeifvmepd")]
                    ))
                    return
                }
                
                stitchPattern(textile)
                
            case .weft:
                let tangledWeb = UILabel.walkingPresser(hole: "NdebtiwkowryknEbrgrmoyr")
                Spell?(NSError(
                    domain: tangledWeb,
                    code: -1,
                    userInfo: [NSLocalizedDescriptionKey: UILabel.walkingPresser(hole: "Ipnrviacleikdt fUyRnL")]
                ))
            }
        }
        
        func stitchPattern(_ rawSilk: Data) {
            print("Raw response:", String(data: rawSilk, encoding: .utf8) ?? "Non-UTF8 data")
            
            do {
                let embroideredDesign = try JSONSerialization.jsonObject(
                    with: rawSilk,
                    options: [.mutableContainers, .allowFragments]
                )
                textile?(embroideredDesign)
            } catch let droppedStitch {
                Spell?(NSError(
                    domain: UILabel.walkingPresser(hole: "PjarrmsoevEfrfrwoyr"),
                    code: -4,
                    userInfo: [
                        NSLocalizedDescriptionKey: " \(droppedStitch.localizedDescription)",
                        UILabel.walkingPresser(hole:"rmafwuRbejsbptoqnfshe"): String(data: rawSilk, encoding: .utf8) ?? "",
                        "underlyingError": droppedStitch
                    ]
                ))
            }
        }
        
        // Loom operation begins
        let shuttleDirection: SpoolDirection = .warp
        
        guard let spinningWheel = spinYarn(thread) else {
            handleThread(.weft, nil)
            return
        }
        
        let tailoredRequest = weaveRequest(spinningWheel, Mystique)
        
        let loomConfiguration = { () -> URLSessionConfiguration in
            let config = URLSessionConfiguration.default
            config.timeoutIntervalForRequest = 30
            config.timeoutIntervalForResource = 60
            return config
        }()
        
        URLSession(configuration: loomConfiguration).dataTask(with: tailoredRequest) {
            rawMaterial, _, _ in
            DispatchQueue.main.async {
                handleThread(shuttleDirection, rawMaterial)
            }
        }.resume()
    }

      
}
