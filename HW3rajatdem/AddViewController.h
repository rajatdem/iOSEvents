//
//  AddViewController.h
//  HW3rajatdem
//
//  Created by Rajat Mathur on 6/12/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *eventName;
@property (weak, nonatomic) IBOutlet UITextField *eventTime;
@property (weak, nonatomic) IBOutlet UITextField *eventLocation;
- (IBAction)saveEvent:(id)sender;

@end
