//
//  Event.h
//  HW3rajatdem
//
//  Created by Rajat Mathur on 6/12/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@interface Event : NSManagedObject
@property (nonatomic, retain) NSString *eventName;
@property (nonatomic, retain) NSString *eventTime;
@property (nonatomic, retain) NSString *eventLocation;
@end
