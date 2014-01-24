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
//  HTFedServiceViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/11/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTFedServiceViewController.h"
#import "HTServiceData.h"
#import "HTFedSerInfoViewController.h"

@interface HTFedServiceViewController ()

@end

@implementation HTFedServiceViewController
@synthesize data;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    //All federal Services are input here
    data = [[NSMutableArray alloc]init];
    HTServiceData *ser = [[HTServiceData alloc] init:nil city:nil gender:nil agency:@"ICE's Tip Line" address:@"ICE Victim Assistance Program\nOffice of Investigations\n500 12th St. SW, Mail Stop 5101\nWashington, D.C. 20536-5101" info:@"online tip form:  http://www.ice.gov/exec/forms/hsi-tips/tips.asp   Victim Assistance Program helps coordinate services to help human trafficking victims, such as crisis intervention, counseling and emotional support."];
    [ser addNumber:@"To Report: 1-866-347-2423"];
    [ser addNumber:@"Phone: 866-872-4973"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:nil city:nil gender:nil agency:@"National Human Trafficking Resource Center (NHTRC)" address:@"Polaris Project\nP.O. Box 53315\nWashington, D.C. 20009" info:@"offers a broad selection of resources for various actors within the anti-human trafficking movement including educators, medical, legal and governmental professionals, service providers, law enforcement personnel, community members, potential victims, and those at risk for human trafficking."];
    [ser addNumber:@"1-888-373-7888"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:nil city:nil gender:nil agency:@"U.S. Department of Justice Trafficking in Persons and Worker Exploitation Task Force" address:nil info:@"Complaint Line available from 9:00am to 5:00pm (EST)"];
    [ser addNumber:@"Complaint Line: 1-888-428-7581"];
    [data addObject:ser];
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
    return data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"fedServiceCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    HTServiceData* ce = [[HTServiceData alloc]init];
    ce = [data objectAtIndex:indexPath.row];
    
    cell.textLabel.text = ce.agency;
    
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showInfo"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        HTServiceData *full = [data objectAtIndex:indexPath.row];
        HTFedSerInfoViewController *detailViewController = [segue destinationViewController];
        detailViewController.entry = full;
    }
}

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

@end
