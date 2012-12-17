//
//  BOViewController.h
//  GoogleSDKFirstProject
//
//  Created by SREEPRASAD on 12/16/12.
//  Copyright (c) 2012 sreeprasad. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>

#import "GTMOAuth2ViewControllerTouch.h"
#import "GTLDrive.h"

@interface BOViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic, retain) GTLServiceDrive *driveService;

@end
