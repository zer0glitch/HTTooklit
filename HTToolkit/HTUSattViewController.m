//
//  HTUSattViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/26/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTUSattViewController.h"

@interface HTUSattViewController ()

@end

@implementation HTUSattViewController
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
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.bounds.size.width, 60)];
    UITextView *labelView = [[UITextView alloc] initWithFrame:CGRectMake(10, 10, self.tableView.bounds.size.width, 50)];
    [headerView addSubview:labelView];
    headerView.backgroundColor = [UIColor clearColor];
    labelView.backgroundColor = [UIColor clearColor];
    labelView.text = entry.district;
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
    if(section == 0 && entry.summary.length < 2)
        return 0;
    if(section == 2)
        return entry.phoneNumbers.count;
    else
        return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"dataCell";
    if(indexPath.section == 0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(0,0, cell.contentView.bounds.size.width, 100)];
        textview.text = entry.summary;
        textview.editable = NO;
        textview.scrollEnabled = YES;
        textview.backgroundColor = [UIColor clearColor];
        textview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [cell.contentView addSubview:textview];
        [textview setFont: [UIFont systemFontOfSize:15]];
        return cell;
    }
    else if(indexPath.section == 1){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(0,0, cell.contentView.bounds.size.width, 90)];
        textview.text = entry.address;
        textview.dataDetectorTypes = UIDataDetectorTypeAddress;
        textview.editable = NO;
        textview.scrollEnabled = NO;
        textview.backgroundColor = [UIColor clearColor];
        textview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [cell.contentView addSubview:textview];
        [textview setFont: [UIFont systemFontOfSize:15]];
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
    if(section == 0 && entry.summary.length > 1)
        return @"Contacts";
    else if(section == 1)
        return @"Address";
    else if(section == 2)
        return @"Phone";
    else
        return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 2)
      return 50;
    else
    return 100;
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
