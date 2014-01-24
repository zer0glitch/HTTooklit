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
//  HTUSjursViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 7/10/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTUSjursViewController.h"
#import "HTAllianceData.h"
#import "HTUSsubViewController.h"
#import "HTAttorneyViewController.h"

@interface HTUSjursViewController ()

@end

@implementation HTUSjursViewController
@synthesize jurisdictions,list;

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
    return jurisdictions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"jurCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [jurisdictions objectAtIndex:indexPath.row];
    
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
    if ([[segue identifier] isEqualToString:@"showSub"]) {
        HTUSsubViewController*detailViewController = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSMutableArray *subs = [[NSMutableArray alloc]init];
        NSMutableArray *lis = [[NSMutableArray alloc]init];
        NSString *jurisdiction = [jurisdictions objectAtIndex:indexPath.row];
        for(int i = 0; i<list.count; i++){
            HTAllianceData *data = [list objectAtIndex:i];
            NSString *sub = data.address;
            if((![subs containsObject:sub]) && (data.summary == jurisdiction)){
                [subs addObject:sub];
            }
            if(data.summary == jurisdiction)
                [lis addObject:data];
        }
        if(lis.count == 1){
            HTAllianceData *dat = [lis objectAtIndex:0];
            [subs addObject:dat.summary];
        }
        else if(lis.count == 0){
            HTAllianceData *dat = [list objectAtIndex:0];
            [lis addObject:dat];
            [subs addObject:dat.district];
        }
        detailViewController.subjurs = subs;
        detailViewController.list = lis;
        
    }
}*/

#pragma mark - Table view delegate

// Chooses path to next view, moving to either separate by sub-jurisdiction or show the contact if no sub-jurisdictions are available.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    NSMutableArray *subs = [[NSMutableArray alloc]init];
    NSMutableArray *lis = [[NSMutableArray alloc]init];
    NSString *jurisdiction = [jurisdictions objectAtIndex:indexPath.row];
    for(int i = 0; i<list.count; i++){
        HTAllianceData *data = [list objectAtIndex:i];
        NSString *sub = data.address;
        if((![subs containsObject:sub]) && (data.summary == jurisdiction) && (sub != nil)){
            [subs addObject:sub];
        }
        if(data.summary == jurisdiction)
            [lis addObject:data];
    }
    if(lis.count == 1){
        HTAllianceData *dat = [lis objectAtIndex:0];
        [subs addObject:dat.summary];
    }
    if(lis.count == 0){
        HTAllianceData *dat = [list objectAtIndex:0];
        [lis addObject:dat];
        [subs addObject:dat.district];
    }
    if(lis.count == 1){
        HTAttorneyViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"attorney"];
        HTAllianceData* dat = [lis objectAtIndex:0];
        detailViewController.entry = dat;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
    else{
        HTUSsubViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"sub"];
        detailViewController.subjurs = subs;
        detailViewController.list = lis;
        [self.navigationController pushViewController:detailViewController animated:YES];
    }

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