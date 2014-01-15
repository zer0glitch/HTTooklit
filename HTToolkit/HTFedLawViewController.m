//
//  HTFedLawViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 5/31/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTFedLawViewController.h"
#import "HTFedLawData.h"
#import "HTLawViewController.h"

@interface HTFedLawViewController ()

@end

@implementation HTFedLawViewController
@synthesize Laws, bannerIsVisible;

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
    Laws = [[NSMutableArray alloc]init];
    HTFedLawData *one = [[HTFedLawData alloc] init:@"78.7102 Definitions" summary: @"Provides definitions for terms relevant to human trafficking such as coercion, involuntary servitude, victim of trafficking, etc." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7102.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7103 Interagency Task Force to Monitor and Combat Trafficking" summary: @"The President shall establish an Interagency Task Force to Monitor and Combat Trafficking, appointing the members of the task force as well as the chairman.  This also outlines all the activities and duties of the task force." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7103.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7104 Prevention of trafficking" summary: @"Outlines steps to be taken(or have been taken) to prevent human trafficking.  These steps range from establishing economic opportunities for possible victims to deter trafficking to increasing public awareness of human trafficking." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7104.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7105 Protection and assistance for victims of trafficking" summary: @"Extends protection and assistance to victims of trafficking both in the United States and in other countries." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7105.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7105a Increasing effectiveness of anti-trafficking programs" summary: @"Aims to increase the effectiveness of anti-trafficking programs by offering grants and contracts to programs deemed eligible by a given criteria." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7105a.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7106 Minimum standards for the elimination of trafficking" summary: @"Provides what is considered to be the minimum necessary steps by the government of a country for it to be on it's way toward eliminating human trafficking." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7106.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7107 Actions against governments failing to meet minimum standards" summary: @"Outlines the processes of handling or the repercussions of a government not meeting the minimum standards stated in 78.7106." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7107.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7108 Actions against significant traffickers in persons" summary: @"Explains the steps to be taken about significant traffickers." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7108.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7109 Strengthening prosecution and punishment of traffickers" summary: @"Makes it possible for traffickers to be more severely punished by the law." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7109.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7109a Research on domestic and international trafficking in persons" summary: @"Allows for research of human trafficking victims to take place and for the compilation of a database for this information." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7109a.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7109b Presidential Award for Extraordinary Efforts To Combat Trafficking in Persons" summary: @"The President is authorized to establish an award, to be known as the ‘‘Presidential Award for Extraordinary Efforts To Combat Traffick- ing in Persons’’, for extraordinary efforts to combat trafficking in persons." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7109b.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7110 Authorizations of appropriations" summary: @"Outlines the appropriations in support of different parts of the task force and how they should be distributed." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7110.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7111 Report by Secretary of State" summary: @"At least 15 days prior to voting for a new or re- authorized peacekeeping mission under major alliances the Secretary of State must submit a report explaining the efforts of the organization against trafficking and their effectiveness." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7111.pdf"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"78.7112 Additional activities to monitor and combat forced labor and child labor" summary: @"The Secretary of Labor, acting through the head of the Bureau of International Labor Af- fairs of the Department of Labor, shall carry out additional activities to monitor and com- bat forced labor and child labor in foreign countries." link:@"http://www.gpo.gov/fdsys/pkg/USCODE-2011-title22/pdf/USCODE-2011-title22-chap78-sec7112.pdf"];
    [Laws addObject:one];
    
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
    static NSString *CellIdentifier = @"fedLawCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    HTFedLawData *one = [Laws objectAtIndex:indexPath.row];
    cell.textLabel.text = one.caseName;
    
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
    if ([[segue identifier] isEqualToString:@"showFedLaw"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        HTLawViewController *detailViewController = [segue destinationViewController];
        detailViewController.data = [Laws objectAtIndex:indexPath.row];
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



// Banner

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    NSLog(@"FedLawView Controller bannerViewDidLoad");
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



@end
