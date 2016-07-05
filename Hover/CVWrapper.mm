//
//  CVWrapper.m
//  CVOpenTemplate
//
//  Created by Washe on 02/01/2013.
//  Copyright (c) 2013 foundry. All rights reserved.
//

#import "CVWrapper.h"
#import "UIImage+OpenCV.h"
#import <opencv2/highgui/cap_ios.h>
using namespace cv;


//#import "stitching.h"
//#import "UIImage+Rotate.h"

@interface CVWrapper() <CvVideoCameraDelegate>
{
}
@end

@implementation CVWrapper
{
    UIImageView * imageView;
    CvVideoCamera * myCamera;
}


-(id)initWithImageView:(UIImageView*)iv
{
    //viewController = c;
    imageView = iv;
    
    myCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    
    //camera setup
    myCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionFront;
    myCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPresetMedium;
    myCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    myCamera.rotateVideo = YES;
    [myCamera start];
    
    
    myCamera.delegate = self;
    
    return self;
}

- (void)processImage:(Mat&)image
{
    // Do some OpenCV stuff with the image
    //automatically calls and displays modified image
    NSLog(@"Processing");
}



//TRASH CODE AS OF NOW
//+ (UIImage*) processWithOpenCVImage1:(UIImage*)inputImage1 image2:(UIImage*)inputImage2;
//{
//    NSArray* imageArray = [NSArray arrayWithObjects:inputImage1,inputImage2,nil];
//    UIImage* result = [[self class] processWithArray:imageArray];
//    return result;
//}
//
//+ (UIImage*) processWithArray:(NSArray*)imageArray
//{
//    if ([imageArray count]==0){
//        NSLog (@"imageArray is empty");
//        return 0;
//    }
//    std::vector<cv::Mat> matImages;
//    
//    for (id image in imageArray) {
//        if ([image isKindOfClass: [UIImage class]]) {
//            /*
//             All images taken with the iPhone/iPa cameras are LANDSCAPE LEFT orientation. The  UIImage imageOrientation flag is an instruction to the OS to transform the image during display only. When we feed images into openCV, they need to be the actual orientation that we expect them to be for stitching. So we rotate the actual pixel matrix here if required.
//             */
//            UIImage* rotatedImage = [image rotateToImageOrientation];
//            cv::Mat matImage = [rotatedImage CVMat3];
//            NSLog (@"matImage: %@",image);
//            matImages.push_back(matImage);
//        }
//    }
//    NSLog (@"stitching...");
//    cv::Mat stitchedMat = stitch (matImages);
//    UIImage* result =  [UIImage imageWithCVMat:stitchedMat];
//    return result;
//}


@end