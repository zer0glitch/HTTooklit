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
//  HTTrainViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/4/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTTrainViewController.h"

@interface HTTrainViewController ()
- (void)configureView;
@end

@implementation HTTrainViewController
@synthesize tVisa, uVisa, vawa, traf, cont, assess, prov, enf;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        [self configureView];
    }
    return self;
}

// Configures links for cells in the training view.
- (void)configureView
{
    NSString *one = @"http://www.uscis.gov/portal/site/uscis/menuitem.eb1d4c2a3e5b9ac89243c6a7543f6d1a/?vgnextoid=02ed3e4d77d73210VgnVCM100000082ca60aRCRD&vgnextchannel=02ed3e4d77d73210VgnVCM100000082ca60aRCRD";
    tVisa.text = one;
    NSString *two = @"http://www.uscis.gov/portal/site/uscis/menuitem.eb1d4c2a3e5b9ac89243c6a7543f6d1a/?vgnextoid=ee1e3e4d77d73210VgnVCM100000082ca60aRCRD&vgnextchannel=ee1e3e4d77d73210VgnVCM100000082ca60aRCRD";
    uVisa.text = two;
    NSString *three = @"http://www.uscis.gov/portal/site/uscis/menuitem.eb1d4c2a3e5b9ac89243c6a7543f6d1a/?vgnextoid=b85c3e4d77d73210VgnVCM100000082ca60aRCRD&vgnextchannel=b85c3e4d77d73210VgnVCM100000082ca60aRCRD";
    vawa.text = three;
    
    NSString *four = @"http://www.dhs.gov/blue-campaign/blue-campaign";
    traf.text = four;
    
    NSString *five = @"http://c.na4.content.force.com/sfc/dist/version/download?operationContext=DELIVERY&oid=00D300000006E4S&ids=06860000000eh8x&d=aV4jmtVT5.WuBSHAg9wW1YEER.s%3D&viewId=05H60000000haw7";
    cont.text = five;
    
    NSString *six = @"http://c.na4.content.force.com/sfc/dist/version/download?operationContext=DELIVERY&oid=00D300000006E4S&ids=06860000000eh8x&d=aV4jmtVT5.WuBSHAg9wW1YEER.s%3D&viewId=05H60000000haw7";
    assess.text = six;
    
    NSString *seven = @"https://c.na4.content.force.com/sfc/dist/version/download?oid=00D300000006E4S&viewId=05H60000000haw2&operationContext=DELIVERY&d=1MEGyVSfIjPpbqdH7MviHX1eGv4%3D&ids=06860000000HRrq";
    prov.text = seven;
    
    NSString *eight = @"http://c.na4.content.force.com/sfc/dist/version/download?operationContext=DELIVERY&oid=00D300000006E4S&ids=068600000008UeI&viewId=05H60000000havj&d=JMzRrTHFyXqMiIiL.53Dsy.va74%3D";
    enf.text = eight;
}

- (void)viewDidLoad
{
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

- (IBAction)contactUsButtonClick:(id)sender {
    HTContactUsViewController *controller = [[HTContactUsViewController alloc]
                                             initWithNibName:@"HTContactUsViewController" bundle:nil];
    
    if (controller) [self presentViewController:controller animated:YES completion:nil];
    // Show
    
    //  [controller release];
    
    // self.window.controller = controller;
}

- (IBAction)modifyButtonClick:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Permission Required"
                                                    message:@"You must be authenticated to make a request.  Authenticate?"
                                                   delegate:self
                                          cancelButtonTitle:@"No"
                                          otherButtonTitles:@"Yes",nil];
    [alert show];
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
