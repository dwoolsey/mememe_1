//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by User on 5/15/15.
//  Copyright (c) 2015 Neural Health Systems. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    var meme: Meme!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    
    //Set text field and image for detail view
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.textLabel.text = self.meme.textTop
        
        self.tabBarController?.tabBar.hidden = true
        
        self.imageView!.image = self.meme.memedImage
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.hidden = false
    }
}
