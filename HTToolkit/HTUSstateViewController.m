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
@synthesize districts, list;

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
    if(lis.count == 1){
        HTAllianceData *dat = [lis objectAtIndex:0];
        [jurs addObject:dat.district];
    }
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

@end
