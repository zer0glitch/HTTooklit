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
//  HTLawViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/6/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTLawViewController.h"
#import "HTFedLawData.h"


@interface HTLawViewController ()
-(void)configureView;
@end

@implementation HTLawViewController
@synthesize data, bannerIsVisible;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        [self configureView];
    }
    return self;
}

- (void)viewDidLoad
{
    
    
    
    adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
    //adView.frame = CGRectOffset(adView.frame, 0, adView.frame.size.height-30);
    if (!self.bannerIsVisible) {
        adView.frame = CGRectOffset(adView.frame, 0, 0);
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
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureView
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 42, self.tableView.bounds.size.width, 90)];
    UITextView *labelView = [[UITextView alloc] initWithFrame:CGRectMake(10, 52, self.tableView.bounds.size.width, 75)];
    [headerView addSubview:labelView];
    headerView.backgroundColor = [UIColor clearColor];
    labelView.backgroundColor = [UIColor clearColor];
    labelView.text = data.caseName;
    labelView.scrollEnabled = NO;
    labelView.editable = NO;
    [labelView setFont: [UIFont boldSystemFontOfSize:17]];
    self.tableView.tableHeaderView = headerView;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section, removing the section if there is no data for the section.
    if(section == 0 && data.summary.length > 1)
        return 1;
    else if(section == 1 && data.link.length > 1)
        return 1;
    else
        return 0;
}

// Convigures cells for each section with the data provided.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"dataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    for (id subView in cell.contentView.subviews) {
		[subView removeFromSuperview];
	}
    if(indexPath.section == 0){
        UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(0,0, cell.contentView.bounds.size.width, 200)];
        textview.text = data.summary;
        textview.editable = NO;
        textview.scrollEnabled = NO;
        textview.backgroundColor = [UIColor clearColor];
        textview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [cell.contentView addSubview:textview];
        [textview setFont: [UIFont systemFontOfSize:15]];
        return cell;
    }
    else if(indexPath.section == 1){
        UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(0,0, cell.contentView.bounds.size.width, 50)];
        textview.text = data.link;
        textview.dataDetectorTypes = UIDataDetectorTypeLink;
        textview.editable = NO;
        textview.scrollEnabled = NO;
        textview.backgroundColor = [UIColor clearColor];
        textview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [cell.contentView addSubview:textview];
        [textview setFont: [UIFont systemFontOfSize:15]];
        return cell;
    }
    else{
        return nil;
    }
}

// Adds a title to each section.
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section == 0 && data.summary.length > 1)
        return @"Summary";
    else if(section == 1 && data.link.length > 1)
        return @"Resource Link";
    else
        return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
      return 200;
    else
      return 50;
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}


// Banner

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    NSLog(@"LawViewController.bannerViewDidLoad");
    if (!self.bannerIsVisible) {
        NSLog(@"should load banner");
        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
        // Assumes the banner view is just off the bottom of the screen.
        banner.frame = CGRectOffset(banner.frame, 0, 0);// banner.frame.size.height+10);
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

- (IBAction)modifyButtonClick:(id)sender {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *auth;
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"ToolkitPasscode.plist"];
    if([[NSFileManager defaultManager] fileExistsAtPath:path]){
        NSDictionary *properties = [[NSDictionary alloc]init];
        properties = [NSDictionary dictionaryWithContentsOfFile:path];
        auth = [properties objectForKey:@"authorization"];
        NSLog(auth);
    }
    
    if([auth isEqualToString:@"0"]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Permission Required"
                                                        message:@"You must be authenticated to make a request.  Authenticate?"
                                                       delegate:self
                                              cancelButtonTitle:@"No"
                                              otherButtonTitles:@"Yes",nil];
        [alert show];
    }
    else{
        HTCorrespondViewController *controller = [[HTCorrespondViewController alloc]
                                                  initWithNibName:@"HTCorrespondViewController" bundle:nil];
        
        if (controller) [self presentViewController:controller animated:YES completion:nil];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0){
        //delete it
    }
    if (buttonIndex == 1){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        HTLoginViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"HTLoginViewController"];
        [self.navigationController pushViewController:controller animated:YES];
    }
}



@end
