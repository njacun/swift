//
//  ViewController.swift
//  collectionview
//
//  Created by Admin on 24.01.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    var Amount = 10
    var Cities = [String]()
    var Images = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Cities = ["Moscow", "London", "New - York", "Tokyo", "Pekin"]
        
        Images = [UIImage(named: "moscow.jpg")!, UIImage(named: "london.jpg")!, UIImage(named: "newyork.jpg")!, UIImage(named: "tokyo.jpg")!, UIImage(named: "pekin.jpg")!]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Amount
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        
        var Label =  cell.viewWithTag(1) as! UILabel
        Label.text = Cities[indexPath.row % Cities.count]
        
        var Image = cell.viewWithTag(2) as! UIImageView
        Image.image = Images[indexPath.row % Cities.count]
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showImage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showImage" {
            if let vc = segue.destination as? NewViewController{
                let indexPaths = collectionView!.indexPathsForSelectedItems!
                let indexPath = indexPaths[0] as NSIndexPath
            
                //let vc = segue.destination as! NewViewController
            
                vc.label = self.Cities[indexPath.row % Cities.count]
                vc.image = self.Images[indexPath.row % Cities.count]
            }
        }
    }
}

