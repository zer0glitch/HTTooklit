/*
 Copyright (c) 2014 Scientific Research Corporation
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */
//
//  HTUSstateViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 7/10/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTUSstateViewController.h"
#import "HTAllianceData.h"
#import "HTUSjursViewController.h"
#import "HTAttorneyViewController.h"

@interface HTUSstateViewController ()

@end

@implementation HTUSstateViewController
@synthesize districts, list, bannerIsVisible;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    
    adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
    //adView.frame = CGRectOffset(adView.frame, 0, adView.frame.size.height-30);
    if (!self.bannerIsVisible) {
        adView.frame = CGRectOffset(adView.frame, 0, 30);
    }
    
    [adView setDelegate:self];
    
    self.bannerIsVisible = NO;
    //  adView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    [self.view addSubview:adView];
    
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return districts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"distCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [districts objectAtIndex:indexPath.row];
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showJurs"]) {
        HTUSjursViewController*detailViewController = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSMutableArray *jurs = [[NSMutableArray alloc]init];
        NSMutableArray *lis = [[NSMutableArray alloc]init];
        NSString *district = [districts objectAtIndex:indexPath.row];
        for(int i = 0; i<list.count; i++){
            HTAllianceData *data = [list objectAtIndex:i];
            if((![jurs containsObject:data.summary]) && (data.district == district) && data.summary){
                [jurs insertObject:data.summary atIndex:0];
            }
            if(data.district == district)
                [lis insertObject:data atIndex:0];
        }
        if(lis.count == 1){
            HTAllianceData *dat = [lis objectAtIndex:0];
            [jurs addObject:dat.district];
        }
        detailViewController.jurisdictions = jurs;
        detailViewController.list = lis;
    }
    if([[segue identifier] isEqualToString:@"showData"]){
        HTAttorneyViewController*detailViewController = [segue destinationViewController];
        HTAllianceData *dat = [list objectAtIndex:0];
        detailViewController.entry = dat;
    }
}*/

#pragma mark - Table view delegate

// Chooses path to next view, moving to either separate by jurisdiction or show the contact if no jurisdictions are available.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    NSMutableArray *jurs = [[NSMutableArray alloc]init];
    NSMutableArray *lis = [[NSMutableArray alloc]init];
    NSString *district = [districts objectAtIndex:indexPath.row];
    for(int i = 0; i<list.count; i++){
        HTAllianceData *data = [list objectAtIndex:i];
        if((![jurs containsObject:data.summary]) && (data.district == district) && data.summary){
            [jurs addObject:data.summary];
        }
        if(data.district == district)
            [lis addObject:data];
    }
    //if(lis.count == 1){
     //   HTAllianceData *dat = [lis objectAtIndex:0];
    //    [jurs addObject:dat.district];
    //}
    if(lis.count == 1){
        HTAttorneyViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"attorney"];
        HTAllianceData* dat = [lis objectAtIndex:0];
        detailViewController.entry = dat;        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    else{
        HTUSjursViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"jurs"];
        detailViewController.jurisdictions = jurs;
        detailViewController.list = lis;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }

}

// Banner

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    NSLog(@"USstate bannerViewDidLoad");
    if (!self.bannerIsVisible) {
        NSLog(@"should load banner");
        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
        // Assumes the banner view is just off the bottom of the screen.
        banner.frame = CGRectOffset(banner.frame, 0, 30);// banner.frame.size.height+10);
        // [adView setFrame:CGRectOffset([adView frame], 20,-[self getBannerHeight]-20)];
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
    }
}

- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    NSLog(@"Banner view is beginning an ad bannerViewActionShouldBegin");
    //    BOOL shouldExecuteAction = [self allowActionToRun]; // your application implements this method
    //    if (!willLeave && shouldExecuteAction)
    //    {
    //        // insert code here to suspend any services that might conflict with the advertisement
    //    }
    //    return shouldExecuteAction;
    NSLog(@"bannerViewActionShouldBegin");
    return YES;
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    NSLog(@"bannerView");
    //    if (self.bannerIsVisible)
    //    {
    //        [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
    //
    //        banner.frame = CGRectOffset(banner.frame, 0, 30); // banner.frame.size.height+10);
    //
    //        [UIView commitAnimations];
    //        self.bannerIsVisible = NO;
    //    }
}


- (int)getBannerHeight:(UIDeviceOrientation)orientation {
    if (UIInterfaceOrientationIsLandscape(orientation)) {
        return 32;
    } else {
        return 50;
    }
}

- (int)getBannerHeight {
    return [self getBannerHeight:[UIDevice currentDevice].orientation];
}

- (IBAction)contactUsButtonClick:(id)sender {
    HTContactUsViewController *controller = [[HTContactUsViewController alloc]
                                             initWithNibName:@"HTContactUsViewController" bundle:nil];
    
    if (controller) [self presentViewController:controller animated:YES completion:nil];
    // Show
    
    //  [controller release];
    
    // self.window.controller = controller;
}

@end
