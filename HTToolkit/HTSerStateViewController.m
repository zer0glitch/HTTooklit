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
//  HTSerStateViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/13/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTSerStateViewController.h"
#import "HTServiceData.h"
#import "HTSerCityViewController.h"

@interface HTSerStateViewController ()

@end

@implementation HTSerStateViewController
@synthesize data, states, bannerIsVisible;
HTServiceData *one;
NSMutableString *currentElementValue, *info, *state, *agency, *address, *gender, *city;

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
    
    data = [[NSMutableArray alloc]init];
    states = [[NSMutableArray alloc]init];
    HTServiceData *ser = [[HTServiceData alloc] init:@"California" city:@"Los Angeles" gender:@"Family" agency:@"Asian Pacific American Legal Center" address:@"http://www.apalc.org" info:@"Provides legal representation, help in securing permanent housing/work and aid in acquiring permanent residency for immigrants who were trafficked here for domestic work and sexual servitude."];
    [ser addNumber:@"Phone: (213) 977-7500"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"California" city:@"Los Angeles" gender:@"Adult - Male" agency:@"Asian Pacific American Legal Center" address:@"http://www.apalc.org" info:@"Provides legal representation, help in securing permanent housing/work and aid in acquiring permanent residency for immigrants who were trafficked here for domestic work and sexual servitude."];
    [ser addNumber:@"Phone: (213) 977-7500"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"California" city:@"Los Angeles" gender:@"Adult - Female" agency:@"Asian Pacific American Legal Center" address:@"http://www.apalc.org" info:@"Provides legal representation, help in securing permanent housing/work and aid in acquiring permanent residency for immigrants who were trafficked here for domestic work and sexual servitude."];
    [ser addNumber:@"Phone: (213) 977-7500"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"California" city:@"Los Angeles" gender:@"Family" agency:@"Coalition to Abolish Slavery and Trafficking (CAST)" address:@"http://www.castla.org" info:@"Works with the Los Angeles Metro Area Task Force on Human Trafficking. Provides social, legal and shelter services in one location, including physical and psychological health care, help in filing for T-Visas, and job training for victims of human trafficking."];
    [ser addNumber:@"Phone: (213) 365-1906"];
    [ser addNumber:@"Hotline: (888) 539-2373"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"California" city:@"Los Angeles" gender:@"Adult - Female" agency:@"Coalition to Abolish Slavery and Trafficking (CAST)" address:@"http://www.castla.org" info:@"Works with the Los Angeles Metro Area Task Force on Human Trafficking. Provides social, legal and shelter services in one location, including physical and psychological health care, help in filing for T-Visas, and job training for victims of human trafficking."];
    [ser addNumber:@"Phone: (213) 365-1906"];
    [ser addNumber:@"Hotline: (888) 539-2373"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"California" city:@"Los Angeles" gender:@"Adult - Male" agency:@"Coalition to Abolish Slavery and Trafficking (CAST)" address:@"http://www.castla.org" info:@"Works with the Los Angeles Metro Area Task Force on Human Trafficking. Provides social, legal and shelter services in one location, including physical and psychological health care, help in filing for T-Visas, and job training for victims of human trafficking."];
    [ser addNumber:@"Phone: (213) 365-1906"];
    [ser addNumber:@"Hotline: (888) 539-2373"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"California" city:@"Los Angeles" gender:@"Juvenile" agency:@"Coalition to Abolish Slavery and Trafficking (CAST)" address:@"http://www.castla.org" info:@"Works with the Los Angeles Metro Area Task Force on Human Trafficking. Provides social, legal and shelter services in one location, including physical and psychological health care, help in filing for T-Visas, and job training for victims of human trafficking."];
    [ser addNumber:@"Phone: (213) 365-1906"];
    [ser addNumber:@"Hotline: (888) 539-2373"];
    [data addObject:ser];

    
    
    
    
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Family" agency:@"Catholic Charities Legal Services" address:@"www.cclsmiami.org" info:@"Comprehensive immigration legal services to all victims of trafficking."];
    [ser addNumber:@"Phone: (305) 373-1073"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Juvenile" agency:@"Catholic Charities Legal Services" address:@"www.cclsmiami.org" info:@"Comprehensive immigration legal services to all victims of trafficking."];
    [ser addNumber:@"Phone: (305) 373-1073"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Adult - Female" agency:@"Catholic Charities Legal Services" address:@"www.cclsmiami.org" info:@"Comprehensive immigration legal services to all victims of trafficking."];
    [ser addNumber:@"Phone: (305) 373-1073"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Adult - Male" agency:@"Catholic Charities Legal Services" address:@"www.cclsmiami.org" info:@"Comprehensive immigration legal services to all victims of trafficking."];
    [ser addNumber:@"Phone: (305) 373-1073"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Juvenile" agency:@"Covenant House Florida" address:@"www.covenanthousefl.org" info:@"24‐hour shelter for any Juvenile under the age of 21 who is homeless, abused, neglected or at risk. Has both a crisis center and transitional housing. Juvenileren have access to counseling, case management, substance abuse treatment, employment assistance, independent living (classes for money management, grocery shopping and parenting education); the transitional housing is available for a maximum of two years and it is available for older adolescents."];
    [ser addNumber:@"Phone: (954) 561-5559"];
    [ser addNumber:@"Phone: 1-800-683-8338"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Family" agency:@"Florida Freedom Partnership" address:@"www.floridafreedom.org" info:@"Assistance for pre‐certified and certified victims of trafficking; provides housing, counseling, legal services, cash assistance, bus passes, furniture, ESOL or literacy classes for pre‐certified victims. Because funding for certified victims has more restrictions, cash assistance is not available to certified victims. However, certified victims are eligible for gift cards for supermarkets or pharmacies as well as employment services and ESOL or literacy classes."];
    [ser addNumber:@"Phone: (305) 640-9856"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Adult - Male" agency:@"Florida Freedom Partnership" address:@"www.floridafreedom.org" info:@"Assistance for pre‐certified and certified victims of trafficking; provides housing, counseling, legal services, cash assistance, bus passes, furniture, ESOL or literacy classes for pre‐certified victims. Because funding for certified victims has more restrictions, cash assistance is not available to certified victims. However, certified victims are eligible for gift cards for supermarkets or pharmacies as well as employment services and ESOL or literacy classes."];
    [ser addNumber:@"Phone: (305) 640-9856"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Adult - Female" agency:@"Florida Freedom Partnership" address:@"www.floridafreedom.org" info:@"Assistance for pre‐certified and certified victims of trafficking; provides housing, counseling, legal services, cash assistance, bus passes, furniture, ESOL or literacy classes for pre‐certified victims. Because funding for certified victims has more restrictions, cash assistance is not available to certified victims. However, certified victims are eligible for gift cards for supermarkets or pharmacies as well as employment services and ESOL or literacy classes."];
    [ser addNumber:@"Phone: (305) 640-9856"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Family" agency:@"Florida Immigrant Advocacy Center" address:@"www.fiacfla.org" info:@"Comprehensive legal representation and case management for victims of both labor trafficking and sex trafficking (and provide referrals to numerous other organizations that assist victims of trafficking); also conducts trainings for law enforcement and for service providers on human trafficking."];
    [ser addNumber:@"Phone: (305) 573-1106"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Juvenile" agency:@"Florida Immigrant Advocacy Center" address:@"www.fiacfla.org" info:@"Comprehensive legal representation and case management for victims of both labor trafficking and sex trafficking (and provide referrals to numerous other organizations that assist victims of trafficking); also conducts trainings for law enforcement and for service providers on human trafficking."];
    [ser addNumber:@"Phone: (305) 573-1106"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Adult - Male" agency:@"Florida Immigrant Advocacy Center" address:@"www.fiacfla.org" info:@"Comprehensive legal representation and case management for victims of both labor trafficking and sex trafficking (and provide referrals to numerous other organizations that assist victims of trafficking); also conducts trainings for law enforcement and for service providers on human trafficking."];
    [ser addNumber:@"Phone: (305) 573-1106"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Adult - Female" agency:@"Florida Immigrant Advocacy Center" address:@"www.fiacfla.org" info:@"Comprehensive legal representation and case management for victims of both labor trafficking and sex trafficking (and provide referrals to numerous other organizations that assist victims of trafficking); also conducts trainings for law enforcement and for service providers on human trafficking."];
    [ser addNumber:@"Phone: (305) 573-1106"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Juvenile" agency:@"International Rescue Committee" address:@"www.theirc.org/us-program,us-miami-fl" info:@"Case management for international Juvenileren and adults victims of trafficking. IRC has a program for pre‐ certified victims and another for certified victims; both programs include assistance with counseling and mental health, cash assistance, and referrals for legal representation and housing."];
    [ser addNumber:@"Phone: (305) 640-9881"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Juvenile" agency:@"Kristi House" address:@"www.kristihouse.org" info:@"Housing and case management for minors to include therapy (has highly specialized multidisciplinary team that addresses sex abuse); Project Gold focuses on the needs of Juvenile victims of sex trafficking between the ages of 11‐18 (both domestic and foreign‐born)."];
    [ser addNumber:@"Phone: (305) 547-6800"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Florida" city:@"Miami" gender:@"Juvenile" agency:@"Miami Bridge Youth and Family Services" address:@"www.miamibridge.org" info:@"Provides services for adolescents between the ages of 10‐17; temporary shelter for 30 days; offers family counseling for up to four months; parenting classes and life skills program; serve both domestic and international victims of trafficking."];
    [ser addNumber:@"Phone: (305) 635-8953"];
    [data addObject:ser];
    
    
    
    

    ser = [[HTServiceData alloc] init:@"Georgia" city:@"Atlanta" gender:@"Juvenile" agency:@"Covenant House" address:@"www.covenanthousega.org" info:@"Crisis /Assessment Center is the residential program staffed 365 days a year. The light is always on. It is the front line providing services to homeless youth ages 17-21. The Center is designed to assist youth in immediate need of housing and crisis intervention. The shelter provides housing, food, clothing and other necessities to youth for up to 60 days (extension possible).  Clients undergo a thorough assessment, which identifies areas of need, including any mental health and/or substance abuse treatment necessary, medical attention required, and/or educational vocational needs. The findings become the basis for the development of each individual client's specific case plan.  Also provides the following:  educational services, job services, health and wellness services, and life skills development."];
    [ser addNumber:@"Phone: (404) 589-0163"];
    [ser addNumber:@"Phone: 1-800-999-9999"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Georgia" city:@"Atlanta" gender:@"Juvenile" agency:@"Living Water for Girls" address:@"www.livingwaterforgirls.org" info:@"The mission of Living Waters for Girls is to rescue, rehabilitate and restore commercially sexually exploited girls by providing safe refuge and holistic therapeutic services."];
    [ser addNumber:@"Phone: (678) 783-0126"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Georgia" city:@"Atlanta" gender:@"Juvenile" agency:@"Wellspring Living" address:@"https://www.wellspringliving.org" info:@"Wellspring Living Girls (serving survivors ages 12-17) - Residential recovery program for girls caught in forces prostitution.\nREDEEMED ASSESSMENT CENTER (SERVING SURVIVORS AGES 18+) Offers an immediate safe environment for crises intervention.\nWELLSPRING LIVING WOMEN (SERVING SURVIVORS AGES 18+) A residential recovery program for women who are adult survivors of Juvenilehood sexual abuse and exploitation.\nINDEPENDENT LIVING PROGRAM (SERVING SURVIVORS AGES 18+) Continued support from the Wellspring Living Women program through an independent living environment.\nEMPOWERED LIVING PROGRAM (SERVING SURVIVORS AGES 17-22) Offers participants continued support to build independence and restoration."];
    [ser addNumber:@"ages 12-17: (404) 602-0068"];
    [ser addNumber:@"ages 17-22: (770) 549-5233"];
    [ser addNumber:@"ages 18+: (404) 427-3100"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Georgia" city:@"Atlanta" gender:@"Adult - Female" agency:@"Wellspring Living" address:@"https://www.wellspringliving.org" info:@"Wellspring Living Girls (serving survivors ages 12-17) - Residential recovery program for girls caught in forces prostitution.\nREDEEMED ASSESSMENT CENTER (SERVING SURVIVORS AGES 18+) Offers an immediate safe environment for crises intervention.\nWELLSPRING LIVING WOMEN (SERVING SURVIVORS AGES 18+) A residential recovery program for women who are adult survivors of Juvenilehood sexual abuse and exploitation.\nINDEPENDENT LIVING PROGRAM (SERVING SURVIVORS AGES 18+) Continued support from the Wellspring Living Women program through an independent living environment.\nEMPOWERED LIVING PROGRAM (SERVING SURVIVORS AGES 17-22) Offers participants continued support to build independence and restoration."];
    [ser addNumber:@"ages 12-17: (404) 602-0068"];
    [ser addNumber:@"ages 17-22: (770) 549-5233"];
    [ser addNumber:@"ages 18+: (404) 427-3100"];
    [data addObject:ser];
    
    
    
    
    
    
    ser = [[HTServiceData alloc] init:@"Kansas" city:@"Kansas City" gender:@"Family" agency:@"City Union Mission" address:@"www.cityunionmission.org" info:@"The Emergency Family Shelter at City Union Mission is a haven for families and single women."];
    [ser addNumber:@"Phone: (816) 474-9380"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Kansas" city:@"Kansas City" gender:@"Adult - Female" agency:@"City Union Mission" address:@"www.cityunionmission.org" info:@"The Emergency Family Shelter at City Union Mission is a haven for families and single women."];
    [ser addNumber:@"Phone: (816) 474-9380"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Kansas" city:@"Kansas City" gender:@"Family" agency:@"Sheffield Place" address:@"www.sheffieldplace.org" info:@"Sheffield Place serves homeless mothers with Juvenileren ages 0-12 years.  The only requirements for admission are that a homeless mother has Juvenileren in this age range, has a reunification plan, or is in her third trimester of pregnancy.  The mother must be clean from alcohol and drugs.  A mother who meets these criteria is encouraged to call Sheffield Place.  Her name will place on a waiting.  When her name comes to the top of the waiting list, she will be contacted to come to the facility to complete an application and participate in an interview.\nResidential Services - provides a two room living unit with a private bath and a shared kitchen and laundry facilities on each of the three floors of the shelter facility."];
    [ser addNumber:@"Phone: (816) 483-9927"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Kansas" city:@"Kansas City" gender:@"Adult - Female" agency:@"Veronica's Voice" address:@"www.veronicasvoice.org" info:@"Veronica’s Voice is Kansas City’s only recovery program dedicated solely to victims of prostitution and commercial sexual exploitation. The ability to leave a life of prostitution, drug addiction, and violence, and transition to a new life, free from these abuses, is difficult. The overall goal of VERONICA’S Voice is to offer compassionate and non-judgmental counseling and services through peer, survivor-ran services. VERONICA’S Voice offers individuals who are sexually exploited an opportunity to be educated and empowered to take back their lives."];
    [ser addNumber:@"Phone: (816) 483-7101"];
    [data addObject:ser];
    
    
    
    
    ser = [[HTServiceData alloc] init:@"Louisiana" city:@"New Orleans" gender:@"Adult - Female" agency:@"Eden House" address:@"www.edenhousenola.org" info:@"Two-year residential program for women who have been commercially and sexually exploited, services such as counseling, education, and job training."];
    [ser addNumber:@"Phone: (504) 407-0943"];
    [data addObject:ser];
    
    
    
    
    ser = [[HTServiceData alloc] init:@"Tennessee" city:@"Memphis" gender:@"Adult - Male" agency:@"A Bridge of Hope" address:@"www.abridgeofhope.org" info:@"Targets the specific needs of both male and females who are within approximately 2 years of release or parole from prison and through one year post release.  We provide life skills facilitation in many areas, such as:  abuse recovery (to victims and to the male offenders), life skills, financial literacy, employment skills, effective communication, anger management, substance abuse recovery skills, and changing criminal thinking/behavior."];
    [ser addNumber:@"Phone: (901) 487-6577"];
    [data addObject:ser];
    ser = [[HTServiceData alloc] init:@"Tennessee" city:@"Memphis" gender:@"Adult - Female" agency:@"A Bridge of Hope" address:@"www.abridgeofhope.org" info:@"Targets the specific needs of both male and females who are within approximately 2 years of release or parole from prison and through one year post release.  We provide life skills facilitation in many areas, such as:  abuse recovery (to victims and to the male offenders), life skills, financial literacy, employment skills, effective communication, anger management, substance abuse recovery skills, and changing criminal thinking/behavior."];
    [ser addNumber:@"Phone: (901) 487-6577"];
    [data addObject:ser];
    
    
    
    
    
    ser = [[HTServiceData alloc] init:@"Texas" city:@"El Paso" gender:@"Family" agency:@"Sheffield Place" address:@"www.sheffieldplace.org" info:@"Sheffield Place serves homeless mothers with Juvenileren ages 0-12 years.  The only requirements for admission are that a homeless mother has Juvenileren in this age range, has a reunification plan, or is in her third trimester of pregnancy.  The mother must be clean from alcohol and drugs.  A mother who meets these criteria is encouraged to call Sheffield Place.  Her name will place on a waiting.  When her name comes to the top of the waiting list, she will be contacted to come to the facility to complete an application and participate in an interview.\nResidential Services - provides a two room living unit with a private bath and a shared kitchen and laundry facilities on each of the three floors of the shelter facility."];
    [ser addNumber:@"Phone: (816) 483-9927"];
    [data addObject:ser];
    
    for(int i = 0; i<data.count; i++){
        HTServiceData *temp = [[HTServiceData alloc]init];
        temp = [data objectAtIndex:i];
        if(![states containsObject:temp.state])
            [states addObject:temp.state];
    }
    //[self loadData];
}

/*-(void)loadData {
    NSURL *url = [NSURL URLWithString:@""];
    NSXMLParser *xml = [[NSXMLParser alloc] initWithContentsOfURL:url];
    
    [xml setDelegate:self];
    [xml parse];
    NSLog(@"finish load data");
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
        
        one = [[HTServiceData alloc] init];
        
    } else if([elementName isEqualToString:@"Agency"]) {
        // ////NSLog(@"found Agency");
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName {
    
    if([elementName isEqualToString:@"Record"]) {
        
        NSLog(@"End Record");
        
        [self insertNewObject:one];
    } else  if([elementName isEqualToString:@"Agency"]) {
        
        NSLog(@"agency current %@", currentElementValue);
        one.agency = currentElementValue;
    } else if([elementName isEqualToString:@"State"]) {
        state = [[NSMutableString alloc] initWithString:currentElementValue];
        one.state = currentElementValue;
        
    } else if([elementName isEqualToString:@"Gender"]) {
        gender = [[NSMutableString alloc] initWithString:currentElementValue];
        one.gender = currentElementValue;
        
    }else if([elementName isEqualToString:@"City"]) {
        city= [[NSMutableString alloc] initWithString:currentElementValue];
        one.city = currentElementValue;
        
    } else if([elementName isEqualToString:@"Info"]) {
        info = [[NSMutableString alloc] initWithString:currentElementValue];
        one.info = currentElementValue;
        
    } else if([elementName isEqualToString:@"Address"]) {
        address = [[NSMutableString alloc] initWithString:currentElementValue];
        one.address = currentElementValue;
        
    } else if([elementName isEqualToString:@"Number"]) {
        NSLog(@"found phone: %@", currentElementValue);
        [one addNumber:[[NSMutableString alloc] initWithString:currentElementValue]];
        
    } else {
        NSLog(@"%@", elementName);
    }
    
    currentElementValue = nil;
    
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

- (void)insertNewObject:(HTServiceData *) obj {
    if (!states) {
        states = [states init];
    }
    if(![states containsObject:one.state]){
        [states addObject:one.state];
        ////NSLog(@"adding state%@", obj.state);
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
    if(!data){
        data = [data init];
    }
    if(![data containsObject:one]){
        [data addObject:one];
    }
    
}
*/

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
    return states.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"serStateCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [states objectAtIndex:indexPath.row];
    
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
    if ([[segue identifier] isEqualToString:@"showCity"]) {
        NSMutableArray *temp = [[NSMutableArray alloc] init];
        NSMutableArray *labels = [[NSMutableArray alloc]init];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *state = [states objectAtIndex:indexPath.row];
        for(int i = 0; i<data.count; i++){
            HTServiceData *dat = [data objectAtIndex:i];
            if(state == dat.state){
                [temp addObject:dat];
            }
        }
        for(int i = 0; i<temp.count; i++){
            HTServiceData *dat = [temp objectAtIndex:i];
            if(![labels containsObject:dat.city])
                [labels addObject:dat.city];
        }
        HTSerCityViewController *detailViewController = [segue destinationViewController];
        detailViewController.list = temp;
        detailViewController.cities = labels;
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
    NSLog(@"HTContactViewController bannerViewDidLoad");
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
