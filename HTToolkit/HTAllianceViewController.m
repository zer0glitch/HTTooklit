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
    
    //Attorney Generals
    HTAllianceData *one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:nil district:nil contact:@"Eric Holder" summary:nil address:nil website:@"http://www.justice.gov/ag/" email:nil];
    [one addNumber:@"Phone: (202) 514-2001"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General of Alabama" state:@"Alabama" district:nil contact: @"Luther Strange" summary:nil address:@"501 Washington Avenue, Montgomery, AL 36104" website:@"http://www.ago.state.al.us/Page-Contact-Us" email:nil];
    [one addNumber:@"Phone: (334) 242-7300"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Civil Division Anchorage Office" state:@"Alaska" district:nil contact: @"Kamala Harris" summary:nil address:@"1031 W. 4th Avenue, Suite 200, Anchorage, AK 99501-1994" website:@"http://www.law.state.ak.us/department/contact.html" email:@"attorney.general@alaska.gov"];
    [one addNumber:@"Phone: (907) 465-2133"];
    [one addNumber:@"Fax: (907) 465-2075"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Phoenix Office of Attorney" state:@"Arizona" district:nil contact: @"Tom Horne" summary:nil address:@"1275 West Washington Street, Phoenix, AZ 85007-2926" website:@"https://www.azag.gov/contact-us" email:@"consumerinfo@azag.gov"];
    [one addNumber:@"Phone: (602) 542-5025"];
    [one addNumber:@"Fax: (602) 542-4085"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General's Office of Arkansas" state:@"Arkansas" district:nil contact: @"Dustin McDaniel" summary:nil address:@"323 Center Street, Suite 200, Little Rock AR 72201" website:@"http://www.ag.arkansas.gov/contact-us/" email:nil];
    [one addNumber:@"Phone: (501) 682-2007"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Public Inquiry Unit" state:@"California" district:nil contact: @"Kamala Harris" summary:nil address:@"P.O. Box 944255, Sacramento, CA 94244-2550" website:@"http://oag.ca.gov/contact" email:nil];
    [one addNumber:@"Phone: (916) 445-9555"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General of Colorado" state:@"Colorado" district:nil contact: @"John Suthers" summary:nil address:@"1300 Broadway, 10th Floor, Denver, CO 80203" website:@"http://www.coloradoattorneygeneral.gov/contact_us" email:@"attorney.general@state.co.us"];
    [one addNumber:@"Phone: (720) 508-6000"];
    [one addNumber:@"Fax: (720) 508-6030"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General Office Of Connecticut" state:@"Connecticut" district:nil contact: @"George Jepsen" summary:nil address:@"55 Elm St.,  Hartford, CT 06106" website:@"http://www.phone.ct.gov/ContactsForAgency.aspx?deptid=OAG" email:nil];
    [one addNumber:@"Phone: (860) 808-5318"];
    [one addNumber:@"Fax: (860) 808-5387"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Wilmington Office" state:@"Delaware" district:nil contact: @"Beau Biden" summary:nil address:@"820 N. French Street, Wilmington, DE 19801 " website:@"http://attorneygeneral.delaware.gov/office/contact.shtml" email:@"Attorney.General@State.DE.US"];
    [one addNumber:@"Phone: Civilian Division (302) 577-8400"];
    [one addNumber:@"Fax: (302) 577-6630"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Administrative Services-Tallahassee Office" state:@"Florida" district:nil contact: @"Pam Bondi" summary:nil address:@"The Capitol PL-01, Tallahassee, FL 32399-1050" website:@"http://www.myfloridalegal.com/contact" email:nil];
    [one addNumber:@"Phone: (850) 414-3300"];
    [one addNumber:@"Fax: (850) 488-5106"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Department of the Attorney General" state:@"Georgia" district:nil contact: @"Sam Olens" summary:nil address:@"40 Capitol Square, SW, Atlanta, Ga 30334" website:@"http://law.ga.gov/contact-us-0" email:@"AGOlens@law.ga.gov"];
    [one addNumber:@"Phone: (404) 656-3300"];
    [one addNumber:@"Fax: (404) 657-8733"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Department of the Attorney General of Hawaii" state:@"Hawaii" district:nil contact: @"David M. Louie" summary:nil address:@"425 Queen Street, Honolulu, HI 96813 " website:@"http://ag.hawaii.gov/contact-us/" email:nil];
    [one addNumber:@"Phone: (808) 586-1500"];
    [one addNumber:@"Fax: (808) 586-1239"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General of Idaho" state:@"Idaho" district:nil contact: @"Lawrence G. Wasden" summary:nil address:@"700 W. Jefferson Street, Suite 210 P.O. Box 83720, Boise, Idaho 83720-0010" website:@"http://www.ag.idaho.gov/aboutUs/contactUs.html" email:nil];
    [one addNumber:@"Phone: (208) 334-2400"];
    [one addNumber:@"Fax: (208) 854-8071"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Chicago Main Office" state:@"Illinois" district:nil contact: @"Lisa Madigan" summary:nil address:@"100 West Randolph Street, Chicago, IL 60601 " website:@"http://illinoisattorneygeneral.gov/about/oagdirectory.html" email:nil];
    [one addNumber:@"Phone: (312) 814-3000"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General's Office" state:@"Indiana" district:nil contact: @"Greg Zoeller" summary:nil address:@"302 W. Washington St., 5th Floor, Indianapolis, IN 46204" website:@"http://www.in.gov/attorneygeneral/2353.htm" email:@"Constituent@atg.in.gov"];
    [one addNumber:@"Phone: (317) 232-6201"];
    [one addNumber:@"Fax: (317) 232-7979"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Iowa Attorney General Office" state:@"Iowa" district:nil contact: @"Tom Miller" summary:nil address:@"1305 E. Walnut Street, Des Moines IA 50319 " website:@"http://www.iowaattorneygeneral.org/contact_us/index.html" email:@"webteam@ag.state.ia.us"];
    [one addNumber:@"Phone: (515) 281-5164"];
    [one addNumber:@"Fax: (515) 281-4209"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Kansas Attorney General Office" state:@"Kansas" district:nil contact: @"Derek Schmidt" summary:nil address:@"120 SW 10th Ave., 2nd Floor, Topeka, KS 66612" website:@"http://ag.ks.gov/about-the-office/contact-us/contact-us" email:nil];
    [one addNumber:@"Phone: (785) 296-2215"];
    [one addNumber:@"Fax: (785) 296-6296"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Louisville Branch Office" state:@"Kentucky" district:nil contact: @"Jack Conway" summary:nil address:@"700 Capitol Avenue, Suite 118, Frankfort, Kentucky 40601" website:@"http://ag.ky.gov/Pages/default.aspx" email:nil];
    [one addNumber:@"Phone: (502) 429-7134"];
    [one addNumber:@"Fax: (502) 429-7129"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Administrative Services Division" state:@"Louisiana" district:nil contact: @"James Caldwell" summary:nil address:@"1885 N. Third Street, Baton Rouge, LA 70802 " website:@"http://www.ag.state.la.us/Article.aspx?articleID=28&catID=0" email:@"AdminInfo@ag.state.la.us"];
    [one addNumber:@"Phone: (225) 326-6705"];
    [one addNumber:@"Fax: (225) 326-6793"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Maine Attorney General" state:@"Maine" district:nil contact: @"Janet Mills" summary:nil address:@"6 State House Station,  Augusta, ME 04333 " website:@"http://www.maine.gov/ag/contact.html" email:nil];
    [one addNumber:@"Phone: (207) 626-8800"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General of Maryland" state:@"Maryland" district:nil contact: @"Douglas Gansler" summary:nil address:@"200 St. Paul Place, Baltimore, MD 21202 " website:@"http://www.oag.state.md.us/contact.htm" email:@"consumer@oag.state.md.us"];
    [one addNumber:@"Phone: (410) 576-6300"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Springfield Office" state:@"Massachusetts" district:nil contact: @"Martha Coakley" summary:nil address:@"1350 Main Street, Fourth Floor, Springfield, MA 01103-1629" website:@"http://www.mass.gov/ago/contact-us.html" email:nil];
    [one addNumber:@"Phone: (413) 784-1240"];
    [one addNumber:@"Fax: (413) 784-1244"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Lansing Office" state:@"Michigan" district:nil contact: @"Bill Schuette" summary:nil address:@"G. Mennen Williams Building, 7th Floor, 525 W. Ottawa St., P.O. Box 30212, Lansing, MI 48909" website:@"http://www.michigan.gov/ag/0,4534,7-164-21153-51368--,00.html" email:nil];
    [one addNumber:@"Phone: (517) 373-1110"];
    [one addNumber:@"Fax: (517) 373-3042"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of Minnesota Attorney General Lori Swanson" state:@"Minnesota" district:nil contact: @"Lori Swanson" summary:nil address:@"1400 Bremer Tower 445 Minnesota Street, St. Paul, MN 55101" website:@"http://www.ag.state.mn.us/Office/ContactUs.asp" email:nil];
    [one addNumber:@"Phone: (651) 296-3353"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"MS Attorney General's Office Walter Sillers Building" state:@"Mississippi" district:nil contact: @"Jim Hood" summary:nil address:@"Walter Sillers Building, 550 High Street, Suite 1200, Jackson, MS 39201" website:@"http://agjimhood.com/index.php/contact" email:nil];
    [one addNumber:@"Phone: (601) 359-3680"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Jefferson Office" state:@"Missouri" district:nil contact: @"Chris Koster" summary:nil address:@"207 W. High St. P.O. Box 899, Jefferson City, MO 65102" website:@"http://ago.mo.gov/contactus.htm" email:@"attorney.general@ago.mo.gov"];
    [one addNumber:@"Phone: (573) 751-3321"];
    [one addNumber:@"Fax: (573) 751-0774"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Department of Justice and Attorney General" state:@"Montana" district:nil contact: @"Tim Fox" summary:nil address:@"P.O. Box 201401, Helena, MT 59620-1401" website:@"https://doj.mt.gov/about/contact-us/" email:@"contactdoj@mt.gov"];
    [one addNumber:@"Phone: (406) 444-2026"];
    [one addNumber:@"Fax: (406) 444-3549"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General" state:@"Nebraska" district:nil contact: @"Jon Bruning" summary:nil address:@"2115 State Capitol, Lincoln, NE 68509" website:@"http://www.ago.ne.gov/contact" email:@"ago.consumer@nebraska.gov"];
    [one addNumber:@"Phone: (402) 471-2682"];
    [one addNumber:@"Fax: (402) 471-3297"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Carson City Office" state:@"Nevada" district:nil contact: @"Catherine Cortez" summary:nil address:@"100 North Carson Street, Carson City, NV 89701" website:@"http://ag.nv.gov/Contact/Contact/" email:nil];
    [one addNumber:@"Phone: (775) 684-1100"];
    [one addNumber:@"Fax: (775) 684-1108"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"NH Department of Justice" state:@"New Hampshire" district:nil contact: @"Joseph Foster" summary:nil address:@"33 Capitol Street, Concord, NH 03301" website:@"http://doj.nh.gov/contact-us/index.htm" email:nil];
    [one addNumber:@"Phone: (603) 271-3658"];
    [one addNumber:@"Fax: (603) 271-2110"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Trenton Regional Office" state:@"New Jersey" district:nil contact: @"John Hoffman" summary:nil address:@"140 East Front Street, 6th Floor, Trenton, NJ 08625-0090 " website:@"http://www.nj.gov/oag/contactus.htm" email:nil];
    [one addNumber:@"Phone: (609) 292-4925"];
    [one addNumber:@"Fax: (609) 292-3508"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Santa Fe Office" state:@"New Mexico" district:nil contact: @"Gary King" summary:nil address:@"408 Galisteo Street Villagra Building, Santa Fe, NM 87501" website:@"http://www.nmag.gov/contact-us" email:@"psisneros@nmag.gov"];
    [one addNumber:@"Phone: (505) 827-6000"];
    [one addNumber:@"Fax: (505) 827-5826"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General" state:@"New York" district:nil contact: @"Eric Schneiderman" summary:nil address:@"The Capitol, Albany, NY 12224-0341" website:@"http://www.ag.ny.gov/contact-attorney-general" email:nil];
    [one addNumber:@"Phone: (800) 771-7755"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General Office" state:@"North Carolina" district:nil contact: @"Roy Cooper" summary:nil address:@"9001 Mail Service Center, Raleigh, NC 27699-9001" website:@"http://www.ncdoj.gov/getdoc/714fcea5-4eb0-4558-801d-c12c39bb30c8/DOJ-Contact-Information.aspx" email:nil];
    [one addNumber:@"Phone: (919) 716-6400"];
    [one addNumber:@"Fax: (919) 716-6750"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General's Office" state:@"North Dakota" district:nil contact: @"Wayne Stenehjem" summary:nil address:@"600 E. Boulevard Ave. Dept. 125, Bismarck, ND 58505" website:@"http://www.ag.state.nd.us/About/ContactUs.htm" email:@"ndag@nd.gov"];
    [one addNumber:@"Phone: (701) 328-2210"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General's Office Help Center" state:@"Ohio" district:nil contact: @"Mike DeWine" summary:nil address:@"30 E. Broad St., 14th Floor, Columbus, OH 43215" website:@"http://www.ohioattorneygeneral.gov/Contact" email:nil];
    [one addNumber:@"Phone: (800) 282-0515"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of Attorney General" state:@"Oklahoma" district:nil contact: @"Scott Pruit" summary:nil address:@"313 NE 21st Street,   Oklahoma City, OK 73105" website:@"http://www.oag.state.ok.us/oagweb.nsf/" email:nil];
    [one addNumber:@"Phone: (405) 521-3921"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General's Office" state:@"Oregon" district:nil contact: @"Ellen Rosenblum" summary:nil address:@"1162 Court Street NE, Salem, OR 97301-4096 " website:@"http://www.doj.state.or.us/Pages/contact.aspx" email:@"help@oregonconsumer.gov"];
    [one addNumber:@"Phone: (503) 378-4400"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of Attorney General" state:@"Pennsylvania" district:nil contact: @"Kathleen kane" summary:nil address:@"16th Floor, Strawberry Square, Harrisburg, PA 17120" website:@"http://www.attorneygeneral.gov/theoffice.aspx?id=71" email:nil];
    [one addNumber:@"Phone: (717) 787-3391"];
    [one addNumber:@"Fax: (717)-787-8242"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Kent County Courthouse Office" state:@"Rhode Island" district:nil contact: @"Peter Kilmartein" summary:nil address:@"James W. Leighton Judicial Complex, 222 Quaker Lane, Warwick, Rhode Island 02886" website:@"http://www.riag.ri.gov/contact/" email:@"contactus@riag.ri.gov"];
    [one addNumber:@"Phone: (401) 822-2710"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Rembert Dennis Building" state:@"South Carolina" district:nil contact: @"Alana Wilson" summary:nil address:@"1000 Assembly Street, Room 519, Columbia, SC 29201" website:@"http://www.scag.gov/contact-us" email:nil];
    [one addNumber:@"Phone: (803) 734-3970"];
    [one addNumber:@"Fax: (803) 253-6283"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General" state:@"South Dakota" district:nil contact: @"Martey Jackley" summary:nil address:@"1302 East Highway 14 #1, Pierre, SD 57501-8501" website:@"http://atg.sd.gov/TheOffice/ContactUs.aspx" email:nil];
    [one addNumber:@"Phone: (605) 773-3215"];
    [one addNumber:@"Fax: (605) 773-4106"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General and Reporter" state:@"Tennessee" district:nil contact: @"Robert E. Cooper,Jr" summary:nil address:@"P.O. Box 20207, Nashville, TN 37202-0207" website:@"http://www.tn.gov/attorneygeneral/contact.html" email:nil];
    [one addNumber:@"Phone: (615) 741-3491"];
    [one addNumber:@"Fax: (615) 741-2009"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General" state:@"Texas" district:nil contact: @"Greg Abbott" summary:nil address:@"300 W. 15th Street, Austin, TX 78701" website:@"https://www.oag.state.tx.us/agency/contacts.shtml" email:@"publicrecords@texasattorneygeneral.gov"];
    [one addNumber:@"Phone: (512) 463-2100"];
    [one addNumber:@"Fax: (512) 475-2994"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Utah State Capitol Office" state:@"Utah" district:nil contact: @"John Swallow" summary:nil address:@"Utah State Capitol Complex, 350 North State Street Suite 230" website:@"http://attorneygeneral.utah.gov/contact_us.html" email:@"uag@utah.gov"];
    [one addNumber:@"Phone: (801) 366-0260"];
    [one addNumber:@"Fax: (801) 538-1121"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the AttorneyGeneral" state:@"Vermont" district:nil contact: @"William Sorrell" summary:nil address:@"109 State Street, Montpelier, VT 05609-1001" website:@"http://www.atg.state.vt.us/office-organization-information/contacting-us.php" email:@"atginfo@atg.state.vt.us"];
    [one addNumber:@"Phone: (802) 828-3171"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Office of the Attorney General" state:@"Virginia" district:nil contact: @"Ken Cuccinelli" summary:nil address:@"900 East Main Street, Richmond, VA 23219" website:@"http://www.oag.state.va.us/Contact%20Us/contact_directory.html" email:nil];
    [one addNumber:@"Phone: (804) 786-2071"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General's Office" state:@"Washington" district:nil contact: @"Bob Ferguson" summary:nil address:@"PO Box 40100, Olympia, WA  98504-0100" website:@"http://www.atg.wa.gov/ContactUs.aspx#Online" email:nil];
    [one addNumber:@"Phone: (360) 753-6200"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Main Office Administration" state:@"West Virginia" district:nil contact: @"Patrick Morrisey" summary:nil address:@"Bldg. 1, Room E-26, Charleston, WV 25305" website:@"http://www.wvago.gov/contactus.cfm" email:nil];
    [one addNumber:@"Phone: (304) 558-2021"];
    [one addNumber:@"Fax: (304) 558-0140"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Wisconsin Department of Justice" state:@"Wisconsin" district:nil contact: @"J.B. VanHollen" summary:nil address:@"P.O. Box 7857, Madison, WI 53707-7857" website:@"http://www.doj.state.wi.us/frequently-asked-questions" email:nil];
    [one addNumber:@"Phone: (608) 266-1221"];
    [one addNumber:@"Fax: (608) 267-2779"];
    [attorneyGenerals addObject:one];
    one = [[HTAllianceData alloc]init:@"Attorney General's Office" state:@"Wyoming" district:nil contact: @"Gregory A. Philips" summary:nil address:@"123 Capitol Building 200 W. 24th Street, Cheyenne, WY 82002 " website:@"http://attorneygeneral.state.wy.us/" email:nil];
    [one addNumber:@"Phone: (307) 777-7841"];
    [one addNumber:@"Fax: (307) 777-6869"];
    [attorneyGenerals addObject:one];


    
    
    
    
    //Federal District Attorneys
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Alabama" district:@"Northern District" contact:@"Joyce White Vance" summary:@"Calhoun, Clay ,Cleburne, Talladega, Blount, Jefferson, Shelby ,Cullman, Jackson, Lawrence, Limestone ,Madison, Morgan ,Colbert, Franklin ,Lauderdale, Cherokee, De Kalb, Etowah, Marshall, St. Clair, Fayette, Lamar, Marion, Walker, Winston, Bibb, Greene, Pickens, Sumter, Tuscaloosa" address:@"1801 4th Avenue North,  Birmingham, Alabama 35203" website:@"http://www.justice.gov/usao/districts/aln.html" email:nil];
    [one addNumber:@"Phone: (205) 244-2001"];
    [one addNumber:@"Fax: (205) 244-2171"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Alabama" district:@"Middle District" contact:@"George L. Beck, Jr." summary:@"Autauga, Barbour, Bullock, Butler, Chilton, Coosa, Covington, Crenshaw, Elmore, Lowndes, Montgomery, Pike, Coffee, Dale, Geneva, Henry, Houston, Chambers, Lee, Macon , Randolph, Russell, Tallapoosa" address:@"131 Clayton Street, Montgomery, AL 36104" website:@"http://www.justice.gov/usao/districts/alm.html" email:nil];
    [one addNumber:@"Phone: (334) 223-7280"];
    [one addNumber:@"Fax: (334) 223-7560"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Alabama" district:@"Southern District" contact:@" Kenyen R. Brown" summary:@"Choctaw, Clarke, Conecuh, Escambia, Mobile, Monroe, Washington, Dallas, Hale, Marengo, Perry, Wilcox, Daldwin" address:@"63 South Royal Street, Suite 600, Mobile, AL 36602" website:@"http://www.justice.gov/usao/districts/als.html" email:nil];
    [one addNumber:@"Phone: (251) 441-5845"];
    [one addNumber:@"Fax: (251) 441-5277"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Alaska" district:@"District of Alaska" contact:@" Karen L. Loeffler" summary:@"Aleutians East, Aleutians West, Anchorage, Bethel, Bristol Bay, Denali, Dillingham, Fairbanks North Star, Haines, Juneau, Kenai Peninsula,  Ketchikan Gateway, Kodiak Island, Lake And Peninsula, Matanuska-Susitna, Nome, North Slope, Northwest Arctic, Prince of Wales-Outer Ketchikan, Sitka, Skagway, Southeast Fairbanks, Valdez-Cordova, Wade Hampton, Wrangell, Yakutat" address:@"222 W 7th Ave #253 Anchorage, AK 99513" website:@"http://www.justice.gov/usao/districts/ak.html" email:nil];
    [one addNumber:@"Phone: (907) 271-5071"];
    [one addNumber:@"Fax: (907) 271-4054"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Arizona" district:@"District of Arizona" contact:@"John S. Leonardo" summary:@"Apache , Cochise , Coconino , Gila , Graham , Greenlee , La Paz , Maricopa , Mohave , Navajo , Pima ,G2 Pinal , Santa Cruz , Yavapai , Yuma " address:@"40 N. Central Avenue, Suite 1200,  Phoenix, AZ 85004-4408" website:@"http://www.justice.gov/usao/districts/az.html" email:nil];
    [one addNumber:@"Phone: (602) 514-7500"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Arkansas" district:@"Western District" contact:@"Conner Eldridge" summary:@"Ashley, Baxter, Benton, Boone, Bradley, Calhoun, Carroll, Clark, Columbia, Crawford, Franklin, Garland, Hempstead, Hot Spring, Howard, Johnson, Lafayette, Little River, Logan, Madison, Marion, Miller, Montgomery, Nevada, Newton, Ouachita, Pike, Polk, Scott, Searcy, Sebastian, Sevier, Union, Washington" address:@"414 Parker Avenue,  Fort Smith, AR 72901" website:@"http://www.justice.gov/usao/districts/arw.html" email:nil];
    [one addNumber:@"Phone: (479) 783-5125"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Arkansas" district:@"Eastern District" contact:@"Christopher R. Thyer" summary:@"Arkansas, Chicot, Clay, Cleburne, Cleveland, Conway, Craighead, Crittenden, Cross, Dallas, Desha, Drew, Faulkner, Fulton, Grant, Greene, Independence, Izard, Jackson, Jefferson, Lawrence, Lee, Lincoln, Lonoke, Mississippi, Monroe, Perry, Phillips, Poinsett, Pope, Prairie, Pulaski, Randolph, Sharp, St. Francis, Stone, Saline, Van Buren, White, Woodruff, Yell" address:@"P.O. Box 1229, Little Rock, AR 72203-1229" website:@"http://www.justice.gov/usao/districts/are.html" email:nil];
    [one addNumber:@"Phone: (501) 340-2600"];
    [one addNumber:@"Fax: (501) 340-2728"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"California" district:@"Central District" contact:@"AndrÈ Birotte, Jr." summary:@"Riverside, San Bernardino, Counties, Orange ,Los Angeles, Ventura, Santa Barbara, San Luis Obispo " address:@"312 North Spring Street, Suite 1200,  Los Angeles, California 90012" website:@"http://www.justice.gov/usao/districts/cac.html" email:nil];
    [one addNumber:@"Phone: (213) 894-2400"];
    [one addNumber:@"Fax: (213) 894-0141"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"California" district:@"Northern District" contact:@"Melinda Haag" summary:@"Butte , Colusa , Del Norte  , El Dorado , Glenn , Humboldt , Lake  , Lassen  , Marin  , Mendocino  , Modoc , Napa  , Nevada  , Placer , Plumas , Shasta , Sierra , Siskiyou  , Solano , Sonoma , Trinity " address:@"150 Almaden Blvd. Suite 900, San Jose, CA 95113" website:@"http://www.justice.gov/usao/districts/can.html" email:nil];
    [one addNumber:@"Phone: (408) 535-5061"];
    [one addNumber:@"Fax: (408) 535-5066"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"California" district:@"Southern District" contact:@"Laura E. Duffy" summary:@"Imperial, San Diego" address:@"880 Front St #6293 San Diego, CA 92101" website:@"http://www.justice.gov/usao/districts/cas.html" email:nil];
    [one addNumber:@"Phone: (619) 557-5610"];
    [one addNumber:@"Fax: (619) 546-0720"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"California" district:@"Eastern District" contact:@"Benjamin B. Wagner" summary:@"Alpine, Amador, Butte, Calaveras, Colusa, El Dorado, Fresno, Glenn, Inyo, Kern, Kings, Lassen, Madera, Mariposa, Merced, Modoc, Mono, Nevada, Placer, Plumas, Sacramento, San Joaquin, Shasta, Sierra, Siskiyou, Solano, Stanislaus, Sutter, Tehama, Trinity, Tulare, Tuolumne, Yolo, and Yuba.  " address:@"501 I Street, Suite 10, Sacramento, CA 95814" website:@"http://www.justice.gov/usao/districts/cae.html" email:nil];
    [one addNumber:@"Phone: (916) 554-2700"];
    [one addNumber:@"Fax: (916) 554-2900"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Colorado" district:@"District of Colorado" contact:@"John F. Walsh" summary:@"Adams, Alamosa, Arapahoe, Archuleta, Baca, Bent, Boulder, Broomfield, Chaffee, Cheyenne, Clear Creek,  Conejos, Costilla, Crowley, Custer, Delta, Denver, Dolores, Douglas, Eagle, El Paso, Elbert,  Fremont, Garfield, Gilpin, Grand, Gunnison, Hinsdale, Huerfano, Jackson, Jefferson, Kiowa, Kit Carson, La Plata, Lake, Larimer, Las Animas, Lincoln, Logan, Mesa, Mineral, Moffat, Montezuma, Montrose, Morgan, Otero, Ouray, Park, Phillips, Pitkin, Prowers, Pueblo, Rio Blanco, Rio Grande, Routt, Saguache, San Juan, San Miguel, Sedgwick, Summit, Teller, Washington, Weld, Yuma " address:@"1225 Seventeenth Street, Suite 700 Denver, CO 80202" website:@"http://www.justice.gov/usao/districts/co.html" email:nil];
    [one addNumber:@"Phone: (303) 454-0100"];
    [one addNumber:@"Fax: (303) 454-0409"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Connecticut" district:@"District of Connecticut" contact:@"Deirdre M. Daly" summary:@"Fairfield , Hartford , Litchfield , Middlesex  New Haven , New London , Tolland , Windham " address:@"157 Church Street Floor 25 New Haven,  CT 06510 " website:@"http://www.justice.gov/usao/districts/ct.html" email:nil];
    [one addNumber:@"Phone: (203) 821-3700"];
    [one addNumber:@"Fax: (203) 773-5376"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Delaware" district:@"District of Delaware" contact:@"Charles M. Oberly" summary:@"New Castle, Kent, Sussex" address:@"1007 Orange Street Suite 700 Wilmington,  DE 19801" website:@"http://www.justice.gov/usao/districts/de.html" email:nil];
    [one addNumber:@"Phone: (302) 573-6277"];
    [one addNumber:@"Fax: (302) 573-6220"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Florida" district:@"Nothern District" contact:@"Pamela Cothran Marsh" summary:@"Alachua, Dixie, Gilchrist, Lafayette, Levy Serving Bay, Calhoun, Gulf, Holmes, Jackson, Washington Escambia, Okaloosa, Santa Rosa, Walton Franklin, Gadsden, Jefferson, Leon, Liberty, Madison, Taylor, Wakulla  " address:@"111 North Adams Street 4th Floor, Tallahassee, FL 32301" website:@"http://www.justice.gov/usao/districts/fln.html" email:nil];
    [one addNumber:@"Phone: (850) 942-8430"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Florida" district:@"Middle District " contact:@"Lee Bentley" summary:@"Charlotte, Collier, De Soto, Glades, Hendry, LeeBaker, Bradford, Citrus, Clay, Columbia, Duval, Flagler,Hamilton, Marion, Nassau, Putnam, St.Johns, Sumter,Suwannee, Union, Volusia, Brevard, Lake, Orange, Osceola and Seminole, Hardee, Hernando, Hillsborough, Manatee, Pasco,Pinellas, Polk, Sarasota" address:@"400 North Tampa Street Suite 3200, Tampa, Fl. 33602" website:@"http://www.justice.gov/usao/districts/flm.html" email:nil];
    [one addNumber:@"Phone: (813)-274-6000"];
    [one addNumber:@"Fax: (813) 274-6358"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Florida" district:@"Southern District" contact:@"Wifredo A. Ferrer" summary:@"Broward, Dade, Highlands, Indian River, Martin, Monroe, Okeechobee, Palm Beach, and St. Lucie" address:@"99 N.E. 4th Street, Miami, Fl. 33132" website:@"http://www.justice.gov/usao/districts/fls.html" email:nil];
    [one addNumber:@"Phone: (305) 961-9001"];
    [one addNumber:@"Fax: (305) 530-7679"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Georgia" district:@"Northern District" contact:@"Sally Quillian Yates" summary:@"Banks, Barrow, Bartow, Carroll, Catoosa, Chattooga, Cherokee, Clayton, Cobb, Coweta, Dade, Dawson, De Kalb, Douglas, Fannin, Fayette, Floyd, Forsyth, Fulton, Gilmer, Gordon, Gwinnett, Habersham, Hall, Haralson, Heard, Henry, Jackson, Lumpkin, Meriwether, Murray, Newton, Paulding, Pickens, Pike, Polk, Rabun, Rockdale, Spalding, Stephens, Towns, Troup, Union, Walker, White, Whitfield" address:@"75 Spring Street, S.W. Suite 600, Atlanta, GA 30303-3309" website:@"http://www.justice.gov/usao/districts/gan.html" email:nil];
    [one addNumber:@"Phone: (404) 581-6000"];
    [one addNumber:@"Fax: (404) 581-6181"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Georgia" district:@"Middle District " contact:@"Lee Bentley" summary:@"Clarke, Elbert, Franklin, Greene, Hart, Madison, Morgan, Oconee, Oglethorpe, Walton. " address:@"400 North Tampa Street Suite 3200, Tampa, Fl. 33602" website:@"http://www.justice.gov/usao/districts/flm.html" email:nil];
    [one addNumber:@"Phone: (813) 274-6000"];
    [one addNumber:@"Fax: (813) 274-6358"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Georgia" district:@"Southern District" contact:@"Edward J. Tarver" summary:@"Appling, Atkinson, Bacon, Brantley, Bryan, Bulloch, Burke, Camden, Candler, Charlton, Chatham, Coffee, Columbia, Dodge, Effingham, Emanuel, Evans, Glascock, Glynn, Jeff Davis, Jefferson, Jenkins, Johnson, Laurens, Liberty, Lincoln, Long, McDuffie, McIntosh, Montgomery, Pierce, Richmond, Screven, Taliaferro, Tattnall, Telfair, Toombs, Treutlen, Ware, Warren, Wayne, Wheeler, Wilkes" address:@"22 Barnard Street, Suite 300 Savannah,  Georgia 31401" website:@"http://www.justice.gov/usao/districts/gas.html" email:nil];
    [one addNumber:@"Phone: (912) 652-4422"];
    [one addNumber:@"Fax: (912) 652-4388"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Hawaii" district:@"District of Hawaii" contact:@"Florence T. Nakakuni" summary:@"Hawaii, Honolulu, Kalawao, Kauai, Maui" address:@"300 Ala Moana Blvd. #6, Honolulu, HI 96850" website:@"http://www.justice.gov/usao/districts/hi.html" email:nil];
    [one addNumber:@"Phone: (808) 541-2850"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Idaho" district:@"District of Idaho" contact:@"Wendy J. Olson" summary:@"Ada, Adams, Bannock, Bear Lake, Benewah, Bingham, Blaine, Boise, Bonner, Bonneville, Boundary, Butte, Camas , Canyon, Caribou, Cassia, Clark, Clearwater, Custer, Elmore, Franklin, Fremont, Gem, Gooding, Idaho, Jefferson, Jerome, Kootenai, Latah, Lemhi, Lewis, Lincoln, Madison, Minidoka, Nez Perce, Oneida, Owyhee, Payette, Power, Shoshone, Teton, Twin Falls, Valley, Washington " address:@"800 Park Blvd., Suite 600, Boise, ID 83712" website:@"http://www.justice.gov/usao/districts/id.html" email:nil];
    [one addNumber:@"Phone: (208) 334-1211"];
    [one addNumber:@"Fax: (208) 334-9375"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Illinois " district:@"Northern District" contact:@"Gary S. Shapiro" summary:@"Cook, Du Page, Grundy, Kane, Kendall, Lake, La Salle, Will, Boone, Carroll, De Kalb, Jo Daviess, Lee, McHenry, Ogle, Stephenson, Whiteside, Winnebago" address:@"219 S. Dearborn St., 5th Floor, Chicago, IL 60604" website:@"http://www.justice.gov/usao/districts/iln.html" email:nil];
    [one addNumber:@"Phone: (312) 353-5300"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Illinois " district:@"Central District" contact:@"Jim Lewis" summary:@"Adams, Brown, Bureau, Cass, Champaign, Christian, Coles, De Witt, Douglas, Edgar, Ford, Fulton, Greene, Hancock, Henderson, Henry, Iroquois, Kankakee, Knox, Livingston, Logan, McDonough, McLean, Macoupin, Macon, Marshall, Mason, Menard, Mercer, Montgomery, Morgan, Moultrie, Peoria, Piatt, Pike, Putnam, Rock Island, Sangamon, Schuyler, Scott, Shelby, Stark, Tazewell, Vermilion, Warren, Woodford. " address:@"201 S. Vine St., Suite 226, Urbana, IL 61802" website:@"http://www.justice.gov/usao/districts/ilc.html" email:nil];
    [one addNumber:@"Phone: (217) 492-4450"];
    [one addNumber:@"Fax: (217) 492-4512"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Illinois " district:@"Southern District" contact:@"Stephen R. Wigginton" summary:@"Alexander, Bond, Calhoun, Clark, Clay, Clinton, Crawford, Cumberland, Edwards, Effingham, Fayette, Franklin, Gallatin, Hamilton, Hardin, Jackson, Jasper, Jefferson, Jersey, Johnson, Lawrence, Madison, Marion, Massac, Monroe, Perry, Pope, Pulaski, Randolph, Richland, St. Clair, Saline, Union, Wabash, Washington, Wayne, White, Williamson" address:@"9 Executive Dr, Fairview Heights,  IL 62208" website:@"http://www.justice.gov/usao/districts/ils.html" email:nil];
    [one addNumber:@"Phone: (618) 628-3700"];
    [one addNumber:@"Fax: (618) 628-3730"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Indiana" district:@"Northern District" contact:@"David Capp" summary:@"Bartholomew, Boone, Brown, Clinton, Decatur, Delaware, Fayette, Fountain, Franklin, Hamilton, Hancock, Hendricks, Henry, Howard, Johnson, Madison, Marion, Monroe, Montgomery, Morgan, Randolph, Rush, Shelby, Tipton, Union, and Wayne, Clay, Greene, Knox, Owen, Parke, Putnam, Sullivan, Vermilion, Vigo Davies, Dubois, Gibson, Martin, Perry, Pike, Posey, Spencer, Vanderburgh, Warrick, Clark, Crawford, Dearborn, Floyd, Harrison, Jackson, Jefferson, Jennings, Lawrence, Ohio, Orange, Ripley, Scott, Switzerland, Washington" address:@"5400 Federal Plaza, Suite 1500 Hammond,  IN 46320" website:@"http://www.justice.gov/usao/districts/inn.html" email:nil];
    [one addNumber:@"Phone: (219) 937-5500"];
    [one addNumber:@"Fax: (219) 852-2770"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Indiana" district:@"Southern District" contact:@"Joseph H. Hogsett" summary:@"Adams, Allen, Blackford, De Kalb, Grant, Huntington, Jay, Lagrange, Noble, Steuben, Wells, Whitley, Cass, Elkhart, Fulton, Kosciusko, La Porte, Marshall, Miami, Pulaski, St. Joseph, Starke, Wabash, Benton, Carroll, Jasper, Lake, Newton, Porter, Tippecanoe, Warren, White" address:@"10 W Market St, Suite 2100, Indianapolis, IN 46204" website:@"http://www.justice.gov/usao/districts/ins.html" email:nil];
    [one addNumber:@"Phone: (317) 226-6333"];
    [one addNumber:@"Fax: (317) 226-6125"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Iowa" district:@"Northern District" contact:@"Sean R. Berry" summary:@"Benton, Cedar, Grundy, Hardin, Iowa, Jones, Linn, Tama, Allamakee, Black Hawk, Bremer, Buchanan, Chickasaw, Clayton, Delaware, Dubuque, Fayette, Floyd, Howard, Jackson, Mitchell, Winneshiek, Buena Vista, Cherokee, Clay, Crawford, Dickinson, Ida, Lyon, Monona, O'Brien, Osceola, Plymouth, Sac, Sioux, Woodbury, Butler, Calhoun, Carroll, Cerro Gordo, Emmet, Franklin, Hamilton, Hancock, Humboldt, Kossuth, Palo Alto, Pocahontas, Webster, Winnebago, Worth, Wright" address:@"111 7th Ave, SE #1, Cedar Rapids, IA 52401" website:@"http://www.justice.gov/usao/districts/ian.html" email:nil];
    [one addNumber:@"Phone: (319) 363-6333"];
    [one addNumber:@"Fax: (319) 363-1990"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Iowa" district:@"Southern District" contact:@"Nicholas A. Klinefeldt" summary:@"Boone, Dallas, Greene, Guthrie, Jasper, Madison, Marion, Marshall, Polk, Poweshiek, Story, Warren, Des Moines, Henry, Lee, Louisa, Van Buren, Audubon, Cass, Fremont, Harrison, Mills, Montgomery, Page, Pottawattamie, Shelby, Adair, Adams, Clarke, Decatur, Lucas, Ringgold, Taylor, Union, Wayne, Clinton, Johnson, Muscatine, Scott, Washington, Appanoose, Davis, Jefferson, Keokuk, Mahaska, Monroe, Wapello" address:@"131 East 4th Street, Suite 310, Davenport, Iowa 52801" website:@"http://www.justice.gov/usao/districts/ias.html" email:nil];
    [one addNumber:@"Phone: (563) 449-5432"];
    [one addNumber:@"Fax: (563) 449-5433"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Kansas" district:@"District of Kansas" contact:@"Barry R. Grissom" summary:@"Allen, Anderson, Atchison, Barber, Barton, Bourbon, Brown, Butler, Chase, Chautauqua, Cherokee, Cheyenne,Clark, Clay, Cloud, Coffey, Comanche, Cowley, Crawford, Decatur, Dickinson, Doniphan, Douglas, Edwards, Elk, Ellis, Ellsworth, Finney, Ford, Franklin, Geary, Gove, Graham, Grant, Gray, Greeley, Greenwood, Hamilton, Harper, Harvey, Haskell, Hodgeman, Jackson, Jefferson, Jewell, Johnson, Kearny, Kingman, Kiowa, Labette, Lane, Leavenworth, Lincoln, Linn, Logan, Lyon, Marion, Marshall, McPherson, Meade, Miami, Mitchell, Montgomery, Morris, Morton, Nemaha, Neosho, Ness, Norton, Osage, Osborne, Ottawa, Pawnee, Phillips, Pottawatomie, Pratt, Harper, Harvey, Haskell, Hodgeman, Jackson, Jefferson, Jewell, Johnson, Kearny, Kingman, Kiowa, Labette, Lane, Leavenworth, Lincoln, Linn, Logan, Lyon, Marion, Marshall, McPherson, Meade, Miami, Mitchell, Montgomery, Morris, Morton, Nemaha, Neosho, Ness, Norton, Osage, Osborne, Ottawa, Pawnee, Phillips, Pottawatomie, Pratt, Rawlins, Reno, Republic, Rice, Riley, Rooks, Rush, Russell, Saline, Scott, Sedgwick, Seward, Shawnee, Sheridan, Sherman, Smith, Stafford, Stanton, Stevens, Sumner, Thomas, Trego, Wabaunsee, Wallace, Washington, Wichita, Wilson, Woodson, Wyandotte, " address:@"500 State Avenue Suite 360, Kansas City, Kansas 66101" website:@"http://www.justice.gov/usao/districts/ks.html" email:nil];
    [one addNumber:@"Phone: (913) 551-6730"];
    [one addNumber:@"Fax: (913) 551-6541"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Kentucky" district:@"Western District" contact:@"David J. Hale" summary:@"Adair, Allen, Ballard, Barren, Breckenridge, Bullitt, Butler, Caldwell, Calloway, Carlisle, Casey, Christian, Clinton, Crittenden, Cumberland, Daviess, Edmonson, Fulton, Graves, Grayson, Green, Hancock, Hardin, Hart, Henderson, Hickman, Hopkins, Jefferson, Larue, Livingston, Logan, Lyon, McCracken, McLean, Marion, Marshall, Meade, Metcalfe, Monroe, Muhlenberg, Nelson, Ohio, Oldham, Russell, Simpson, Spencer, Taylor, Todd, Trigg, Union, Warren, Washington, and Webster" address:@"717 West Broadway, Louisville, KY 40202" website:@"http://www.justice.gov/usao/districts/kyw.html" email:nil];
    [one addNumber:@"Phone: (502) 582-5911"];
    [one addNumber:@"Fax: (502) 582-5097"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Kentucky" district:@"Eastern District" contact:@"Kerry B. Harvey" summary:@"Anderson, Bath, Bell, Boone, Bourbon, Boyd, Boyle, Bracken, Breathitt, Campbell, Carroll, Carter, Clark, Clay, Elliott, Estill, Fayette, Fleming, Floyd, Franklin, Gallatin, Garrard, Grant, Greenup, Harlan, Harrison, Henry, Jackson, Jessamine, Johnson, Kenton, Knott, Knox, Laurel, Lawrence, Lee, Leslie, Letcher, Lewis, Lincoln, McCreary, Madison, Magoffin, Martin, Mason, Menifee, Mercer, Montgomery, Morgan, Nicholas, Owen, Owsley, Pendleton, Perry, Pike, Powell, Pulaski, Robertson, Rockcastle, Rowan, Scott, Shelby, Trimble, Wayne, Whitley, Wolfe, Woodford" address:@"260 W. Vine Street, Ste. 300, Lexington, KY 40507-1612" website:@"http://www.justice.gov/usao/districts/kye.html" email:nil];
    [one addNumber:@"Phone: (859) 233-2661"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Louisiana " district:@"Western District" contact:@"Stephanie A. Finley" summary:@"Assumption, Jefferson, Lafourche, Orleans, Plaquemines, St. Bernard, St. Charles, St. James,  St. John the Baptist, St. Tammany, Tangipahoa, Terrebonne, Washington" address:@"300 Fannin Street, Suite 3201, Shreveport, LA 71101-3068" website:@"http://www.justice.gov/usao/districts/law.html" email:nil];
    [one addNumber:@"Phone: (318) 676-3600"];
    [one addNumber:@"Fax: (318) 676-3641"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Louisiana " district:@"Middle District " contact:@"Walt Green" summary:@"Ascension, East Baton Rouge, East Feliciana, Iberville, Livingston, Pointe Coupee, Saint Helena, West Baton Rouge, West Feliciana" address:@"777 Florida Street, Suite 208, Baton Rouge, LA 70801" website:@"http://www.justice.gov/usao/districts/lam.html" email:nil];
    [one addNumber:@"Phone: (225) 389-0443"];
    [one addNumber:@"Fax: (225) 389-0561"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Louisiana " district:@"Eastern District" contact:@"Dana Boente" summary:@"Acadia, Allen, Avoyelles, Beauregard, Bienville, Bossier, Caddo, Calcasieu, Caldwell, Cameron, Catahoula, Claiborne, Concordia, Jefferson Davis, De Soto, East Carroll, Evangeline, Franklin, Grant, Iberia, Jackson, Lafayette, La Salle, Lincoln, Madison, Morehouse, Natchitoches, Ouachita, Rapides, Red River, Richland, Sabine, Saint Landry, Saint Martin, Saint Mary, Tensas, Union, Vermilion, Vernon, Webster, West Carroll, Winn" address:@"650 Poydras Street, Suite 1600 New Orleans,  Louisiana 70130" website:@"http://www.justice.gov/usao/districts/lae.html" email:nil];
    [one addNumber:@"Phone: (504) 680-3000"];
    [one addNumber:@"Fax: (504) 589-4510"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Maine" district:@"District of Maine" contact:@"Thomas E. Delahanty II" summary:@"Penobscot, Piscataquis, Sagadahoc, Somerset, Waldo, Washington, York " address:@"100 Middle Street East Tower, 6th Floor, Portland, ME 04101" website:@"http://www.justice.gov/usao/districts/me.html" email:nil];
    [one addNumber:@"Phone: (207) 780-3257"];
    [one addNumber:@"Fax: (207) 780-3304"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Maryland" district:@"District of Maryland" contact:@"Rod J. Rosenstein" summary:@"Howard, Kent, Montgomery, Prince George's, Queen Anne's, Saint Mary's, Somerset, Talbot, Washington, Wicomico, Worcester " address:@"36 S. Charles Street, 4th Floor, Baltimore, MD 21201" website:@"http://www.justice.gov/usao/districts/md.html" email:nil];
    [one addNumber:@"Phone: (410) 209-4800"];
    [one addNumber:@"Fax: (410) 962-0122"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Massachusetts" district:@"District of Massachusetts" contact:@"Carmen M. Ortiz" summary:@"Barnstable, Berkshire, Bristol, Dukes, Essex, Franklin, Hampden, Hampshire, Middlesex, Nantucket, Norfolk, Plymouth, Suffolk, Worcester        " address:@"1 Courthouse Way, Suite 9200, Boston, MA 02210" website:@"http://www.justice.gov/usao/districts/ma.html" email:nil];
    [one addNumber:@"Phone: (617) 748-3100"];
    [one addNumber:@"Fax: (617) 748-3974"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Michigan" district:@"Western District" contact:@"Patrick Miles, Jr." summary:@"Alcona, Alpena, Arenac, Bay, Cheboygan, Clare, Crawford, Genesee, Gladwin, Gratiot, Huron, Iosco, Isabella, Jackson, Lapeer, Lenawee, Livingston, Macomb, Midland, Monroe, Montmorency, Oakland, Ogemaw, Oscoda, Otsego, Presque Isle, Roscommon, Saginaw, Saint Clair, Sanilac, Shiawassee, Tuscola, Washtenaw, Wayne," address:@"330 Ionia Avenue, N.W. Suite 501, Grand Rapids, MI 49503" website:@"http://www.justice.gov/usao/districts/miw.html" email:nil];
    [one addNumber:@"Phone: (616) 456-2404"];
    [one addNumber:@"Fax: (616) 456-2408"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Michigan" district:@"Eastern District" contact:@"Barbara L. McQuade" summary:@"Alger, Allegan, Antrim, Baraga, Barry, Benzie, Berrien, Branch, Calhoun, Cass, Charlevoix, Chippewa, Clinton, Delta, Dickinson, Eaton, Emmet, Gogebic, Grand Traverse, Hillsdale, Houghton, Ingham, Ionia, Iron, Kalamazoo, Kalkaska, Kent, Keweenaw, Lake, Leelanau, Luce, Mackinac, Manistee, Marquette, Mason, Mecosta, Menominee, Missaukee, Montcalm, Muskegon, Newaygo, Oceana, Ontonagon, Osceola, Ottawa, Saint Joseph, Schoolcraft, Van Buren, Wexford" address:@"211 W. Fort Street, Suite 2001 Detroit, MI 48226" website:@"http://www.justice.gov/usao/districts/mie.html" email:nil];
    [one addNumber:@"Phone: (313) 226-9100"];
    [one addNumber:@"Fax: (313) 226-2311"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Minnesota" district:@"District of Minnesota" contact:@"B. Todd Jones" summary:@"Chisago, Dakota, Dodge, Fillmore, Goodhue, Houston, Mower, Olmsted, Ramsey, Rice, Scott, Steele, Wabasha, Washington, Winona,Anoka, Blue Earth, Brown, Carver, Chippewa, Cottonwood, Faribault, Freeborn, Hennepin, Isanti, Jackson, Kandiyohi, Lac Qui Parle, LeSueur, Lincoln, Lyon, Martin, McLeod, Meeker, Murray, Nicollet, Nobles, Pipestone, Redwood, Renville, Rock, Sherburne, Sibley, Swift, Waseca, Watonwan, Wright, Yellow Medicine, Aitkin, Benton, Carlton, Cass, Cook, Crow Wing, Itasca, Kanabec, Koochiching, Lake, Mille Lacs, Morrison, Pine, St. Louis, Becker, Beltrami, Big Stone, Clay, Clearwater, Douglas, Grant, Hubbard, Kittson, Lake of the Woods, Mahnomen, Marshall, Norman, Otter Tail, Pennington, Polk, Pope, Red Lake, Roseau, Stearns, Stevens, Todd, Traverse, Wadena, Wilkin" address:@"300 S 4th Street Suite 600, Minneapolis, MN 55415" website:@"http://www.justice.gov/usao/districts/mn.html" email:nil];
    [one addNumber:@"Phone: (612) 664-5600"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Mississipi" district:@"Northern District" contact:@"Felicia C. Adams" summary:@"Alcorn, Attala, Benton, Bolivar, Calhoun, Carroll, Chickasaw, Choctaw, Clay, Coahoma, De Soto, Grenada, Humphreys, Itawamba, Lafayette, Lee, Leflore, Lowndes, Marshall, Monroe, Montgomery, Oktibbeha, Panola, Pontotoc, Prentiss, Quitman, Sunflower, Tallahatchie, Tate, Tippah, Tishomingo, Tunica, Union, Washington, Webster, Winston, Yalobusha " address:@"900 Jefferson Ave., Oxford, MS 38655" website:@"http://www.justice.gov/usao/districts/msn.html" email:nil];
    [one addNumber:@"Phone: 662-234-3351"];
    [one addNumber:@"Fax: 662-234-4818"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Mississipi" district:@"Southern District" contact:@"Gregory K. Davis" summary:@" Adams, Amite, Claiborne, Clarke, Copiah, Covington, Forrest, Franklin, George, Greene, Hancock, Harrison, Hinds, Holmes, Issaquena, Jackson, Jasper, Jefferson, Jefferson Davis, Jones, Kemper, Lamar, Lauderdale, Lawrence, Leake, Lincoln, Madison, Marion, Neshoba, Newton, Noxubee, Pearl River, Perry, Pike, Rankin, Scott, Sharkey, Simpson, Smith, Stone, Walthall, Warren, Wayne, Wilkinson and Yazoo" address:@"501 East Court Street #4, Jackson, Mississippi 39201" website:@"http://www.justice.gov/usao/districts/mss.html" email:nil];
    [one addNumber:@"Phone: (601) 965-4480"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Missouri" district:@"Western District" contact:@"Tammy Dickinson" summary:@"Bates, Carroll, Cass, Clay, Henry, Jackson, Johnson, Lafayette, Ray, Saint Clair, Saline, Barton, Barry, Jasper, Lawrence, McDonald, Newton, Stone, Vernon, Andrew, Atchison, Buchanan, Caldwell, Clinton, Daviess, De Kalb, Gentry, Grundy, Harrison, Holt, Livingston, Mercer, Nodaway, Platte, Putnam, Sullivan, Worth, Benton, Boone, Callaway, Camden, Cole, Cooper, Hickory, Howard, Miller, Moniteau, Morgan, Osage Pettis, Cedar, Christian, Dade, Dallas, Douglas, Greene, Howell, Laclede, Oregon, Ozark, Polk, Pulaski, Taney, Texas, Webster, Wright" address:@"400 East 9th Street #5510, Kansas City, MO 64106" website:@"http://www.justice.gov/usao/districts/mow.html" email:nil];
    [one addNumber:@"Phone: (816) 426-3122"];
    [one addNumber:@"Fax: (816) 426-4210"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Missouri" district:@"Eastern District" contact:@"Richard Callahan" summary:@"Crawford, Dent, Franklin, Gasconade, Iron, Jefferson, Lincoln, Maries, Phelps, Saint Charles, Saint Francois, Saint Genevieve, Saint Louis, Warren, Washington, The City of Saint Louis, Adair, Audrain, Chariton, Clark, Knox, Lewis, Linn, Macon, Marion, Monroe, Montgomery, Pike, Ralls, Randolph, Schuyler, Scotland, Shelby, Bollinger, Butler, Cape Girardeau, Carter, Dunklin, Madison, Mississippi, New Madrid, Pemiscot, Perry, Reynolds, Ripley, Scott, Shannon, Stoddard, Wayne" address:@"111 S. 10th Street, 20th Floor, St. Louis, MO 63102" website:@"http://www.justice.gov/usao/districts/moe.html" email:nil];
    [one addNumber:@"Phone: (314) 539-2200"];
    [one addNumber:@"Fax: (314) 539-2309"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Montana" district:@"District of Montana" contact:@"Michael W. Cotter" summary:@"Beaverhead, Big Horn, Blaine, Broadwater, Carbon, Carter, Cascade, Chouteau, Custer, Daniels, Dawson, Deer Lodge, Fallon, Fergus, Flathead, Gallatin, Garfield, Glacier, Golden Valley, Granite, Hill, Jefferson, Judith Basin, Lake, Lewis and Clark, Liberty, Lincoln, McCone        Madison, Meagher, Mineral, Missoula, Musselshell, Park, Petroleum, Phillips, Pondera, Powder River, Powell, Prairie, Ravalli, Richland, Roosevelt, Rosebud, Sanders, Sheridan, Silver Bow, Stillwater, Sweet Grass, Teton, Toole, Treasure, Valley, Wheatland, Wibaux, Yellowstone " address:@"111 S. 10th Street, 20th Floor, St. Louis, MO 63102" website:@"http://www.justice.gov/usao/districts/moe.html" email:nil];
    [one addNumber:@"Phone: (314) 539-2200"];
    [one addNumber:@"Fax: (314) 539-2309"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Nebraska" district:@"District of Nebraska" contact:@"Deborah R. Gilg" summary:@"Adams, Antelope, Arthur, Banner, Blaine, Boone, Box Butte, Boyd, Brown, Buffalo, Burt, Butler, Cass, Cedar, Chase, Cherry, Cheyenne, Clay, Colfax, Cuming, Custer, Dakota, Dawes, Dawson, Deuel, Dixon, Dodge, Douglas, Dundy, Fillmore, Franklin, Frontier, Furnas, Gage, Garden, Garfield, Gosper, Grant, Greeley, Hall, Hamilton, Harlan, Hayes, Hitchcock, Holt, Hooker, Howard, Jefferson, Johnson, Kearney, Keith, Keya Paha, Kimball, Knox, Lancaster, Lincoln, Logan, Loup, Madison, McPherson, Merrick, Morrill, Nance, Nemaha, Nuckolls, Otoe, Pawnee, Perkins, Phelps, Pierce, Platte, Polk, Red Willow, Richardson, Rock, Saline, Sarpy, Saunders, Scotts Bluff, Seward, Sheridan, Sherman, Sioux, Stanton, Thayer, Thomas, Thurston, Valley, Washington, Wayne, Webster, Wheeler, York" address:@"1620 Dodge St, Suite 1400, Omaha, NE 68102" website:@"http://www.justice.gov/usao/districts/ne.html" email:nil];
    [one addNumber:@"Phone: (402) 661-3700"];
    [one addNumber:@"Fax: (402) 345-6958"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Nevada" district:@"District of Nevada" contact:@"Daniel G. Bogden" summary:@"Carson City, Churchill, Clark, Douglas, Elko, Esmeralda, Eureka, Humboldt, Lander, Lincoln, Lyon, Mineral, Nye, Pershing, Storey, Washoe, White Pine, " address:@"333 Las Vegas Boulevard South Suite 5000, Las Vegas, NV 89101" website:@"http://www.justice.gov/usao/districts/nv.html" email:nil];
    [one addNumber:@"Phone: (702) 388-6336"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"New Hampshire" district:@"District of New Hampshire" contact:@"John P. Kacavas" summary:@"Belknap, Carroll, Cheshire, Coos, Grafton, Hillsborough, Merrimack, Rockingham, Strafford, Sullivan  " address:@"53 Pleasant Street, 4th Floor, Concord, NH 03301 " website:@"http://www.justice.gov/usao/districts/nh.html" email:nil];
    [one addNumber:@"Phone: (603) 225-1552"];
    [one addNumber:@"Fax: (603) 225-1470"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"New Jersey" district:@"District of New Jersey" contact:@"Paul J. Fishman" summary:@"Atlantic, Bergen, Burlington, Camden, Cape May, Cumberland, Essex, Gloucester, Hudson, Hunterdon, Mercer, Middlesex, Monmouth, Morris, Ocean, Passaic, Salem, Somerset, Sussex, Union, Warren" address:@"970 Broad Street, 7th Floor Newark,   NJ 07102" website:@"http://www.justice.gov/usao/districts/nj.html" email:nil];
    [one addNumber:@"Phone: (973) 645-2700"];
    [one addNumber:@"Fax: 973-645-2702"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"New Mexico" district:@"District of New Mexico" contact:@"Kenneth J. Gonzales" summary:@"Bernalillo,  Catron, Chaves, Cibola, Colfax, Curry, DeBaca, Dona Ana, Eddy, Grant, Guadalupe, Harding, Hidalgo, Lea, Lincoln, Los Alamos, Luna, McKinley, Mora, Otero, Quay, Rio Arriba, Roosevelt, Sandoval, San Juan, San Miguel, Santa Fe,Sierra, Socorro, Taos, Torrance, Union, Valencia " address:@"P.O. Box 607 Albuquerque,  New Mexico 87102" website:@"http://www.justice.gov/usao/districts/nm.html" email:nil];
    [one addNumber:@"Phone: (505) 346-7274"];
    [one addNumber:@"Fax: (505) 346-7296"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"New York" district:@"Northern District" contact:@"Richard S. Hartunian" summary:@"Albany, Broome, Cayuga, Chenango, Clinton, Columbia, Cortland, Delaware, Essex, Franklin, Fulton, Greene, Hamilton, Herkimer, Jefferson, Lewis, Madison, Montgomery, Oneida, Onondaga, Oswego, Otsego, Rensselaer, Saint Lawrence, Saratoga, Schenectady, Schoharie, Tioga, Tompkins, Ulster, Warren and Washington" address:@"445 Broadway, #218 Albany,  NY 12207-2924" website:@"http://www.justice.gov/usao/districts/nyn.html" email:nil];
    [one addNumber:@"Phone: (518) 431-0247"];
    [one addNumber:@"Fax: (518) 431-0249"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"New York" district:@"Eastern District" contact:@"Loretta E. Lynch" summary:@"Kings, Nassau, Queens, Richmond, and Suffolk and concurrently with the Southern District, the waters within the counties of Bronx and New York" address:@"271 Cadman Plaza East, Brooklyn, NY 11201" website:@"http://www.justice.gov/usao/districts/nye.html" email:nil];
    [one addNumber:@"Phone: (718) 254-7000"];
    [one addNumber:@"Fax: (718) 254-6479"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"New York" district:@"Southern District" contact:@"Preet Bharara" summary:@"Bronx, Dutchess, New York, Orange, Putnam, Rockland, Sullivan, Westchester" address:@"1 Centre Street, St Andrews Plaza, New York, NY 10007" website:@"http://www.justice.gov/usao/districts/nys.html" email:nil];
    [one addNumber:@"Phone: (212)637-2200"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"New York" district:@"Western District" contact:@"William J. Hochul, Jr." summary:@"Allegany, Cattaraugus, Chautauqua, Chemung, Erie, Genesee, Livingston, Monroe, Niagara, Ontario, Orleans, Schuyler, Seneca, Steuben, Wayne, Wyoming, Yates" address:@"138 Delaware Ave., Buffalo, NY 14202" website:@"http://www.justice.gov/usao/districts/nyw.html" email:nil];
    [one addNumber:@"Phone: (716) 843-5700"];
    [one addNumber:@"Fax: (716)551-3052"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"North Carolina" district:@"Western District" contact:@"Anne M. Tompkins" summary:@"Alexander, Alleghany, Anson, Ashe, Avery, Buncombe, Burke, Caldwell, Catawba, Cherokee, Clay, Cleveland, Gaston, Graham, Haywood, Henderson, Iredell, Jackson, Lincoln, McDowell, Macon, Madison, Mecklenburg, Mitchell, Polk, Rutherford, Swain, Transylvania, Union, Watauga, Wilkes, Yancey" address:@"227 West Trade Street, Suite 1650, Charlotte, NC 28202" website:@"http://www.justice.gov/usao/districts/ncw.html" email:nil];
    [one addNumber:@"Phone: (704) 344-6222"];
    [one addNumber:@"Fax: (704) 344-6629"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"North Carolina" district:@"Eastern District" contact:@"Thomas G. Walker" summary:@"Beaufort, Bertie, Bladen, Brunswick, Camden, Carteret, Chowan, Columbus, Craven, Cumberland, Currituck, Dare, Duplin, Edgecombe, Franklin, Gates, Granville, Greene, Halifax, Harnett, Hertford, Hyde, Johnston, Jones, Lenoir, Martin, Nash, New Hanover, Northampton, Onslow, Pamlico, Pasquotank, Pender, Perquimans, Pitt, Robeson, Sampson, Tyrrell, Vance, Wake, Warren, Washington, Wayne, Wilson " address:@"310 New Bern Avenue Federal Building Suite 800, Raleigh, NC 27601-1461" website:@"http://www.justice.gov/usao/districts/nce.html" email:nil];
    [one addNumber:@"Phone: (919) 856-4530"];
    [one addNumber:@"Fax: (919) 856-4487"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"North Carolina" district:@"Middle District " contact:@"Ripley Rand" summary:@"Alamance, Cabarrus, Caswell, Chatham, Davidson, Davie, Durham,  Forsythe, Guilford, Hoke, Lee, Montgomery, Moore, Orange, Person, Randolph, Richmond, Rockingham, Rowan, Scotland, Stanly, Stokes, Surry, Yadkin" address:@"101 South Edgeworth Street, 4th Floor, Greensboro, NC 27401" website:@"http://www.justice.gov/usao/districts/ncm.html" email:nil];
    [one addNumber:@"Phone: (336) 333-5351"];
    [one addNumber:@"Fax: (336) 333-5438"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"North Dakota" district:@"District of North Dakota" contact:@"Timothy Q. Purdon" summary:@"Adams, Barnes, Benson, Billings, Bottineau, Bowman, Burke, Burleigh,  Cass, Cavalier, Dickey, Divide, Dunn, Eddy, Emmons, Foster,  Golden Valley, Grand Forks, Grant, Griggs, Hettinger, Kidder, LaMoure, Logan,  McHenry, McIntosh, McKenzie, McLean, Mercer, Morton, Mountrail, Nelson,  Oliver, Pembina, Pierce, Ramsey, Ransom, Renville, Richland, Rolette,  Sargent, Sheridan, Sioux, Slope, Stark, Steele, Stutsman, Towner,  Traill, Walsh, Ward, Wells, Williams" address:@"655 First Ave. North Suite 250, Fargo, ND 58102-4932" website:@"http://www.justice.gov/usao/districts/nd.html" email:nil];
    [one addNumber:@"Phone: (701) 297-7400"];
    [one addNumber:@"Fax: (701) 297-7405"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Ohio" district:@"Nothern District" contact:@"Steven M. Dettelbach" summary:@"Allen, Ashland, Ashtabula, Auglaize, Carroll, Columbiana, Crawford, Cuyahoga, Defiance, Erie, Fulton, Geauga, Hancock, Hardin, Henry, Holmes, Huron, Lake, Lorain, Lucas, Mahoning, Marion, Medina, Mercer, Ottawa, Paulding, Portage,  Putnam, Richland, Sandusky, Seneca, Stark, Summit, Trumbull, Tuscarawas, Van Wert, Williams, Woods, Wayne, Wyandot" address:@"801 West Superior Avenue, Suite 400, Cleveland, OH 44113-1852" website:@"http://www.justice.gov/usao/districts/ohn.html" email:nil];
    [one addNumber:@"Phone: (216) 622-3600"];
    [one addNumber:@"Fax: (216) 522-3370"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Ohio" district:@"Southern District" contact:@"Carter M. Stewart" summary:@"Adams, Athens, Belmont, Brown, Butler, Champaign, Clark, Clermont, Clinton, Coshocton, Darke, Delaware, Fairfield, Fayette, Franklin, Gallia, Greene, Guernsey, Hamilton, Harrison, Highland, Hocking, Jackson, Jefferson, Knox, Lawrence, Licking, Logan, Madison, Meigs, Miami, Monroe, Montgomery, Morgan, Morrow, Muskingum, Noble, Perry, Pickaway, Pike, Preble, Ross, Scioto, Shelby, Union, Vinton, Warren, Washington" address:@"303 Marconi Boulevard, Suite 200, Columbus, OH 43215" website:@"http://www.justice.gov/usao/districts/ohs.html" email:nil];
    [one addNumber:@"Phone: (614) 469-5715"];
    [one addNumber:@"Fax: (614) 469-2200"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Oklahoma " district:@"Western District" contact:@"Sanford C. Coats" summary:@"Alfalfa, Beaver, Beckham, Blaine, Caddo, Canadian, Cimarron, Cleveland, Comanche, Cotton, Custer, Dewey, Ellis, Garfield, Garvin, Grady, Grant, Greer, Harmon, Harper, Jackson, Jefferson, Kay, Kingfisher, Kiowa, Lincoln, Logan, McClain, Major, Noble, Oklahoma, Payne, Pottawatomie, Roger Mills, Stephens, Texas, Tillman, Washita, Woods, Woodward" address:@"210 West Park Avenue, Suite 400 Oklahoma City, OK 73102" website:@"http://www.justice.gov/usao/districts/okw.html" email:nil];
    [one addNumber:@"Phone: (405) 553-8700"];
    [one addNumber:@"Fax: (405) 553-8888"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Oklahoma " district:@"Northern District" contact:@"Danny C. Williams, Sr." summary:@"Craig, Creek, Delaware, Mayes, Nowata, Osage, Ottawa, Pawnee, Rogers, Tulsa,Washington" address:@"110 West 7th Street, Suite 300, Tulsa, OK 74119" website:@"http://www.justice.gov/usao/districts/okn.html" email:nil];
    [one addNumber:@"Phone: (918) 382-2700"];
    [one addNumber:@"Fax: (918)560-7938"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Oklahoma " district:@"Eastern District" contact:@"Mark F. Green" summary:@"Adair, Atoka, Bryan, Carter, Cherokee, Choctaw, Coal, Haskell, Hughes, Johnston, Latimer, Le Flore Love, McCurtain, McIntosh, Marshall, Murray, Muskogee, Okfuskee, Okmulgee, Pittsburg, Pontotoc, Pushmataha, Seminole, Sequoyah, and Wagoner" address:@"1200 West Okmulgee, Muskogee, OK 74401" website:@"http://www.justice.gov/usao/districts/oke.html" email:nil];
    [one addNumber:@"Phone: (918)684-5100"];
    [one addNumber:@"Fax: (918) 684-5130"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Oregon" district:@"District of Oregon" contact:@"Amanda Marshall" summary:@"Baker, Benton, Clackamas, Clatsop, Columbia, Coos, Crook, Curry, Deschutes, Douglas, Gilliam, Grant, Harney, Hood River, Jackson, Jefferson, Josephine, Klamath, Lake, Lane, Lincoln, Linn, Malheur, Marion, Morrow, Multnomah, Polk, Sherman, Tillamook, Umatilla, Union, Wallowa, Wasco, Washington, Wheeler, Yamhill" address:@"1000 SW Third Ave Suite 600, Portland, Oregon 97204" website:@"http://www.justice.gov/usao/districts/or.html" email:nil];
    [one addNumber:@"Phone: (503) 727-1000"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Pennsylvania" district:@"Western District" contact:@"David J. Hickton" summary:@"Allegheny, Armstrong, Beaver, Bedford, Blair, Butler, Cambria, Clarion, Clearfield, Crawford, Elk, Erie, Fayette, Forest, Greene, Indiana, Jefferson, Lawrence, McKean, Mercer, Somerset, Venango, Warren, Washington, Westmoreland" address:@"700 Grant Street, Suite 4000, Pittsburgh, PA 15219" website:@"http://www.justice.gov/usao/districts/paw.html" email:nil];
    [one addNumber:@"Phone: (412) 644-3500"];
    [one addNumber:@"Fax: (412) 644-4549"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Pennsylvania" district:@"Eastern District" contact:@"Zane David Memeger" summary:@"Berks, Bucks, Chester, Delaware, Lancaster, Lehigh, Montgomery, Northampton and Philadelphia" address:@"615 Chestnut Street, Suite 1250, Philadelphia, PA 19106" website:@"http://www.justice.gov/usao/districts/pae.html" email:nil];
    [one addNumber:@"Phone: (215) 861-8200"];
    [one addNumber:@"Fax: (215)861-8618"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Pennsylvania" district:@"Middle District " contact:@"Peter J. Smith" summary:@"Adams, Bradford, Cameron, Carbon, Centre, Clinton, Columbia, Cumberland, Dauphin, Franklin, Fulton, Huntingdon, Juniata, Lackawanna, Lebanon, Luzerne, Lycoming, Mifflin, Monroe, Montour, Northumberland, Perry, Pike, Potter, Schuylkill, Snyder, Sullivan, Susquehanna, Tioga, Union, Wayne, Wyoming and York" address:@"228 Walnut Street, Suite 220, Harrisburg, PA 17108-1754" website:@"http://www.justice.gov/usao/districts/pam.html" email:nil];
    [one addNumber:@"Phone: (717) 221-4482"];
    [one addNumber:@"Fax: (717) 221-4582"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Rhode Island" district:@"District of Rhode Island" contact:@"Peter F. Neronha" summary:@"Bristol, Kent , Newport ,Providence, Washington " address:@"50 Kennedy Plaza 8th Floor, Providence, RI 02903" website:@"http://www.justice.gov/usao/districts/ri.html" email:nil];
    [one addNumber:@"Phone: (401) 709-5000"];
    [one addNumber:@"Fax: (401) 709-5001"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"South Carolina" district:@"District of South Carolina" contact:@"Bill Nettles" summary:@"Abbeville , Aiken , Allendale , Anderson , Bamberg , Barnwell , Beaufort , Berkeley , Calhoun , Charleston , Cherokee , Chester, Chesterfield , Clarendon , Colleton , Darlington , Dillon , Dorchester, Edgefield, Fairfield, Florence, Georgetown, Greenville, Greenwood, Hampton, Horry, Jasper, Kershaw, Lancaster, Laurens, Lee, Lexington, Marion, Marlboro, McCormick, Newberry, Oconee, Orangeburg, Pickens, Richland, Saluda, Spartanburg, Sumter, Union, Williamsburg, York  " address:@"1441 Main Street, Suite 500, Columbia, SC 29201" website:@"http://www.justice.gov/usao/districts/sc.html" email:nil];
    [one addNumber:@"Phone: (803) 929-3000"];
    [one addNumber:@"Fax: (803) 254-2912"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"South Dakota" district:@"District of South Dakota" contact:@"Brendan Johnson" summary:@"Aurora, Beadle, Bennett, Bon Homme, Brookings, Brown, Brule, Buffalo, Butte, Campbell, Charles Mix, Clark, Clay, Codington, Corson, Custer, Davison Day, Deuel, Dewey, Douglas, Edmunds, Fall River, Faulk, Grant, Gregory, Haakon, Hamlin, Hand, Hanson, Harding, Hughes, Hutchinson, Hyde, Jackson Jerauld, Jones, Kingsbury, Lake, Lawrence, Lincoln, Lyman, Marshall, McCook , McPherson, Meade, Mellette, Miner, Minnehaha, Moody, Pennington, Perkinsm, Potter, Roberts, Sanborn, Shannon, Spink, Stanley, Sully, Todd, Tripp, Turner, Union, Walworth, Yankton, Ziebach  " address:@"P.O. Box 2638, Sioux Falls, SD 57101-2638" website:@"http://www.justice.gov/usao/districts/sd.html" email:nil];
    [one addNumber:@"Phone: (605)330-4400"];
    [one addNumber:@"Fax: (605) 330-4410"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Tennesee" district:@"Western District" contact:@"Edward L. Stanton III" summary:@"Benton, Carroll, Chester, Crockett, Decatur, Dyer, Fayette, Gibson, Hardeman, Hardin, Haywood, Henderson, Henry, Lake, Lauderdale, Madison, McNairy, Obion, Perry, Shelby, Tipton and Weakley" address:@"167 N Main St, #800, Memphis, TN 38103" website:@"http://www.justice.gov/usao/districts/tnw.html" email:nil];
    [one addNumber:@"Phone: (901) 544-4231"];
    [one addNumber:@"Fax: (901) 544-4230"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Tennesee" district:@"Middle District " contact:@"David Rivera" summary:@"Cannon, Cheatham, Clay, Cumberland, Davidson, De Kalb, Dickson, Fentress, Jackson, Giles, Hickman, Houston, Humphreys, Lawrence, Lewis, Marshall, Maury, Macon, Montgomery, Overton, Pickett, Putnam, Robertson, Rutherford, Smith, Stewart, Sumner, Trousdale, Wayne, Williamson, Wilson, White" address:@"110 9th Ave S a961 Nashville, TN 37203" website:@"http://www.justice.gov/usao/districts/tnm.html" email:nil];
    [one addNumber:@"Phone: (615) 736-5151"];
    [one addNumber:@"Fax: (615) 401-6626"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Tennesee" district:@"Eastern District" contact:@"William C. 'Bill' Killian" summary:@"Anderson, Bedford, Bledsoe, Blount, Bradley, Campbell, Carter, Claiborne, Cocke, Coffee, Franklin, Grainger, Greene, Grundy, Hamblen, Hamilton, Hancock, Hawkins, Jefferson, Johnson, Knox, Lincoln, Loudon, Marion, McMinn, Meigs, Monroe, Moore, Morgan, Polk, Rhea, Roane, Scott, Sequatchie, Sevier, Sullivan, Unicoi, Union, Van Buren, Warren and Washington" address:@"800 Market Street, Suite 211, Knoxville, TN 37902" website:@"http://www.justice.gov/usao/districts/tne.html" email:nil];
    [one addNumber:@"Phone: (865) 545-4167"];
    [one addNumber:@"Fax: (865) 545-4176"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Texas" district:@"Northern District" contact:@"Sarah R. SaldaÒa" summary:@"Archer, Armstrong,  Bailey, Baylor, Borden, Brisco, Brown, Callahan, Carson, Castro, Childress, Clay, Cochran, Coke, Coleman, Collingsworth, Comanche, Concho, Cottle, Crockett, Crosby, Dallam, Dallas, Dawson, Deaf Smith, Dickens, Donley, Eastland, Ellis, Erath, Fisher, Floyd, Foard, Gaines, Garza, Glasscock, Gray, Hale, Hall, Hansford, Hardeman, Hartley, Haskell, Hemphill, Hockley, Hood, Howard, Hunt, Hutchinson, Irion, Jack, Johnson, Jones, Kaufman, Kent, King, Knox, Lamb, Lipscomb, Lubbock, Lynn, Menard, Mills, Mitchell, Montague, Moore, Motley, Navarro, Nolan, Ochiltree, Oldham, Palo Pinto, Parker, Parmer, Potter, Randall, Reagan, Roberts, Rockwall, Runnels, Schleicher, Scurry, Shackleford, Sherman, Stephens, Sterling, Stonewall, Sutton, Swisher, Tarrant, Taylor, Terry, Throckmorton, Tom Green, Wheeler, Wichita, Wilbarger, Wise, Yoakum and Young" address:@"1100 Commerce Street, Dallas, TX 75242-1699" website:@"http://www.justice.gov/usao/districts/txn.html" email:nil];
    [one addNumber:@"Phone: (214) 659-8600"];
    [one addNumber:@"Fax: (214) 659-8806"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Texas" district:@"Southern District" contact:@"Kenneth Magidson" summary:@"Aransas, Austin, Bee, Brazoria, Brazos, Brooks, Calhoun, Cameron, Chambers, Colorado, De Witt, Duval, Fayette, Fort Bend, Galveston, Goliad, Grimes, Harris, Hidalgo, Jackson, Jim Hogg, Jim Wells, Kenedy, Kleberg, La Salle, Lavaca, Live Oak, Madison, Matagorda, McMullen, Montgomery, Nueces, Refugio, San Jacinto, San Patricio, Starr, Victoria, Walker, Waller, Webb, Wharton, Willacy, Zapata" address:@"1000 Louisiana Street, Ste 2300, Houston, TX 77002" website:@"http://www.justice.gov/usao/districts/txs.html" email:nil];
    [one addNumber:@"Phone: (713) 567-9000"];
    [one addNumber:@"Fax: (713) 718-3300"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Texas" district:@"Western District" contact:@"Robert Pitman" summary:@"Andrews, Atascosa, Bandera, Bastrop, Bell, Bexar, Blanco, Bosque, Brewster, Burleson, Burnet, Caldwell, Comal, Coryell, Crane, Culberson, Dimmit, Ector, Edwards, El Paso, Falls, Freestone, Frio, Gillespie, Gonzales, Guadalupe, Hamilton, Hays, Hill, Hudspeth, Jeff Davis, Karnes, Kendall, Kerr, Kimble, Kinney, Lampasas, Lee, Leon, Limestone, Llano, Loving, Martin, Mason, Maverick, McCulloch, McLennan, Medina, Midland, Milam, Pecos, Presidio, Real, Reeves, Robertson, San Saba, Somervell, Terrell, Travis, Upton, Uvalde, Val Verde, Ward, Washington, Williamson, Wilson, Winkler, Zavalla" address:@"601 NW Loop 410 #600 San Antonio, TX 78216" website:@"http://www.justice.gov/usao/districts/txw.html" email:nil];
    [one addNumber:@"Phone: (210) 384-7100"];
    [one addNumber:@"Fax: (210) 384-7105"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Texas" district:@"Eastern District" contact:@"John Malcolm Bales" summary:@"Anderson, Angelina, Bowie, Camp, Cass, Cherokee, Collin, Cook, Delta, Denton, Fannin, Franklin, Grayson, Gregg, Hardin, Harrison, Henderson, Hopkins, Houston, Jasper, Jefferson, Lamar, Liberty, Marion, Morris, Nacogdoches, Newton, Orange, Panola, Polk, Rains, Red River, Rusk, Sabine, San Augustine, Shelby, Smith, Titus, Trinity, Tyler, Upshur, Van Zandt, Wood" address:@"350 Magnolia Avenue, Suite 150, Beaumont, TX 77701-2237" website:@"http://www.justice.gov/usao/districts/txe.html" email:nil];
    [one addNumber:@"Phone: (409) 839-2538"];
    [one addNumber:@"Fax: (409) 839-2550"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Utah" district:@"District of Utah" contact:@"David B. Barlow" summary:@"Beaver , Box Elder, Cache, Carbon, Daggett, Davis, Duchesne, Emery, Garfield, Grand, Iron, Juab, Kane, Millard, Morgan, Piute, Rich, Salt Lake, San Juan, Sanpete, Sevier, Summit, Tooele, Uintah, Utah, Wasatch, Washington, Wayne, Weber" address:@"185 South State Street Suite 300, Salt Lake City, UT 84111" website:@"http://www.justice.gov/usao/districts/ut.html" email:nil];
    [one addNumber:@"Phone: (801) 524-5682"];
    [one addNumber:@"Fax: (801) 524-6924"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Vermont" district:@"District of Vermont" contact:@"Tristram J. Coffin" summary:@"Addison, Bennington, Caledonia, Chittenden, Essex, Franklin, Grand Isle, Lamoille, Orange, Orleans, Rutland, Washington, Windham, Windsor" address:@"P.O. Box 570, Burlington, VT 05402" website:@"http://www.justice.gov/usao/districts/vt.html" email:nil];
    [one addNumber:@"Phone: (802) 951-6725"];
    [one addNumber:@"Fax: (802) 951-6540"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Virginia" district:@"Western District" contact:@"Timothy J. Heaphy" summary:@"Albemarle, Alleghany, Amherst, Appomattox, Augusta, Bath, Bedford, Bland, Botetourt, Buchanan, Buckingham, Campbell, Carroll, Charlotte, Clarke, Craig, Culpeper, Cumberland, Dickenson, Floyd, Fluvanna, Franklin, Frederick, Giles, Grayson, Greene, Halifax, Henry, Highland, Lee, Louisa, Madison, Montgomery, Nelson, Orange, Page, Patrick, Pittsylvania, Pulaski, Rappahannock, Roanoke, Rockbridge, Rockingham, Russell, Scott, Shenandoah, Smyth, Tazewell, Warren, Washington, Wise, Wythe" address:@"310 1st St SW #906 Roanoke, VA 24011" website:@"http://www.justice.gov/usao/districts/vaw.html" email:nil];
    [one addNumber:@"Phone: (540) 857-2250"];
    [one addNumber:@"Fax: (540) 857-2614"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Virginia" district:@"Eastern District" contact:@"Neil H. MacBride" summary:@"Accomac, Amelia, Arlington, Brunswick, Caroline, Charles City, Chesterfield, Dinwiddie, Elizabeth City, Essex, Fairfax, Fauquier, Gloucester, Goochland, Greensville, Hanover, Henrico, Isle of Wight, James City, King and Queen, King George, King William, Lancaster, Loudoun, Lunenburg, Mathews, Mecklenburg, Middlesex, New Kent, Norfolk, Northampton, Northumberland, Nottoway, Powhatan, Prince Edward, Prince George, Prince William, Princess Anne, Richmond, Southampton, Spotsylvania, Stafford, Suffolk, Surry, Sussex, Warwick, Westmoreland, York" address:@"2100 Jamieson Ave, Alexandria, VA 22314" website:@"http://www.justice.gov/usao/districts/vae.html" email:nil];
    [one addNumber:@"Phone: (703) 299-3700"];
    [one addNumber:@"Fax: (703) 299-2584"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Washington" district:@"Western District" contact:@"Jenny A. Durkan" summary:@"Clallam, Clark, Cowlitz, Grays Harbor, Island, Jefferson, King, Kitsap, Lewis, Mason, Pacific, Pierce, San Juan, Skagit, Skamania, Snohomish, Thurston, Wahkiakum, Whatcom" address:@"700 Stewart Street, Suite 5220, Seattle, WA 98101-1271" website:@"http://www.justice.gov/usao/districts/waw.html" email:nil];
    [one addNumber:@"Phone: (206) 553-7970"];
    [one addNumber:@"Fax: (206) 553-0882"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Washington" district:@"Eastern District" contact:@"Michael C. Ormsby" summary:@"Adams, Asotin, Benton, Chelan, Columbia, Douglas, Ferry, Franklin, Garfield, Grant, Kittitas, Klickitat, Lincoln, Okanogan, Pend Oreille, Spokane, Stevens, Walla Walla, Whitman, and Yakima" address:@"P.O. Box 1494, Spokane, WA 99210-1494" website:@"http://www.justice.gov/usao/districts/wae.html" email:nil];
    [one addNumber:@"Phone: (509) 353-2767"];
    [one addNumber:@"Fax: (509) 353-2766"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"West Virginia" district:@"Northern District" contact:@"William J. Ihlenfeld, II" summary:@"Barbour, Berkeley, Braxton, Brooke, Calhoun, Doddridge, Gilmer, Grant, Hampshire, Hancock, Hardy, Harrison, Jefferson, Lewis, Marion, Marshall, Mineral, Monongalia, Morgan, Ohio, Pendleton, Pleasants, Pocahontas, Preston, Randolph, Ritchie, Taylor, Tucker, Tyler, Upshur, Webster and Wetzel" address:@"P.O. Box 591, Wheeling, WV 26003-0011" website:@"http://www.justice.gov/usao/districts/wvn.html" email:nil];
    [one addNumber:@"Phone: (304) 234-0100"];
    [one addNumber:@"Fax: (304) 234-0110"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"West Virginia" district:@"Southern District" contact:@"Booth Goodwin" summary:@"Boone, Cabell, Clay, Fayette, Greenbrier, Jackson, Kanawha, Lincoln, Logan, McDowell, Mason, Mercer, Mingo, Monroe, Nicholas, Putnam, Raleigh, Roane, Summers, Wayne, Wirt, Wood and Wyoming" address:@"P.O. Box 1713, Charleston, WV 25326" website:@"http://www.justice.gov/usao/districts/wvs.html" email:nil];
    [one addNumber:@"Phone: 304-345-2200"];
    [one addNumber:@"Fax: 304-347-7074"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Wisconsin" district:@"Western District" contact:@"John W. Vaudreuil" summary:@"Adams, Ashland, Barron, Bayfield, Buffalo, Burnett, Chippewa, Clark, Columbia, Crawford, Dane, Douglas, Dunn, Eau Claire, Grant, Green, Iowa, Iron, Jackson, Jefferson, Juneau, La Crosse, Lafayette, Lincoln, Marathon, Monroe, Oneida, Pepin, Pierce, Polk, Portage, Price, Richland, Rock, Rusk, Saint Croix, Sauk, Sawyer, Taylor, Trempealeau, Vernon, Vilas, Washburn,  Wood" address:@"660 West Washington Avenue #303, Madison, WI 53703" website:@"http://www.justice.gov/usao/districts/wiw.html" email:nil];
    [one addNumber:@"Phone: (608) 264-5158"];
    [one addNumber:@"Fax: (608) 264-5172"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Wisconsin" district:@"Eastern District" contact:@"James L. Santelle" summary:@"Brown, Calumet, Dodge, Door, Florence, Fond du Lac, Forest, Green Lake, Kenosha, Kewaunee, Langlade, Manitowoc, Marinette, Marquette, Menominee, Milwaukee, Oconto, Outagamie, Ozaukee, Racine, Shawano, Sheboygan, Walworth, Washington, Waukesha, Waupaca, Waushara, Winnebago" address:@"517 East Wisconsin Avenue" website:@"http://www.justice.gov/usao/districts/wie.html" email:nil];
    [one addNumber:@"Phone: (414) 297-1700"];
    [one addNumber:@"Fax: (414) 297-1738"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Wyoming" district:@"District of Wyoming" contact:@"Christopher A. 'Kip' Crofts" summary:@"Albany Count, Big Horn Count, Campbell, Carbon, Converse, Crook, Fremont,  Goshen, Hot Springs, Johnson, Laramie, Lincoln, Natrona, Niobrara, Park, Platte, Sheridan, Sublette, Sweetwater, Teton, Uinta, Washakie, Weston  " address:@"P. O. Box 668 Cheyenne,  WY 82003-0668" website:@"http://www.justice.gov/usao/districts/wy.html" email:nil];
    [one addNumber:@"Phone: (307) 772-2124"];
    [one addNumber:@"Fax: (307) 772-2123"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"District of Columbia" district:@"District of Columbia" contact:@"Ronald C. Machen Jr" summary:nil address:@"555 Fourth Street, NW, Washington, DC 20530" website:@"http://www.justice.gov/usao/districts/dc.html" email:nil];
    [one addNumber:@"Phone: (202) 252-7566"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"Districts of Guam & Northern Mariana Islands" district:@"Districts of Guam & Northern Mariana Islands" contact:@"Alicia Anne Garrido Limtiaco" summary:nil address:@"108 Herman Cortez Avenue #500, Hagåtña, Guam 96910" website:@"http://www.justice.gov/usao/districts/gu.html" email:nil];
    [one addNumber:@"Phone: (671) 472-7332"];
    [one addNumber:@"Fax: (671) 472-7334"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"District of Puerto Rico" district:@"District of Puerto Rico" contact:@"Rosa Emilia RodrÌguez-VÈlez" summary:nil address:@"350 Ave Carlos Chardon #1201, San Juan, PR 00918" website:@"http://www.justice.gov/usao/districts/pr.html" email:nil];
    [one addNumber:@"Phone: (787) 766-5656"];
    [one addNumber:@"Fax: (787) 771-4043"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The US District Attorney" state:@"District of the Virgin Islands" district:@"District of the Virgin Islands" contact:@"Ronald W. Sharpe" summary:nil address:@"5500 Veterans Drive #260, St. Thomas, United States Virgin Islands" website:@"http://www.justice.gov/usao/districts/vi.html" email:nil];
    [one addNumber:@"Phone: (340) 774-5757"];
    [one addNumber:@"Fax: (340) 776-3474"];
    [districtAttornies addObject:one];

    
    
    //State US Attorneys
    one =[[HTAllianceData alloc]init:@"Los Angeles County District Attorney's Office" state:@"California" district:@"Los Angeles County" contact:@"Jackie Lacey" summary:nil address:nil website:nil email:@"webmail@da.lacounty.gov"];
    [one addNumber:@"Phone: (213) 974-3512"];
    [one addNumber:@"Fax: (213) 974-1484"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Miami-Dade Office Of The State Attorney" state:@"Florida" district:@"Miami" contact:@"Katherine Fernandez Rudle" summary:nil address:nil website:nil email:nil];
    [one addNumber:@"Phone: (305) 547-0100"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Fulton Country District Attorney's Office" state:@"Georgia" district:@"Fulton Country" contact:@"Paul L. Howard Jr." summary:nil address:nil website:nil email:nil];
    [one addNumber:@"Phone: (404) 612-4981"];
    [one addNumber:@"Fax: (404) 893-2769"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Wyandotte County District Attorney's Office" state:@"Kansas" district:@"Wyandotte County" contact:@"Jerome A. Gorman" summary:nil address:nil website:nil email:nil];
    [one addNumber:@"Phone: (913) 573-2851"];
    [one addNumber:@"Fax: (913) 573-2948"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Orleans Parish District Attorney's Office" state:@"Louisiana" district:@"Orleans Parish" contact:@"Leon A. Cannizzaro, Jr." summary:nil address:nil website:nil email:nil];
    [one addNumber:@"Phone: (504) 822-2414"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Shelby County District Attorney's Office" state:@"Tennessee" district:@"Shelby County" contact:@"Amy Weirich" summary:nil address:nil website:nil email:nil];
    [one addNumber:@"Phone: (901) 222-1300"];
    [one addNumber:@"Fax: (901) 222-1305"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"El Paso County District Attorney's Office" state:@"Texas" district:@"El Paso County" contact:@"Jaime Esparza" summary:nil address:nil website:nil email:@"daesparza@epcounty.com"];
    [one addNumber:@"Phone: (915) 546-2059"];
    [one addNumber:@"Fax: (915) 533-5520"]; 
    [one addNumber:@"Victim Assistance: (915) 546-2091"];
    [USattorneys addObject:one];
    
    
    
    //Federal Alliances
    one = [[HTAllianceData alloc]init:@"Bureau of Justice Assitance (BJA)" state:nil district:nil contact:@"Deborah Meade Policy Advisor" summary:nil  address:nil website: @"https://www.bja.gov/ProgramDetails.aspx?Program_ID=51" email:@"deborah.meader@usdoj.gov"];
    [one addNumber:@"Phone: (202) 305-2601"];
    [fed addObject:one];
    one = [[HTAllianceData alloc]init:@"Department of Justice (DOJ) - Civil Rights Division Criminal Section" state:nil district:nil contact:@"Robert Moossy Cheif" summary:nil address:nil website:@"http://www.justice.gov/crt/about/crm/htpu.php" email:nil];
    [one addNumber:@"Phone: (202) 514-3204"];
    [fed addObject:one];
    one = [[HTAllianceData alloc]init:@"Division of Anti-Trafficking in Persons (ATIP)" state:nil district:nil contact:nil summary:nil address:@"U.S. Department of Health and Human Services, 901 D Street, SW, Washington, DC 20447" website:@"www.acf.hhs.gov/trafficking" email:@"Trafficking@acf.hhs.gov"];
    [one addNumber:@"Phone: (202) 401-5510"];
    [one addNumber:@"Fax: (202) 401-5487"];
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
        cell.textLabel.text = @"US State Attorneys";
        return cell;
    }
    else if(indexPath.row == 0){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"attGenCell" forIndexPath:indexPath];
        cell.textLabel.text = @"Attorney Generals";
        return cell;
    }
    else if(indexPath.row == 2){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"distAttCell" forIndexPath:indexPath];
        cell.textLabel.text = @"Federal District Attorneys";
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
