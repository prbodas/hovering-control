//
//  ViewController.swift
//  Hover
//
//  Created by Prachi Bodas on 7/3/16.
//  Copyright © 2016 Prachi Bodas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CvVideoCameraDelegate {
    
    //var myCamera : CvVideoCamera!
    var camWrapper:CVWrapper!

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.camWrapper = CVWrapper(imageView: imageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

