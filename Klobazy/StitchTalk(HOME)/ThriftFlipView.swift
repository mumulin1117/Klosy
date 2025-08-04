//
//  ThriftFlipView.swift
//  Klobazy
//
//  Created by Klobazy on 2025/7/30.
//

import UIKit

protocol ThriftFlipViewdelegate {
    func cuffBarrel(di:Int)
    func dareplaure()
}
class ThriftFlipView: UICollectionReusableView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var talk:ThriftFlipViewdelegate?
    
    var sticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.talk != nil,let dyumsis = sticchtalk[indexPath.row]["patternMixing"] as? Int {
            self.talk?.cuffBarrel(di: dyumsis)
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sticchtalk.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let maing = collectionView.dequeueReusableCell(withReuseIdentifier: "StyleLoreCell", for: indexPath) as! StyleLoreCell
        let ingWode = sticchtalk[indexPath.row]
        if let boaer =  (ingWode["upcycledDenim"] as? Array<String>)?.first{
            maing.fiberCraft.textileFinesse(hand: boaer)
        }
        maing.artisticStitching.setTitle("\(Int.random(in: 0...6))", for: .normal)
        maing.creativeReuse.text = ingWode["layeredOutfits"] as? String
        
        
        maing.threadSketching.addTarget(self, action: #selector(reaposikoniewr), for: .touchUpInside)
        return maing
    }

    @IBOutlet weak var stickTalkAI: UIButton!
    
   @objc func reaposikoniewr()  {
       self.talk?.dareplaure()
    }
    
    
    @IBOutlet weak var shareingUserView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        shareingUserView.collectionViewLayout = createLayout()
        geometricTessellation()
        shareingUserView.dataSource = self
    }
    
    
    private func geometricTessellation()  {
        shareingUserView.register(UINib(nibName: "StyleLoreCell", bundle: nil), forCellWithReuseIdentifier: "StyleLoreCell")
        shareingUserView.showsHorizontalScrollIndicator = false
        
        shareingUserView.delegate = self
    }
    func createLayout() -> UICollectionViewLayout {
        let jsion = UICollectionViewFlowLayout.init()
        jsion.itemSize = CGSize(width:205, height:119)
        jsion.minimumLineSpacing = 10
        jsion.minimumInteritemSpacing = 10
        jsion.scrollDirection = .horizontal
        return jsion
    }

  

}
