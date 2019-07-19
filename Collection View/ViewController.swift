//
//  ViewController.swift
//  Collection View
//
//  Created by Marija Janeckaitė on 19/07/2019.
//  Copyright © 2019 Marija Janeckaitė. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    
    var itemArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = (view.frame.size.width - 20) / 3
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = itemArray[indexPath.row]
        }
        return cell
    }
}

