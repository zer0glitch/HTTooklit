//
//  HTViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/5/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTAllianceViewController.h"
#import "HTAllianceData.h"
#import "HTAttStateViewController.h"
#import "HTAllyViewController.h"
#import "HTDistStateViewController.h"
#import "HTAttGenTypeViewController.h"
#import "HTAttorneyViewController.h"

@interface HTAllianceViewController ()

@end

@implementation HTAllianceViewController
@synthesize USattorneys, attorneyGenerals, districtAttornies, fed;

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
    districtAttornies = [[NSMutableArray alloc]init];
    USattorneys = [[NSMutableArray alloc]init];
    attorneyGenerals = [[NSMutableArray alloc]init];
    fed = [[NSMutableArray alloc]init];
    HTAllianceData * one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:nil district:nil contact:@"Eric Holder" summary:nil address:nil website:@"http://www.justice.gov/ag/" email:nil];
    [one addNumber:@"Phone: (202)514-2001"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"California" district:nil contact:@"Kamala Harris" summary:nil address:@"P.O. Box 944255\nSacramento, CA 94244-2550" website:nil email:nil];
    [one addNumber:@"Phone Toll-free: (877) 433-9069"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Florida" district:nil contact:@"Pam Bondi" summary:nil address:@"State of Florida\nThe Capitol PL-01\nTallahassee, FL 32399-1050" website:nil email:nil];
    [one addNumber:@"Citizens Services: 850-414-3990"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Georgia" district:nil contact:@"Sam Olens" summary:nil address:@" 40 Capitol Square, SW\nAtlanta, Ga 30334" website:nil email:@"AGOlens@law.ga.gov"];
    [one addNumber:@"(404)656-3300"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Kansas Attorney General" state:@"Kansas" district:nil contact:@"Derek Schmidt" summary:nil address:@"120 SW 10th Ave., 2nd Floor\nTopeka, KS 66612" website:nil email:nil];
    [one addNumber:@"(785)296-2215"];
    [one addNumber:@"1-888-428-8436"];
    [one addNumber:@"Victims’ Services: (785)291-3950"];
    [one addNumber:@"Victims' Services: 1-800-828-9745"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Louisiana" district:nil contact:@"Buddy Caldwell" summary:nil address:@" 1885 N. Third Street\nBaton Rouge, LA 70802" website:nil email:@"CriminalInfo@ag.state.la.us"];
    [one addNumber:@"(225)326-6200"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General and Reporter" state:@"Tennessee" district:nil contact:@"Robert E. Cooper, Jr." summary:nil address:@"P.O. Box 20207\nNashville, TN 37202-0207" website:nil email:nil];
    [one addNumber:@"Telephone: (615)741-3491"];
    [one addNumber:@"Victim Information Services: (615)741-8109"];
    [one addNumber:@"Victim Information Services: (615)532-1971"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Criminal Division" state:@"Texas" district:nil contact:@"Greg Abbott" summary:nil address:@" 300 W. 15th Street\nAustin, TX 78701" website:nil email:@"crimevictims@texasattorneygeneral.gov"];
    [one addNumber:@"Main agency switchboard (512)463-2100"];
    [attorneyGenerals addObject:one];
    
    
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Central District of California" state:@"California"  district:@"Cental District of California" contact: @"Criminal Division Lawrence Middleton, Assistant United States Attorney\nSection Chief\nAttn: Public Corruption and Civil Rights Section" summary:nil address:@"312 North Spring Street\nLos Angeles, California 90012" website:nil email:nil];
    [one addNumber:@"(213)894-5010"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Southern District of Florida" state:@"Florida" district:@"Southern District of Florida" contact:nil summary:nil address:@"U.S. Attorney's Office\n99 N.E. 4th Street\nMiami, Fl. 33132" website:nil email:nil];
    [one addNumber:@"(305)961-9001"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Northern District of Georgia" state:@"Georgia" district:@"Northern District of Georgia" contact:@"Susan Coppedge, Assistant United States Attorney\n\nKarima Maloney, Deputy Chief, Civil Rights Division\n\nShondeana Morris, Assistant District Attorney, Fulton County District Attorney’s Office"summary:nil address:@"Richard B. Russell Federal Building\n75 Spring Street, S.W.\nSuite 600\nAtlanta, GA 30303-3309" website:nil email:nil];
    [one addNumber:@"Tel: (404)581-6000"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office District of Kansas" state:@"Kansas" district:@"District of Kansas" contact:nil summary:nil address:@"500 State Avenue\nSuite 360\nKansas City, Kansas 66101" website:nil email:nil];
    [one addNumber:@"Phone: (913)551-6730"];
    [one addNumber:@"CRU Hotline: 1(855)321-5549"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Eastern District of Louisiana" state:@"Louisiana" district:@"Eastern District of Lousiana" contact:nil summary:nil address:@"650 Poydras Street, Suite 1600\nNew Orleans, Louisiana 70130" website:nil email:nil];
    [one addNumber:@"(504)680-3000"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Western District of Tennessee" state:@"Tennessee" district:@"Western District of Tennessee" contact:nil summary:nil address:@" 800 Clifford Davis Federal Office Building\nMemphis, TN 38103" website:nil email:nil];
    [one addNumber:@"(901)544-4231"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Western District of Texas" state:@"Texas" district:@"Western District of Texas" contact:@" Jose Luis Gonzalez, Chief" summary:nil address:@"700 East San Antonio Avenue\nSuite 200\nEl Paso, TX 79901" website:nil email:nil];
    [one addNumber:@"Phone: (915)534-6884"];
    [one addNumber:@"Fax: (915)534-6024"];
    [USattorneys addObject:one];
    
    
    
    one =[[HTAllianceData alloc]init:@"Los Angeles County District Attorney's Office" state:@"California" district:@"Los Angeles County" contact:@"Jackie Lacey" summary:nil address:@"District Attorney's Office\nCounty of Los Angeles\n210 West Temple Street, Suite 18000\nLos Angeles, CA 90012-3210" website:@"http://da.co.la.ca.us/feedback.htm" email:@"webmail@da.lacounty.gov"];
    [one addNumber:@"Telephone (213)974-3512"];
    [one addNumber:@"Fax (213)974-1484"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Miami-Dade Office Of The State Attorney" state:@"Florida" district:@"Miami" contact:@"Katherine Fernandez Rudle" summary:nil address:@"1350 N.W. 12 Avenue\nMiami, FL 33136-2111" website:@"http://www.miamisao.com/contactus/index.htm" email:nil];
    [one addNumber:@"(305)547-0100"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Fulton Country District Attorney's Office" state:@"Georgia" district:@"Fulton Country" contact:@"Paul L. Howard Jr." summary:nil address:@"136 Pryor Street, SW, Third Floor\nAtlanta, GA 30303" website:@"http://www.atlantada.org/contact_us/index.php" email:nil];
    [one addNumber:@"Phone: (404)612-4981"];
    [one addNumber:@"Fax: (404)893-2769"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Wyandotte County District Attorney's Office" state:@"Kansas" district:@"Wyandotte County" contact:@"Jerome A. Gorman" summary:nil address:@"Criminal Justice Complex\n710 N. 7th St\nSuite 10" website:@"http://www.wycokck.org/dept.aspx?id=172&menu_id=946" email:nil];
    [one addNumber:@"Phone: 913-573-2851"];
    [one addNumber:@"Fax: 913-573-2948"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Orleans Parish District Attorney's Office" state:@"Louisiana" district:@"Orleans Parish" contact:@"Leon A. Cannizzaro, Jr." summary:nil address:@"619 South White Street\nNew Orleans, Louisiana 70119" website:@"http://orleansda.com/contact/" email:nil];
    [one addNumber:@"(504)822-2414"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Shelby County District Attorney's Office" state:@"Tennessee" district:@"Shelby County" contact:@"Amy Weirich" summary:nil address:@"201 Poplar Avenue\n3rd Floor\nMemphis, Tennessee 38103" website:@"http://www.scdag.com/contact-us" email:nil];
    [one addNumber:@"Phone:	(901)222-1300"];
    [one addNumber:@"Fax: (901)222-1305"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"El Paso County District Attorney's Office" state:@"Texas" district:@"El Paso County" contact:@"Jaime Esparza" summary:nil address:@"500 E. San Antonio, 2nd Floor\nEl Paso County Courthouse\nEl Paso, Texas 79901" website:@"http://www.epcounty.com/DA/contact.htm" email:@"daesparza@epcounty.com"];
    [one addNumber:@"Phone: (915)546-2059"];
    [one addNumber:@"Fax: (915)533-5520"];
    [one addNumber:@"Victim Assistance (915)546-2091"];
    [districtAttornies addObject:one];
    
    
    one = [[HTAllianceData alloc]init:@"Bureau of Justice Assitance (BJA)" state:nil district:nil contact:@"Deborah Meade Policy Advisor" summary:nil  address:nil website: @"https://www.bja.gov/ProgramDetails.aspx?Program_ID=51" email:@"deborah.meader@usdoj.gov"];
    [one addNumber:@"Phone: (202)305-2601"];
    [fed addObject:one];
    one = [[HTAllianceData alloc]init:@"Department of Justice (DOJ) - Civil Rights Division Criminal Section" state:nil district:nil contact:@"Robert Moossy Cheif" summary:nil address:nil website:@"http://www.justice.gov/crt/about/crm/htpu.php" email:nil];
    [one addNumber:@"Phone: (202)514-3204"];
    [fed addObject:one];
    one = [[HTAllianceData alloc]init:@"Division of Anti-Trafficking in Persons (ATIP)" state:nil district:nil contact:nil summary:nil address:@"U.S. Department of Health and Human Services\n901 D Street, SW\nWashington, DC 20447" website:@"www.acf.hhs.gov/trafficking" email:@"Trafficking@acf.hhs.gov"];
    [one addNumber:@"Phone: (202)401-5510"];
    [one addNumber:@"Fax: (202)401-5487"];
    [fed addObject:one];
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
    return fed.count+3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 1){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"usAttCell" forIndexPath:indexPath];
        cell.textLabel.text = @"US Attorneys";
        return cell;
    }
    else if(indexPath.row == 0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"attGenCell" forIndexPath:indexPath];
        cell.textLabel.text = @"Attorney Generals";
        return cell;
    }
    else if(indexPath.row == 2){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"distAttCell" forIndexPath:indexPath];
        cell.textLabel.text = @"District Attorneys";
        return cell;
    }
    else{
        static NSString *CellIdentifier = @"Cell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        HTAllianceData *dat = [fed objectAtIndex:indexPath.row-3];
        cell.textLabel.text = dat.title;
        return cell;
    }
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
    if ([[segue identifier] isEqualToString:@"showStates"]) {
        if(districtAttornies.count > 0){
            HTAttStateViewController *detailViewController = [segue destinationViewController];
            NSMutableArray *stat = [[NSMutableArray alloc]init];
            NSMutableArray *lis = [[NSMutableArray alloc]init];
            for(int i = 0; i<districtAttornies.count; i++){
                HTAllianceData *data = [districtAttornies objectAtIndex:i];
                NSString *state = data.state;
                if(![stat containsObject:state]){
                    [stat addObject:state];
                }
                [lis addObject:data];
            }
            detailViewController.states = stat;
            detailViewController.list = lis;
        }
    }
    if ([[segue identifier] isEqualToString:@"showUS"]) {
        if(USattorneys.count > 0){
            HTDistStateViewController *detailViewController = [segue destinationViewController];
            NSMutableArray *stat = [[NSMutableArray alloc]init];
            NSMutableArray *lis = [[NSMutableArray alloc]init];
            for(int i = 0; i<USattorneys.count; i++){
                HTAllianceData *data = [USattorneys objectAtIndex:i];
                NSString *state = data.state;
                if(![stat containsObject:state]){
                    [stat addObject:state];
                }
                [lis addObject:data];
            }
            detailViewController.states = stat;
            detailViewController.list = lis;
        }
    }
    if ([[segue identifier] isEqualToString:@"showGeneral"]) {
        if(attorneyGenerals.count > 0){
            HTAttGenTypeViewController *detailViewController = [segue destinationViewController];
            NSMutableArray *stat = [[NSMutableArray alloc]init];
            NSMutableArray *lis = [[NSMutableArray alloc]init];
            for(int i = 0; i<attorneyGenerals.count; i++){
                HTAllianceData *data = [attorneyGenerals objectAtIndex:i];
                NSString *state = data.district;
                if(![stat containsObject:state]){
                    if(state != nil)
                    [stat addObject:state];
                }
                [lis addObject:data];
            }
            detailViewController.states = stat;
            detailViewController.list = attorneyGenerals;
        }
    }
    if ([[segue identifier] isEqualToString:@"showInfo"]) {
        HTAttorneyViewController *detailViewController = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        HTAllianceData* data = [fed objectAtIndex:indexPath.row-3];
        detailViewController.entry = data;
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
