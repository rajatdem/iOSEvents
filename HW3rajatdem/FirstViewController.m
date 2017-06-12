//
//  FirstViewController.m
//  HW3rajatdem
//
//  Created by Rajat Mathur on 6/11/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "FirstViewController.h"
#import "sys/utsname.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addLabelDate];
    [self addLabeliOS];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)addLabelDate{
    UILabel *aLabel = [[UILabel alloc]initWithFrame:
                       CGRectMake(120, 267, 250, 21)];
    aLabel.numberOfLines = 1;
    aLabel.textColor = [UIColor blackColor];
    aLabel.backgroundColor = [UIColor clearColor];
    aLabel.textAlignment = UITextAlignmentLeft;
    
    

    // get current date/time
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    // display in 12HR/24HR (i.e. 11:25PM or 23:25) format according to User Settings
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss a"];
   
    NSString *timeCurrent = [NSString stringWithFormat:@"%@ %@", [dateFormatter stringFromDate:today], [[NSTimeZone systemTimeZone] name]];
   // NSString *currentTime = [@"%@ %@" [dateFormatter stringFromDate:today] ;
   // currentTime.conca[NSTimeZone systemTimeZone];
    
    aLabel.text = timeCurrent;
    
    NSLog(@"rajatdem %@", timeCurrent);
    
    [self.view addSubview:aLabel];
}

-(void)addLabeliOS{
    UILabel *aLabel = [[UILabel alloc]initWithFrame:
                       CGRectMake(120, 357, 100, 21)];
    aLabel.numberOfLines = 1;
    aLabel.textColor = [UIColor blackColor];
    aLabel.backgroundColor = [UIColor clearColor];
    aLabel.textAlignment = UITextAlignmentLeft;
    
    NSString *device = machineName();
    
    aLabel.text = device;
    [self.view addSubview:aLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

NSString* machineName()
{
    struct utsname systemInfo;
    uname(&systemInfo);
    
    return [NSString stringWithCString:systemInfo.machine
                              encoding:NSUTF8StringEncoding];
}

@end
