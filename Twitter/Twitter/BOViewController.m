//
//  BOViewController.m
//  Twitter
//
//  Created by SREEPRASAD on 12/16/12.
//  Copyright (c) 2012 sreeprasad. All rights reserved.
//

#import "BOViewController.h"

@interface BOViewController ()

@end

@implementation BOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)TweetToTwitter:(id)sender {
    
    /*  if twitter is available 
            initialize twitter
     */
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]){
        SLComposeViewController *twitter =[[SLComposeViewController alloc]init];
        
        twitter=[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [twitter setInitialText:[NSString stringWithFormat:@"sending tweet to twitter from ios "]];
        [self  presentViewController:twitter animated:YES completion:nil];
        [twitter setCompletionHandler:^(SLComposeViewControllerResult result){
            NSString *output;
            switch(result){
                case SLComposeViewControllerResultCancelled:output=@"Action Cancelled";
                    break;
                case SLComposeViewControllerResultDone:
                    output=@"Tweeted succesfuly from ios";
                    break;
                default:
                    break;
            }
            UIAlertView *alert=[[UIAlertView alloc]
                                initWithTitle:@"Twitter" message:output delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
            [alert show];
            
            
        }];
    }
    
}

@end
