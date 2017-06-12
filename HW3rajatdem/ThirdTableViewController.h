//
//  ThirdTableViewController.h
//  HW3rajatdem
//
//  Created by Rajat Mathur on 6/11/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AddViewController.h"
@interface ThirdTableViewController :
UITableViewController<NSFetchedResultsControllerDelegate>
//CoreData
@property (strong, nonatomic) NSFetchedResultsController
*fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext
*managedObjectContext;
- (void)insertNewObjectEventName:(NSString *)eventName
                       eventTime:(NSString *)eventTime eventLocation:(NSString
                                                                      *)eventLocation;
@end
