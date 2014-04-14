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
    [adView setHidden:TRUE];
    
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
    one = [[HTFedLawData alloc] init:@"8USC1328 Importation of alien for immoral purpose" summary: @"The importation into the United States of any alien for the purpose of prostitution, or for any other immoral purpose, is forbidden.  Any individual associated with such an act shall be fined under title 18, or imprisoned not more than 10 years, or both." link:@"http://www.law.cornell.edu/uscode/text/8/1328"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC1203 Hostage taking" summary: @"Whoever, whether inside or outside hte United States, seizes or detains and threatens to injure or continue detaining another person in order to compel a third party to do or abstain from an act as a condition for the release of the detained person shall be punished accordingly." link:@"http://www.law.cornell.edu/uscode/text/18/1203"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC2421 Transportation generally" summary: @"Whoever knowingly transports an individual in any Territory or Possession of the United States with the intent that such an individual engage in prositution or any sexual activity for which any person can be charged, shall be fined under this title, or imprisoned not more than 10 years, or both." link:@"http://www.law.cornell.edu/uscode/text/18/2421"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC2422 Corercion and enticement" summary: @"Whoever knowingly persuades, induces, entices, or coerces any individual to travel to any Territory or Possession of the United States, to engage in any sexual activity for which a person can be charged, shall be fined under this title, or imprisoned not more than 20 years, or both.  If the victim is under the age of 18 imprisonment duration may be no less than 10 years or for life." link:@"http://www.law.cornell.edu/uscode/text/18/2422"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC2423 Transportation of minors" summary: @"A person who knowingly transports an individual who has not attained the age of 18 years to any Territory or Possession of the United States, with hte intent that the individual participate in any sexual activity that may be charged with a criminal offense, shall be fined under this title, imprisoned not less than 10 years, or for life." link:@"http://www.law.cornell.edu/uscode/text/18/2423"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC2424 Filing factual statment about alien individual" summary: @"Whoever houses for the purpose of prositution or any other immoral purpose, any individual, knowing the individual is an alien, shall file wit hthe Commissioner of Immigration and Naturalization a statement in writing providing all neccessary information about the individual." link:@"http://www.law.cornell.edu/uscode/text/18/2424"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC1581-1588 Slavery violations" summary: @"Slavery violations include crimes involving peonage, vessels for slave trade, enticement into slavery, slave into involuntary servitude, seizure, detention, transporation or sale of slaves, service on vessels in slave trade, possession of slaves aboard vessel, and transporation of slaves from the United States." link:@"http://www.law.cornell.edu/uscode/text/18/part-I/chapter-77"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC1589 Forced labor" summary: @"Whoever obtains labor or services of a person by means of force, serious harm, abuse, or any scheme is punishable under this subsection.  Furthermore, anyone who benefits financially or by receiving anything of value from such a venture shall be punished as provided by this subsection." link:@"http://www.law.cornell.edu/uscode/text/18/1589"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC1590 Trafficking with respect to peonage, slavery, involuntary servitude, or forced labor" summary: @"Whoever knowingly recruits, habor, transports, or obtains any person for labor or services in violation of this chapter shall be fined under this title, or imprisoned no more than 20 years, or both.  If death results from the violation the punishment is more severe." link:@"http://www.law.cornell.edu/uscode/text/18/1590"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC1591 Sex trafficking of children or by force, fraud, or coercion" summary: @"Whover knowingly participates in interstate or foreign commerce, or within a territory of United states jurisdiction, recruits, harbors, transports, or obtains, or benifits from such a venture of any person who has not attained the age of 14 or 18 years of age at the time of the offense is punishable by this subsection." link:@"http://www.law.cornell.edu/uscode/text/18/1591"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"18USC1592-1595 Unlawful conducts, restitution, general provisions, and civil remedy" summary: @"Includes violations and provisions such as Unlawful conduct with respect to documents in furtherance of trafficking, peonage, slavery, involuntary servitude, or forced labor, Mandatory restitution, Benefitting financially from peonage, slavery, and trafficking in persons, General provisions, and Civil remedy." link:@"http://www.law.cornell.edu/uscode/text/18/part-I/chapter-77"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"22USC7102 Definitions" summary: @"Provides meaning for the terms abuse or threatened abuse of law or legal process, appropriate congressional committees, coercion, commercial sex act, debt bondage, invonluntary servitude, minimum standards for elimination of trafficking, nonhumanitarian nontrade-related foreign assistance, severe forms of trafficking in persons, sex trafficking, state, task force, United States, victim of severe form of trafficking, and victim of trafficking." link:@"http://www.law.cornell.edu/uscode/text/22/7102"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"22USC7103 Interagency task force to monitor" summary: @"The President shall establish an Interagency Task Force to Monitor and Combat Trafficking and appoint the members of the task force, of which should include the Secretary of State as  the Chairman.  The task force's duties and regulations can be found in this subsection." link:@"http://www.law.cornell.edu/uscode/text/22/7103"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"22USC7104 Prevention of trafficking" summary: @"Provides details on prevention measures such as economic alternatives, public awareness and information, border inderdiction, international media, combating international sex tourism, consultation requirement, termination of cerain grants and agreements, prevention of child trafficking through child marriage, and other additional measures to deter trafficking." link:@"http://www.law.cornell.edu/uscode/text/22/7104"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"22USC7105 Protection and assistance for victims of trafficking" summary: @"Determines a system of assistance for victims inside and outside of the United States, created by the Secretary of State and Adminitrator of the United States Agency for International Development, in consultation with some nongovernmental organizations." link:@"http://www.law.cornell.edu/uscode/text/22/7105"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"22USC7105A Increasing effectiveness of anti-trafficking programs" summary: @"Grants, cooperative agreements, and contracts shall be awarded only to applicants deemed eligible by this subsection.  The programs shall also be evaluated with the general criteria and requirements of this subsection." link:@"http://www.law.cornell.edu/uscode/text/22/7105a"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"22USC7106 Minimum standards for the elimination of trafficking" summary: @"The government of a country should prohibit severe forms of trafficking in person and punish the acts of such trafficking as well as the knowledge of involvement of the acts.  The government should make serious efforts to eliminate severe forms of trafficking." link:@"http://www.law.cornell.edu/uscode/text/22/7106"];
    [Laws addObject:one];
    one = [[HTFedLawData alloc] init:@"22USC7108 Actions against significant traffickers in persons" summary: @"The President may exercise authorities for any foreign person that plays a significant role in severe forms of trafficking, assists in said trafficking, or that are owned or acting on the behalf of a trafficker.  Upon exercising any authority, the President mush report to the appropriate congressional committees." link:@"http://www.law.cornell.edu/uscode/text/22/7108"];
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
    [adView setHidden:FALSE];
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
    [adView setHidden:TRUE];
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
