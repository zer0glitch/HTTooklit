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
//  HTMasterViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 5/28/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTMasterViewController.h"
#import "HTFullData.h"
#import "HTStateViewController.h"
#import "HTLoginViewController.h"



@interface HTMasterViewController () {
}
@end

@implementation HTMasterViewController
@synthesize masterList, labels, bannerIsVisible, imageview;

NSMutableString *currentElementValue;
 HTFullData *one;
NSString *path, *urlstring;
NSMutableString *state, *agency, *jurisdiction, *contact, *email, *user, *key, *tkey, *tuser, *auth;
NSURL *url;
int count = 0;


- (void)awakeFromNib
{
    [super awakeFromNib];
    }

- (void)viewDidLoad {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    path = [documentsDirectory stringByAppendingPathComponent:@"ToolkitPasscode.plist"];
    if([[NSFileManager defaultManager] fileExistsAtPath:path]){
        NSDictionary *properties = [[NSDictionary alloc]init];
        properties = [NSDictionary dictionaryWithContentsOfFile:path];
        NSString *pkey = [properties objectForKey:@"passcode"];
        if(pkey) key = [[NSMutableString alloc] initWithString:pkey];
        else key = [[NSMutableString alloc] initWithString:@""];
        tkey = [[NSMutableString alloc] initWithString:key];
        NSString *puser = [properties objectForKey:@"email"];
        if(puser) user = [[NSMutableString alloc] initWithString:puser];
        else user = [[NSMutableString alloc] initWithString:@""];
        tuser = [[NSMutableString alloc] initWithString:user];
        [user setString:tuser];
    }
    //imageview = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slogo_src.png"]] initWithFrame:CGRectZero];
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
    
    
    //self.view.backgroundColor = [UIColor blackColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    labels = [[NSMutableArray alloc]init];
    masterList = [[NSMutableArray alloc]init];
    
    /*
    
    HTFullData *one = [[HTFullData alloc] initWithName:@"California" jurisdiction:@"Los Angeles" agencyName:@"Los Angeles Police Department" contact:@"Lt. Andrea Grossman" email:@"30231@lapd.lacity.org"];
    [one addNumber:@"Phone: (562) 624-4028"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"California" jurisdiction:@"Los Angeles" agencyName:@"SAC Office" contact:@"Liz Mitchell" email:@"liz.e.mitchell@ice.dhs.gov"];
    [one addNumber:@"Phone: (213) 633-6262"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Florida" jurisdiction:@"South Florida" agencyName:@"Broward County Sheriff's Office" contact:@"Lieutenant Charlotte Ross" email:@"leachtaskforce@bsosid.org"];
    [one addNumber:@"Phone: (954) 888-5299"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"Florida" jurisdiction:@"Miami" agencyName:@"Miami Beach Police" contact:@"Captain Mark Causey" email:@"Markcausey@miamibeachfl.gov"];
    [one addNumber:@"Phone: (305) 673-7776;5662"];
    [one addNumber:@"Cell: (305) 498-7438"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"Florida" jurisdiction:@"Miami-Dade" agencyName:@"Miami-Dade Police" contact:@"Sargent Nicole Donnelly & Detective Peter Caracilio" email:@"pcaracilio@mdpd.com"];
    [one addNumber:@"Sargent Nicole Donnelly: (305) 216-2591"];
    [one addNumber:@"Detective Peter Caracilio: (305) 297-6067"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"Florida" jurisdiction:@"Miami" agencyName:@"SAC Office" contact:@"Mariano Aponte" email:@"mariano.L.Aponte@ice.dhs.gov"];
    [one addNumber:@"Phone: (305) 597-6614"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc]initWithName:@"Georgia" jurisdiction:@"Atlanta" agencyName:@"SAC Office" contact:@"Brian Ramsey" email:@"brian.e.ramsey@ice.dhs.gov"];
    [one addNumber:@"Phone: (404) 346-2885"];
    [self insertNewObject:one];
    one = [[HTFullData alloc] initWithName:@"Georgia" jurisdiction:@"Georgia" agencyName:@"Georgia Bureau of investigation" contact:@"Special Agent in Charge Sandra Putnam" email:@"Sandra.Putnam@gbi.ga.gov"];
    [one addNumber:@"Phone: (404) 270-8870"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Kansas" jurisdiction:@"Kansas" agencyName:@"Sedgwick County's Sheriff's Office" contact:@"Lt. Jeff Weible" email:@"jweible@sedgwick.gov"];
    [one addNumber:@"Phone: (316) 337-6552"];
    [self insertNewObject:one];
    one = [[HTFullData alloc]initWithName:@"Kansas" jurisdiction:@"Kansas City" agencyName:@"SAC Office" contact:@"Mark Fox" email:@"mark.e.fox@ice.dhs.gov"];
    [one addNumber:@"Phone: (816) 584-1054"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc] initWithName:@"Louisiana" jurisdiction:@"Louisiana" agencyName:@"Louisiana Department of Justice" contact:@"Computer Forensic Lab Manager Corey Bourgeois" email:@"bourgeoisc@ag.state.la.us"];
    [one addNumber:@"Phone: (225) 326-6145"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc]initWithName:@"Tennessee" jurisdiction:@"Memphis" agencyName:@"SAC Office" contact:@"James Shires" email:@"james.a.shires@ice.dhs.gov"];
    [one addNumber:@"Phone: (504) 310-8865"];
    [self insertNewObject:one];
    one = [[HTFullData alloc] initWithName:@"Tennessee" jurisdiction:@"Tennessee" agencyName:@"Knoxville Police Department" contact:@"Captain Monty Houk" email:@"mhouk@cityofknoxville.org"];
    [one addNumber:@"Phone: (865) 215-7020"];
    [self insertNewObject:one];
    
    one = [[HTFullData alloc]initWithName:@"Texas" jurisdiction:@"El Paso" agencyName:@"SAC Office" contact:@"Gustavo Correa" email:@"gustavo.e.correa@ice.dhs.gov"];
    [one addNumber:@"Phone: (915) 881-5560"];
    [self insertNewObject:one];
    one = [[HTFullData alloc] initWithName:@"Texas" jurisdiction:@"Texas, Southern" agencyName:@" Attorney General of Texas" contact:@"Captain Kimberly Bustos" email:@"kimberly.bustos@texasattorneygeneral.gov"];
    [one addNumber:@"Phone: (512) 936-2896"];
    [self insertNewObject:one];   
     */
    [self loadData];
}

