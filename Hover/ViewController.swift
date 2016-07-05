//
//  ViewController.swift
//  Hover
//
//  Created by Prachi Bodas on 7/3/16.
//  Copyright © 2016 Prachi Bodas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CvVideoCameraDelegate {
    
    var myCamera : CvVideoCamera!

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myCamera = CvVideoCamera(parentView: imageView)
        myCamera.delegate = self
        myCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePosition.Front
        myCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPresetMedium
        myCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientation.Portrait
        var xform: CGAffineTransform = CGAffineTransformMakeRotation(CGFloat(-M_PI / 2))
        imageView.transform = xform

        myCamera.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

