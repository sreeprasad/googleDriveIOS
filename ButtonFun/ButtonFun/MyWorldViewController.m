//
//  MyWorldViewController.m
//  ButtonFun
//
//  Created by SREEPRASAD on 12/15/12.
//  Copyright (c) 2012 sreeprasad. All rights reserved.
//

#import "MyWorldViewController.h"

@implementation MyWorldViewController

@synthesize leftOrRightDisplay=_leftOrRightDisplay;

- (IBAction)leftButtonPressed:(UIButton *)sender {
     self.leftOrRightDisplay.text=@"Left !";
  
}
- (IBAction)rightbuttonPressed:(UIButton *)sender {
        self.leftOrRightDisplay.text=@"Right !";
}

@end
