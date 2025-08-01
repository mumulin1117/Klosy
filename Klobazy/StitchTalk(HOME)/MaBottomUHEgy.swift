//
//  MaBottomUHEgy.swift
//  Klobazy
//
//  Created by Klobazy on 2025/8/1.
//

import UIKit

protocol MaBottomUHEgydelegate {
    func cuffBarrelKnowedge(di:Int)
}

class MaBottomUHEgy: UICollectionViewCell {
    var talk:MaBottomUHEgydelegate?
    
    var sticchtalk:Array<Dictionary<String,Any>> = Array<Dictionary<String,Any>>(){
        didSet{
            self.mainghsingo?.reloadData()
        }
    }
   
    var mainghsingo:UICollectionView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let colv = mainShowerview()
        self.mainghsingo = colv
        self.contentView.addSubview(colv)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createLayout() -> UICollectionViewLayout {
        let jsion = UICollectionViewFlowLayout.init()
        jsion.itemSize = CGSize(width:290, height:422)
        jsion.minimumLineSpacing = 16
        jsion.minimumInteritemSpacing = 16
        jsion.scrollDirection = .horizontal
        return jsion
    }

    func mainShowerview() -> UICollectionView {
        let celltaincer = UICollectionView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 422), collectionViewLayout: createLayout())
        celltaincer.backgroundColor = .clear
        celltaincer.register(UINib(nibName: "VinoViewCell", bundle: nil), forCellWithReuseIdentifier: "VinoViewCell")
        celltaincer.showsHorizontalScrollIndicator = false
        
        celltaincer.delegate = self
        celltaincer.dataSource = self
        return celltaincer
    }

}




extension MaBottomUHEgy:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.talk != nil {
            self.talk?.cuffBarrelKnowedge(di: indexPath.row)
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sticchtalk.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
       
        
        let maing = collectionView.dequeueReusableCell(withReuseIdentifier: "VinoViewCell", for: indexPath) as! VinoViewCell
        let ingWode = sticchtalk[indexPath.row]
        if let boaer =  (ingWode["upcycledDenim"] as? Array<String>)?.first{
            maing.weltPocket.textileFinesse(hand: boaer)
        }
        maing.DIYtextiles.text = ingWode["freehandCutting"] as? String
        maing.bespokeAlterations.text = ingWode["layeredOutfits"] as? String
        return maing
    }
    
    
}
