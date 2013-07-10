//
//  HTMasterViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 5/28/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTMasterViewController.h"
#import "HTFullData.h"
#import "HTStateViewController.h"

@interface HTMasterViewController () {
}
@end

@implementation HTMasterViewController
@synthesize masterList, labels;

- (void)awakeFromNib
{
    [super awakeFromNib];
    }

- (void)viewDidLoad
{
    //self.view.backgroundColor = [UIColor blackColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    labels = [[NSMutableArray alloc]init];
    masterList = [[NSMutableArray alloc]init];
    
    HTFullData *one = [[HTFullData alloc] initWithName:@"California" jurisdiction:@"Los Angeles,CA" agencyName:@"Los Angeles Police Department" contact:@"Lt. Andrea Grossman" email:@"30231@lapd.lacity.org"];
    [one addNumber:@"(562)624-4028"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Florida" jurisdiction:@"South Florida" agencyName:@"Broward County Sheriff's Office" contact:@"Lieutenant Charlotte Ross" email:@"leachtaskforce@bsosid.org"];
    [one addNumber:@"(954) 888-5299"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Georgia" jurisdiction:@"Georgia" agencyName:@"Georgia Bureau of investigation" contact:@"Special Agent in Charge Sandra Putnam" email:@"Sandra.Putnam@gbi.ga.gov"];
    [one addNumber:@"(404)270-8870"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Kansas" jurisdiction:@"Kansas" agencyName:@"Sedgwick County's Sheriff's Office" contact:@"Lt. Jeff Weible" email:@"jweible@sedgwick.gov"];
    [one addNumber:@"(316)337-6552"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Louisiana" jurisdiction:@"Louisiana" agencyName:@"Louisiana Department of Justice" contact:@"Computer Forensic Lab Manager Corey Bourgeois" email:@"bourgeoisc@ag.state.la.us"];
    [one addNumber:@"(225)326-6145"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Tennessee" jurisdiction:@"Tennessee" agencyName:@"Knoxville Police Department" contact:@"Captain Monty Houk" email:@"mhouk@cityofknoxville.org"];
    [one addNumber:@"(865)215-7020"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Texas" jurisdiction:@"Texas, Southern" agencyName:@"Office of the Attorney General of Texas" contact:@"Captain Kimberly Bustos" email:@"kimberly.bustos@texasattorneygeneral.gov"];
    [one addNumber:@"(512)936-2896"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc]initWithName:@"Georgia" jurisdiction:@"Atlanta" agencyName:@"SAC Office" contact:@"Brian Ramsey" email:@"brian.e.ramsey@ice.dhs.gov"];
    [one addNumber:@"(404)346-2885"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"Texas" jurisdiction:@"El Paso" agencyName:@"SAC Office" contact:@"Gustavo Correa" email:@"gustavo.e.correa@ice.dhs.gov"];
    [one addNumber:@"(915)881-5560"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"Kansas" jurisdiction:@"Kansas City" agencyName:@"SAC Office" contact:@"Mark Fox" email:@"mark.e.fox@ice.dhs.gov"];
    [one addNumber:@"(816)584-1054"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"California" jurisdiction:@"Los Angeles" agencyName:@"SAC Office" contact:@"Liz Mitchell" email:@"liz.e.mitchell@ice.dhs.gov"];
    [one addNumber:@"(213)633-6262"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"Tennessee" jurisdiction:@"Memphis" agencyName:@"SAC Office" contact:@"James Shires" email:@"james.a.shires@ice.dhs.gove"];
    [one addNumber:@"(504)310-8865"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"Florida" jurisdiction:@"Miami" agencyName:@"SAC Office" contact:@"Mariano Aponte" email:@"mariano.L.Aponte@ice.dhs.gov"];
    [one addNumber:@"(305)597-6614"];
    [self insertNewObject:one];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(HTFullData *) obj
{
    if (!labels) {
        labels = [labels init];
    }
    if(![labels containsObject:obj.state]){
        [labels addObject:obj.state];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
    if(!masterList){
        masterList = [masterList init];
    }
    if(![masterList containsObject:obj]){
        [masterList addObject:obj];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return labels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *str = [labels objectAtIndex:indexPath.row];
    cell.textLabel.text = str;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [labels removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

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
    if ([[segue identifier] isEqualToString:@"showCity"]) {
        NSMutableArray *temp = [[NSMutableArray alloc] init];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *state = [labels objectAtIndex:indexPath.row];
        for(int i = 0; i<masterList.count; i++){
            HTFullData *data = [masterList objectAtIndex:i];
            if(state == data.state){
                [temp insertObject:data atIndex:0];
            }
        }
        HTStateViewController *detailViewController = [segue destinationViewController];
        NSMutableArray *plac = [[NSMutableArray alloc] init];
        for(int i = 0; i<[temp count]; i++){
            HTFullData *data = [temp objectAtIndex:i];
            if(![plac containsObject:data.jurisdiction]){
                [plac insertObject:data.jurisdiction atIndex:0];
            }
        }
        detailViewController.List = temp;
        detailViewController.jurs = plac;
    }
  
}

@end