// Get Data

- (IBAction)contactUsButtonClick:(id)sender {
    HTContactUsViewController *controller = [[HTContactUsViewController alloc]
                                                initWithNibName:@"HTContactUsViewController" bundle:nil];
    
    if (controller) [self presentViewController:controller animated:YES completion:nil];
    // Show
    
  //  [controller release];
    
   // self.window.controller = controller;
}

- (void)loadData {
    if(count == 0){
        urlstring = @"https://www.srcle.com/mobile/apps/htt/sensitive/ht_contacts.xml";
        count++;
    }
    if([urlstring  isEqual: @"https://www.srcle.com/mobile/apps/htt/sensitive/ht_contacts.xml"]){
        auth = [[NSMutableString alloc] initWithString:@"1"];
    }
    else
        auth = [[NSMutableString alloc] initWithString:@"0"];
    url = [NSURL URLWithString:urlstring];
    NSLog(@"load data");

    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    //NSXMLParser *xml = [[NSXMLParser alloc] initWithContentsOfURL:url];

    //[xml setDelegate:self];
    //[xml parse];
    //NSLog(@"finish load data");
}


#pragma mark NSXMLParserDelegate

#define ELTYPE(typeName) (NSOrderedSame == [elementName caseInsensitiveCompare:@#typeName])

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName
    attributes:(NSDictionary *)attributeDict {
    //  NSString *ident = [attributeDict objectForKey:@"id"];
    if([elementName isEqualToString:@"Record"]) {
        ////NSLog(@"found record");
        NSLog(@"Start Record");
        
        one = [[HTFullData alloc] init];
        
    } else if([elementName isEqualToString:@"Agency"]) {
       // ////NSLog(@"found Agency");
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName {
    

    if([elementName isEqualToString:@"Record"]) {
      //  [twitterAlerts addObject:alert];
       // [alert release];
      //  HTFullData *one = [[HTFullData alloc] initWithName:state jurisdiction:jurisdiction agencyName:agency contact:contact email:email];
        NSLog(@"End Record");
        
        [self insertNewObject:one];
    } else  if([elementName isEqualToString:@"Agency"]) {
     //   alert.title = currentElementValue;
        
      // ////NSLog(@"agency current %@", currentElementValue);
        one.agencyName = currentElementValue;
       // ////NSLog(@"agency on. %@", one.agencyName);
    } else if([elementName isEqualToString:@"State"]) {
      //state = [[NSMutableString alloc] initWithString:currentElementValue];
        one.state = currentElementValue;
            ////NSLog(@"state on. %@", state);

    } else if([elementName isEqualToString:@"Jurisdiction"]) {
      //  jurisdiction = [[NSMutableString alloc] initWithString:currentElementValue];
        one.jurisdiction = currentElementValue;
        
    } else if([elementName isEqualToString:@"Contact"]) {
        contact = [[NSMutableString alloc] initWithString:currentElementValue];
        one.contact = currentElementValue;
        
    } else if([elementName isEqualToString:@"eMail"]) {
        email = [[NSMutableString alloc] initWithString:currentElementValue];
        one.email = currentElementValue;
  
    } else if([elementName isEqualToString:@"Number"]) {
        NSLog(@"found phone: %@", currentElementValue);
        [one addNumber:[[NSMutableString alloc] initWithString:currentElementValue]];
      //  [one.phoneNumbers addObject:currentElementValue];
        
    } else {
       // //// NSLog(@"%@", elementName);
    }
    
   //  [one printNumbers];
    currentElementValue = nil;
    
}

- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {
    if ([challenge previousFailureCount] == 0)
    {
        NSLog(@"received authentication challenge");
        
        NSURLCredential *newCredential;
        newCredential=[NSURLCredential credentialWithUser:user password:key
        persistence:NSURLCredentialPersistenceForSession];
        
        
        NSLog(@"credential created");
        
        [[challenge sender] useCredential:newCredential forAuthenticationChallenge:challenge];
        
    }
    else if ([challenge previousFailureCount] == 1)
    {
        urlstring = @"https://www.srcle.com/mobile/apps/htt/public/ht_contacts.xml";
        key = [[NSMutableString alloc] initWithString:@"PubL!cP@$$"];
        user = [[NSMutableString alloc] initWithString:@"anonymous@srcle.com"];
        [self loadData];
    }
    else
    {
        
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSXMLParser *xml = [[NSXMLParser alloc] initWithContentsOfURL:url];
    NSDictionary *rootObj = [NSDictionary dictionaryWithObjects: [NSArray arrayWithObjects: tkey, tuser, auth, nil] forKeys:[NSArray arrayWithObjects:@"passcode",@"email", @"authorization", nil]];
    [rootObj writeToFile:path atomically:YES];
    
    [xml setDelegate:self];
    NSLog(@"parsing...");
    if([xml parse])
        NSLog(@"parsing successful");
    else
        NSLog(@"parsing unsuccessful, stopped on %ld %ld\n%@",(long)[xml lineNumber], (long)[xml columnNumber], [xml parserError]);
        
    NSLog(@"finished parsing.");
    
    NSLog(@"responded to authentication challenge");
    count = 0;
    NSLog(@"finish load data");
    NSLog(auth);
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if(!currentElementValue)  {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        currentElementValue = [[NSMutableString alloc] initWithString:string];
        
       // [currentElementValue appendString:string];
    } else {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [currentElementValue appendString:string];
    }
   
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// Adds objects to the master list and creates a list of labels.
- (void)insertNewObject:(HTFullData *) obj {
    if (!labels) {
        labels = [labels init];
    }
    if(![labels containsObject:one.state]){
        [labels addObject:one.state];
        ////NSLog(@"adding state%@", obj.state);
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
    if(!masterList){
        masterList = [masterList init];
    }
    if(![masterList containsObject:one]){
        [masterList addObject:one];
    }
    
    [one printNumbers];
    
    //NSLog(@"adding %d state %@ jurisdiction %@", masterList.count, obj.state, obj.jurisdiction);
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
       return labels.count + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == labels.count){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"loginCell" forIndexPath:indexPath];
        return cell;
    }
    else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        NSString *str = [labels objectAtIndex:indexPath.row];
        cell.textLabel.text = str;
        return cell;
    }
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showCity"]) {
        NSMutableArray *temp = [[NSMutableArray alloc] init];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *state = [labels objectAtIndex:indexPath.row];
        for(int i = 0; i<masterList.count; i++){
            HTFullData *data = [masterList objectAtIndex:i];
            //NSLog(@"the state x%@x data.state x%@x", state, data.state);
            if([state isEqualToString:data.state]){
                //NSLog(@"equal");
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


// Banner

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    //[imageview setHidden:TRUE];
    [adView setHidden:FALSE];
    ////NSLog(@"bannerViewDidLoad");
    if (!self.bannerIsVisible) {
        ////NSLog(@"should load banner");
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
    ////NSLog(@"Banner view is beginning an ad bannerViewActionShouldBegin");
    //    BOOL shouldExecuteAction = [self allowActionToRun]; // your application implements this method
    //    if (!willLeave && shouldExecuteAction)
    //    {
    //        // insert code here to suspend any services that might conflict with the advertisement
    //    }
    //    return shouldExecuteAction;
    ////NSLog(@"bannerViewActionShouldBegin");
    return YES;
}
- (IBAction)buttonPress:(id)sender {
    
//    for (int i=0;i<labels.count;i++) {
//        [self.tableView delete:0];
//    }
//    masterList = [masterList init];
//    labels = [labels init];
//    
    [masterList removeAllObjects];
    [labels removeAllObjects];
    [self.tableView reloadData];
    [self loadData];

    [self.tableView reloadData];
}


- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    ////NSLog(@"bannerView");
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


@end
