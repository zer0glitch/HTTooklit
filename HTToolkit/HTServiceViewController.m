//
//  HTServiceViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/14/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTServiceViewController.h"

@interface HTServiceViewController ()

@end

@implementation HTServiceViewController
@synthesize entry;

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
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.bounds.size.width, 90)];
    UITextView *labelView = [[UITextView alloc] initWithFrame:CGRectMake(10, 10, self.tableView.bounds.size.width, 50)];
    UILabel *detail = [[UILabel alloc] initWithFrame:CGRectMake(20, 65, self.tableView.bounds.size.width-20, 20)];
    [headerView addSubview:labelView];
    [headerView addSubview:detail];
    headerView.backgroundColor = [UIColor clearColor];
    labelView.backgroundColor = [UIColor clearColor];
    detail.backgroundColor = [UIColor clearColor];
    labelView.text = entry.agency;
    detail.text = entry.state;
    labelView.scrollEnabled = NO;
    labelView.editable = NO;
    [labelView setFont: [UIFont boldSystemFontOfSize:17]];
    self.tableView.tableHeaderView = headerView;
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
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if(section == 2)
        return entry.phoneNumbers.count;
    else
        return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    if(indexPath.section == 0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(0,0, cell.contentView.bounds.size.width, 175)];
        textview.text = entry.info;
        textview.dataDetectorTypes = UIDataDetectorTypeLink;
        textview.editable = NO;
        textview.scrollEnabled = YES;
        textview.backgroundColor = [UIColor clearColor];
        textview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [cell.contentView addSubview:textview];
        return cell;
    }
    else if(indexPath.section == 1){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(0,0, cell.contentView.bounds.size.width, 40)];
        textview.text = entry.address;
        textview.dataDetectorTypes = UIDataDetectorTypeLink;
        textview.editable = NO;
        textview.scrollEnabled = NO;
        textview.backgroundColor = [UIColor clearColor];
        textview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [cell.contentView addSubview:textview];
        [textview setFont: [UIFont systemFontOfSize:14]];
        return cell;
    }
    else if(indexPath.section == 2){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(0,0, cell.contentView.bounds.size.width, 40)];
        NSMutableArray* arr = [[NSMutableArray alloc]init];
        arr = entry.phoneNumbers;
        textview.text = [arr objectAtIndex:indexPath.row];
        textview.dataDetectorTypes = UIDataDetectorTypePhoneNumber;
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

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section == 0)
        return @"Services";
    else if(section == 1)
        return @"Website";
    else if(section == 2)
        return @"Phone";
    else
        return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
        return 175;
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

@end
