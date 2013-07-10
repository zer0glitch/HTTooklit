//
//  HTStateLawViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/3/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTStateLawViewController.h"
#import "HTStateLawData.h"
#import "HTFedLawData.h"
#import "HTLawViewController.h"

@interface HTStateLawViewController ()

@end

@implementation HTStateLawViewController
@synthesize Laws;

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
    return Laws.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stateLawCell" forIndexPath:indexPath];
	// Clean cell.contentView
	for (id subView in cell.contentView.subviews) {
		[subView removeFromSuperview];
	}
    HTStateLawData *dat = [Laws objectAtIndex:indexPath.row];
    UITextView *textview = [[UITextView alloc] initWithFrame:CGRectMake(0,0, cell.contentView.bounds.size.width-20, 50)];
    textview.text = dat.caseName;
    textview.editable = NO;
    textview.scrollEnabled = NO;
    textview.backgroundColor = [UIColor clearColor];
    [textview setFont: [UIFont systemFontOfSize:15]];
    textview.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [cell.contentView addSubview:textview];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //if(indexPath.section == 0)
    //  return 90;
    //else
    return 55;
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
    if ([[segue identifier] isEqualToString:@"showLaw"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        HTStateLawData *state = [[HTStateLawData alloc]init];
        state = [Laws objectAtIndex:indexPath.row];
        HTLawViewController *detailViewController = [segue destinationViewController];
        HTFedLawData *fed = [[HTFedLawData alloc]init:state.caseName summary:state.summary link:state.link];
        detailViewController.data = fed;
        [[NSString stringWithFormat: @"%@", detailViewController.data.caseName] cString];
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

@end
