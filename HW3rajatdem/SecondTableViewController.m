//
//  SecondTableViewController.m
//  HW3rajatdem
//
//  Created by Rajat Mathur on 6/11/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()

@end

@implementation SecondTableViewController

-(id)init
{
    self = [super init];
    if(self)
    {
       
        NSDictionary *eventNames = @{@"item0": @"Kick-Off Rally",
                                     @"item1": @"Blacktie & Tailpipes Gala",
                                     @"item2": @"Historics at Pitt Race Weekend",
                                     @"item3": @"Walk of Peace",
                                     @"item4": @"Home Coming",
                                     @"item5": @"Movie Night",
                                     @"item6": @"Bowling",
                                     @"item7": @"Pizza Party",
                                     @"item8": @"Independence Day",
                                     @"item9": @"End of Semester"};
        
        NSDictionary *eventDateLocation = @{@"item0": @"Sunday, July 2 at TBD",
                                            @"item1": @"July 7 at TBD",
                                            @"item2": @"July 7-9 at Pittsburgh International Race Complex ",
                                            @"item3": @"June 10 at UPitt",
                                            @"item4": @"June 11 at Murray Avenue",
                                            @"item5": @"Aug 4 at PNC Park",
                                            @"item6": @"June 22 at PPG",
                                            @"item7": @"June 30 at PizzaHut",
                                            @"item8": @"July 4 at Point State Park",
                                            @"item9": @"Aug 12 at TBD"};
        
        _events = eventNames.allValues;
        _eventDates = eventDateLocation.allValues;
                }
    NSLog(@"%@ %@", _events, _eventDates);
        return self;
    }

- (void)viewDidLoad {
    [super viewDidLoad];
    [self init];
    self.title=@"PVGP Events";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _events.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text =[_events
                          objectAtIndex:indexPath.row];
    cell.detailTextLabel.text=[_eventDates
                               objectAtIndex:indexPath.row];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
