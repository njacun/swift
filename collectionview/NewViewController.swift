//
//  NewViewController.swift
//  collectionview
//
//  Created by Admin on 25.01.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var image = UIImage()
    var label = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = self.image
        self.titleLabel.text = self.label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
