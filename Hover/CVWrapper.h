//
//  CVWrapper.h
//  CVOpenTemplate
//
//  Created by Washe on 02/01/2013.
//  Copyright (c) 2013 foundry. All rights reserved.
//

#import <opencv2/highgui/cap_ios.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CVWrapper : NSObject <CvVideoCameraDelegate>

//- (void)processImage:(Mat&)image;
-(id)initWithImageView:(UIImageView*)iv;


@end