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
    
    
    /*one = [[HTAllianceData alloc]init:@"US Attorneys's Office Central District of California" state:@"California"  district:@"Cental District of California" contact: @"Criminal Division Lawrence Middleton, Assistant United States Attorney\nSection Chief\nAttn: Public Corruption and Civil Rights Section" summary:nil address:@"312 North Spring Street\nLos Angeles, California 90012" website:nil email:nil];
    [one addNumber:@"(213)894-5010"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Southern District of Florida" state:@"Florida" district:@"Southern District of Florida" contact:nil summary:nil address:@"U.S. Attorney's Office\n99 N.E. 4th Street\nMiami, Fl. 33132" website:nil email:nil];
    [one addNumber:@"(305)961-9001"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Northern District of Georgia" state:@"Georgia" district:@"Northern District of Georgia" contact:@"Susan Coppedge, Assistant United States Attorney\n\nKarima Maloney, Deputy Chief, Civil Rights Division\n\nShondeana Morris, Assistant District Attorney, Fulton County District Attorney’s Office"summary:nil address:@"Richard B. Russell Federal Building\n75 Spring Street, S.W.\nSuite 600\nAtlanta, GA 30303-3309" website:nil email:nil];
    [one addNumber:@"Tel: (404)581-6000"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office District of Kansas" state:@"Kansas" district:@"District of Kansas" contact:nil summary:nil address:@"500 State Avenue\nSuite 360\nKansas City, Kansas 66101" website:nil email:nil];
    [one addNumber:@"Phone: (913)551-6730"];
    [one addNumber:@"CRU Hotline: 1(855)321-5549"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Eastern District of Louisiana" state:@"Louisiana" district:@"Eastern District of Lousiana" contact:nil summary:nil address:@"650 Poydras Street, Suite 1600\nNew Orleans, Louisiana 70130" website:nil email:nil];
    [one addNumber:@"(504)680-3000"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Western District of Tennessee" state:@"Tennessee" district:@"Western District of Tennessee" contact:nil summary:nil address:@" 800 Clifford Davis Federal Office Building\nMemphis, TN 38103" website:nil email:nil];
    [one addNumber:@"(901)544-4231"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"US Attorneys's Office Western District of Texas" state:@"Texas" district:@"Western District of Texas" contact:@" Jose Luis Gonzalez, Chief" summary:nil address:@"700 East San Antonio Avenue\nSuite 200\nEl Paso, TX 79901" website:nil email:nil];
    [one addNumber:@"Phone: (915)534-6884"];
    [one addNumber:@"Fax: (915)534-6024"];
    [districtAttornies addObject:one];*/
    
    
    
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Alabama" district:@"Northern District" contact:@"Joyce White Vance" summary:@"Calhoun, Clay ,Cleburne, Talladega, Blount, Jefferson, Shelby ,Cullman, Jackson, Lawrence, Limestone ,Madison, Morgan ,Colbert, Franklin ,Lauderdale, Cherokee, De Kalb, Etowah, Marshall, St. Clair, Fayette, Lamar, Marion, Walker, Winston, Bibb, Greene, Pickens, Sumter, Tuscaloosa" address:@"1801 4th Avenue North\n Birmingham, Alabama 35203" website:@"http://www.justice.gov/usao/districts/aln.html" email:nil];
    [one addNumber:@"Phone: (205) 244-2001"];
    [one addNumber:@"Fax: (205) 244-2171"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Alabama" district:@"Middle District" contact:@"George L. Beck, Jr." summary:@"Autauga, Barbour, Bullock, Butler, Chilton, Coosa, Covington, Crenshaw, Elmore, Lowndes, Montgomery, Pike, Coffee, Dale, Geneva, Henry, Houston, Chambers, Lee, Macon , Randolph, Russell, Tallapoosa" address:@"131 Clayton Street\nMontgomery, AL 36104" website:@"http://www.justice.gov/usao/districts/alm.html" email:nil];
    [one addNumber:@"Phone: (334) 223-7280"];
    [one addNumber:@"Fax: (334) 223-7560"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Alabama" district:@"Southern District" contact:@" Kenyen R. Brown" summary:@"Choctaw, Clarke, Conecuh, Escambia, Mobile, Monroe, Washington, Dallas, Hale, Marengo, Perry, Wilcox, Daldwin" address:@"63 South Royal Street, Suite 600\nMobile, AL 36602" website:@"http://www.justice.gov/usao/districts/als.html" email:nil];
    [one addNumber:@"Phone: (251) 441-5845"];
    [one addNumber:@"Fax: (251) 441-5277"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Alaska" district:@"District of Alaska" contact:@" Karen L. Loeffler" summary:@"Aleutians East, Aleutians West, Anchorage, Bethel, Bristol Bay, Denali, Dillingham, Fairbanks North Star, Haines, Juneau, Kenai Peninsula,  Ketchikan Gateway, Kodiak Island, Lake And Peninsula, Matanuska-Susitna, Nome, North Slope, Northwest Arctic, Prince of Wales-Outer Ketchikan, Sitka, Skagway, Southeast Fairbanks, Valdez-Cordova, Wade Hampton, Wrangell, Yakutat" address:@"222 West 7th Avenue, Room 253, #9,\nAnchorage, Alaska 99513" website:@"http://www.justice.gov/usao/districts/ak.html" email:nil];
    [one addNumber:@"Phone: (907) 271-5071"];
    [one addNumber:@"Fax: (907) 271-4054"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Arizona" district:@"District of Arizona" contact:@"John S. Leonardo" summary:@"Apache , Cochise , Coconino , Gila , Graham , Greenlee , La Paz , Maricopa , Mohave , Navajo , Pima ,G2 Pinal , Santa Cruz , Yavapai , Yuma " address:@"Two Renaissance Square  40 N. Central Avenue, Suite 1200\n Phoenix, AZ 85004-4408" website:@"http://www.justice.gov/usao/districts/az.html" email:nil];
    [one addNumber:@"Phone: (602) 514-7500"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Arkansas" district:@"Western District" contact:@"Conner Eldridge" summary:@"Ashley, Baxter, Benton, Boone, Bradley, Calhoun, Carroll, Clark, Columbia, Crawford, Franklin, Garland, Hempstead, Hot Spring, Howard, Johnson, Lafayette, Little River, Logan, Madison, Marion, Miller, Montgomery, Nevada, Newton, Ouachita, Pike, Polk, Scott, Searcy, Sebastian, Sevier, Union, Washington" address:@"414 Parker Avenue\n Fort Smith, AR 72901" website:@"http://www.justice.gov/usao/districts/arw.html" email:nil];
    [one addNumber:@"Phone: (479) 783-5125"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Arkansas" district:@"Eastern District" contact:@"Christopher R. Thyer" summary:@"Arkansas, Chicot, Clay, Cleburne, Cleveland, Conway, Craighead, Crittenden, Cross, Dallas, Desha, Drew, Faulkner, Fulton, Grant, Greene, Independence, Izard, Jackson, Jefferson, Lawrence, Lee, Lincoln, Lonoke, Mississippi, Monroe, Perry, Phillips, Poinsett, Pope, Prairie, Pulaski, Randolph, Sharp, St. Francis, Stone, Saline, Van Buren, White, Woodruff, Yell" address:@"P.O. Box 1229\nLittle Rock, AR 72203-1229" website:@"http://www.justice.gov/usao/districts/are.html" email:nil];
    [one addNumber:@"Phone: (501) 340-2600"];
    [one addNumber:@"Fax: (501) 340-2728"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"California" district:@"Central District" contact:@"AndrÈ Birotte, Jr." summary:@"Riverside, San Bernardino, Counties, Orange ,Los Angeles, Ventura, Santa Barbara, San Luis Obispo " address:@"312 North Spring Street Suite 1200\n Los Angeles, California 90012" website:@"http://www.justice.gov/usao/districts/cac.html" email:nil];
    [one addNumber:@"Phone: (213) 894-2400"];
    [one addNumber:@"Fax: (213) 894-0141"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"California" district:@"Northern District" contact:@"Melinda Haag" summary:@"Butte , Colusa , Del Norte  , El Dorado , Glenn , Humboldt , Lake  , Lassen  , Marin  , Mendocino  , Modoc , Napa  , Nevada  , Placer , Plumas , Shasta , Sierra , Siskiyou  , Solano , Sonoma , Trinity " address:@"150 Almaden Blvd. Suite 900\nSan Jose, CA 95113" website:@"http://www.justice.gov/usao/districts/can.html" email:nil];
    [one addNumber:@"Phone: (408) 535-5061"];
    [one addNumber:@"Fax: (408) 535-5066"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"California" district:@"Southern District" contact:@"Laura E. Duffy" summary:@"Imperial, San Diego" address:@"880 Front Street, Room 6293\nSan Diego, California 92101-8893" website:@"http://www.justice.gov/usao/districts/cas.html" email:nil];
    [one addNumber:@"Phone: (619) 557-5610"];
    [one addNumber:@"Fax: (619) 546-0720"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"California" district:@"Eastern District" contact:@"Benjamin B. Wagner" summary:@"Alpine, Amador, Butte, Calaveras, Colusa, El Dorado, Fresno, Glenn, Inyo, Kern, Kings, Lassen, Madera, Mariposa, Merced, Modoc, Mono, Nevada, Placer, Plumas, Sacramento, San Joaquin, Shasta, Sierra, Siskiyou, Solano, Stanislaus, Sutter, Tehama, Trinity, Tulare, Tuolumne, Yolo, and Yuba.  " address:@"501 I Street, Suite 10-100\nSacramento, CA 95814" website:@"http://www.justice.gov/usao/districts/cae.html" email:nil];
    [one addNumber:@"Phone: (916) 554-2700"];
    [one addNumber:@"Fax: (916) 554-2900"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Colorado" district:@"District of Colorado" contact:@"John F. Walsh" summary:@"Adams, Alamosa, Arapahoe, Archuleta, Baca, Bent, Boulder, Broomfield, Chaffee, Cheyenne, Clear Creek,  Conejos, Costilla, Crowley, Custer, Delta, Denver, Dolores, Douglas, Eagle, El Paso, Elbert,  Fremont, Garfield, Gilpin, Grand, Gunnison, Hinsdale, Huerfano, Jackson, Jefferson, Kiowa, Kit Carson, La Plata, Lake, Larimer, Las Animas, Lincoln, Logan, Mesa, Mineral, Moffat, Montezuma, Montrose, Morgan, Otero, Ouray, Park, Phillips, Pitkin, Prowers, Pueblo, Rio Blanco, Rio Grande, Routt, Saguache, San Juan, San Miguel, Sedgwick, Summit, Teller, Washington, Weld, Yuma " address:@"1225 Seventeenth Street, Suite 700 Seventeenth Street Plaza\nDenver, CO 80202 " website:@"http://www.justice.gov/usao/districts/co.html" email:nil];
    [one addNumber:@"Phone: (303) 454-0100"];
    [one addNumber:@"Fax: (303) 454-0409"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Connecticut" district:@"District of Connecticut" contact:@"Deirdre M. Daly" summary:@"Fairfield , Hartford , Litchfield , Middlesex  New Haven , New London , Tolland , Windham " address:@"157 Church Street Floor 25 New Haven,\nCT 06510 " website:@"http://www.justice.gov/usao/districts/ct.html" email:nil];
    [one addNumber:@"Phone: (203) 821-3700"];
    [one addNumber:@"Fax: (203) 773-5376"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Delaware" district:@"District of Delaware" contact:@"Charles M. Oberly" summary:@"New Castle, Kent, Sussex" address:@"1007 Orange Street Suite 700 Wilmington,\nDE 19801" website:@"http://www.justice.gov/usao/districts/de.html" email:nil];
    [one addNumber:@"Phone: (302) 573-6277"];
    [one addNumber:@"Fax: (302) 573-6220"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Florida" district:@"Nothern District" contact:@"Pamela Cothran Marsh" summary:@"Alachua, Dixie, Gilchrist, Lafayette, Levy Serving Bay, Calhoun, Gulf, Holmes, Jackson, Washington Escambia, Okaloosa, Santa Rosa, Walton Franklin, Gadsden, Jefferson, Leon, Liberty, Madison, Taylor, Wakulla  " address:@"111 North Adams Street 4th Floor U.S. Courthouse\nTallahassee, FL 32301" website:@"http://www.justice.gov/usao/districts/fln.html" email:nil];
    [one addNumber:@"Phone: (850) 942-8430"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Florida" district:@"Middle District " contact:@"Lee Bentley" summary:@"Charlotte, Collier, De Soto, Glades, Hendry, LeeBaker, Bradford, Citrus, Clay, Columbia, Duval, Flagler,Hamilton, Marion, Nassau, Putnam, St.Johns, Sumter,Suwannee, Union, Volusia, Brevard, Lake, Orange, Osceola and Seminole, Hardee, Hernando, Hillsborough, Manatee, Pasco,Pinellas, Polk, Sarasota" address:@"400 North Tampa Street Suite 3200\nTampa, Fl. 33602" website:@"http://www.justice.gov/usao/districts/flm.html" email:nil];
    [one addNumber:@"Phone: (813)-274-6000"];
    [one addNumber:@"Fax: (813) 274-6358"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Florida" district:@"Southern District" contact:@"Wifredo A. Ferrer" summary:@"Broward, Dade, Highlands, Indian River, Martin, Monroe, Okeechobee, Palm Beach, and St. Lucie" address:@"99 N.E. 4th Street\nMiami, Fl. 33132" website:@"http://www.justice.gov/usao/districts/fls.html" email:nil];
    [one addNumber:@"Phone: (305) 961-9001"];
    [one addNumber:@"Fax: (305) 530-7679"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Georgia" district:@"Northern District" contact:@"Sally Quillian Yates" summary:@"Banks, Barrow, Bartow, Carroll, Catoosa, Chattooga, Cherokee, Clayton, Cobb, Coweta, Dade, Dawson, De Kalb, Douglas, Fannin, Fayette, Floyd, Forsyth, Fulton, Gilmer, Gordon, Gwinnett, Habersham, Hall, Haralson, Heard, Henry, Jackson, Lumpkin, Meriwether, Murray, Newton, Paulding, Pickens, Pike, Polk, Rabun, Rockdale, Spalding, Stephens, Towns, Troup, Union, Walker, White, Whitfield" address:@"75 Spring Street, S.W. Suite 600\nAtlanta, GA 30303-3309" website:@"http://www.justice.gov/usao/districts/gan.html" email:nil];
    [one addNumber:@"Phone: (404) 581-6000"];
    [one addNumber:@"Fax: (404) 581-6181"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Georgia" district:@"Middle District " contact:@"Lee Bentley" summary:@"Clarke, Elbert, Franklin, Greene, Hart, Madison, Morgan, Oconee, Oglethorpe, Walton. " address:@"400 North Tampa Street Suite 3200\nTampa, Fl. 33602" website:@"http://www.justice.gov/usao/districts/flm.html" email:nil];
    [one addNumber:@"Phone: (813) 274-6000"];
    [one addNumber:@"Fax: (813) 274-6358"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Georgia" district:@"Southern District" contact:@"Edward J. Tarver" summary:@"Appling, Atkinson, Bacon, Brantley, Bryan, Bulloch, Burke, Camden, Candler, Charlton, Chatham, Coffee, Columbia, Dodge, Effingham, Emanuel, Evans, Glascock, Glynn, Jeff Davis, Jefferson, Jenkins, Johnson, Laurens, Liberty, Lincoln, Long, McDuffie, McIntosh, Montgomery, Pierce, Richmond, Screven, Taliaferro, Tattnall, Telfair, Toombs, Treutlen, Ware, Warren, Wayne, Wheeler, Wilkes" address:@"22 Barnard Street, Suite 300 Savannah,\nGeorgia 31401" website:@"http://www.justice.gov/usao/districts/gas.html" email:nil];
    [one addNumber:@"Phone: (912) 652-4422"];
    [one addNumber:@"Fax: (912) 652-4388"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Hawaii" district:@"District of Hawaii" contact:@"Florence T. Nakakuni" summary:@"Hawaii, Honolulu, Kalawao, Kauai, Maui" address:@"300 Ala Moana Blvd., #6-100\nHonolulu, HI 96850" website:@"http://www.justice.gov/usao/districts/hi.html" email:nil];
    [one addNumber:@"Phone: (808) 541-2850"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Idaho" district:@"District of Idaho" contact:@"Wendy J. Olson" summary:@"Ada, Adams, Bannock, Bear Lake, Benewah, Bingham, Blaine, Boise, Bonner, Bonneville, Boundary, Butte, Camas , Canyon, Caribou, Cassia, Clark, Clearwater, Custer, Elmore, Franklin, Fremont, Gem, Gooding, Idaho, Jefferson, Jerome, Kootenai, Latah, Lemhi, Lewis, Lincoln, Madison, Minidoka, Nez Perce, Oneida, Owyhee, Payette, Power, Shoshone, Teton, Twin Falls, Valley, Washington " address:@"800 Park Blvd., Suite 600\nBoise, ID 83712" website:@"http://www.justice.gov/usao/districts/id.html" email:nil];
    [one addNumber:@"Phone: (208) 334-1211"];
    [one addNumber:@"Fax: (208) 334-9375"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Illinois " district:@"Northern District" contact:@"Gary S. Shapiro" summary:@"Cook, Du Page, Grundy, Kane, Kendall, Lake, La Salle, Will, Boone, Carroll, De Kalb, Jo Daviess, Lee, McHenry, Ogle, Stephenson, Whiteside, Winnebago" address:@"219 S. Dearborn St., 5th Floor\nChicago, IL 60604" website:@"http://www.justice.gov/usao/districts/iln.html" email:nil];
    [one addNumber:@"Phone: (312) 353-5300"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Illinois " district:@"Central District" contact:@"Jim Lewis" summary:@"Adams, Brown, Bureau, Cass, Champaign, Christian, Coles, De Witt, Douglas, Edgar, Ford, Fulton, Greene, Hancock, Henderson, Henry, Iroquois, Kankakee, Knox, Livingston, Logan, McDonough, McLean, Macoupin, Macon, Marshall, Mason, Menard, Mercer, Montgomery, Morgan, Moultrie, Peoria, Piatt, Pike, Putnam, Rock Island, Sangamon, Schuyler, Scott, Shelby, Stark, Tazewell, Vermilion, Warren, Woodford. " address:@"201 S. Vine St., Suite 226\nUrbana, IL 61802" website:@"http://www.justice.gov/usao/districts/ilc.html" email:nil];
    [one addNumber:@"Phone: (217) 492-4450"];
    [one addNumber:@"Fax: (217) 492-4512"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Illinois " district:@"Southern District" contact:@"Stephen R. Wigginton" summary:@"Alexander, Bond, Calhoun, Clark, Clay, Clinton, Crawford, Cumberland, Edwards, Effingham, Fayette, Franklin, Gallatin, Hamilton, Hardin, Jackson, Jasper, Jefferson, Jersey, Johnson, Lawrence, Madison, Marion, Massac, Monroe, Perry, Pope, Pulaski, Randolph, Richland, St. Clair, Saline, Union, Wabash, Washington, Wayne, White, Williamson" address:@"9 Executive Dr Fairview Heights,\nIL 62208" website:@"http://www.justice.gov/usao/districts/ils.html" email:nil];
    [one addNumber:@"Phone: (618) 628-3700"];
    [one addNumber:@"Fax: (618) 628-3730"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Indiana" district:@"Northern District" contact:@"David Capp" summary:@"Bartholomew, Boone, Brown, Clinton, Decatur, Delaware, Fayette, Fountain, Franklin, Hamilton, Hancock, Hendricks, Henry, Howard, Johnson, Madison, Marion, Monroe, Montgomery, Morgan, Randolph, Rush, Shelby, Tipton, Union, and Wayne, Clay, Greene, Knox, Owen, Parke, Putnam, Sullivan, Vermilion, Vigo Davies, Dubois, Gibson, Martin, Perry, Pike, Posey, Spencer, Vanderburgh, Warrick, Clark, Crawford, Dearborn, Floyd, Harrison, Jackson, Jefferson, Jennings, Lawrence, Ohio, Orange, Ripley, Scott, Switzerland, Washington" address:@"5400 Federal Plaza, Suite 1500 Hammond,\nIN 46320" website:@"http://www.justice.gov/usao/districts/inn.html" email:nil];
    [one addNumber:@"Phone: (219) 937-5500"];
    [one addNumber:@"Fax: (219) 852-2770"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Indiana" district:@"Southern District" contact:@"Joseph H. Hogsett" summary:@"Adams, Allen, Blackford, De Kalb, Grant, Huntington, Jay, Lagrange, Noble, Steuben, Wells, Whitley, Cass, Elkhart, Fulton, Kosciusko, La Porte, Marshall, Miami, Pulaski, St. Joseph, Starke, Wabash, Benton, Carroll, Jasper, Lake, Newton, Porter, Tippecanoe, Warren, White" address:@"10 W Market St, Suite 2100\nIndianapolis, IN 46204" website:@"http://www.justice.gov/usao/districts/ins.html" email:nil];
    [one addNumber:@"Phone: (317) 226-6333"];
    [one addNumber:@"Fax: (317) 226-6125"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Iowa" district:@"Northern District" contact:@"Sean R. Berry" summary:@"Benton, Cedar, Grundy, Hardin, Iowa, Jones, Linn, Tama, Allamakee, Black Hawk, Bremer, Buchanan, Chickasaw, Clayton, Delaware, Dubuque, Fayette, Floyd, Howard, Jackson, Mitchell, Winneshiek, Buena Vista, Cherokee, Clay, Crawford, Dickinson, Ida, Lyon, Monona, O'Brien, Osceola, Plymouth, Sac, Sioux, Woodbury, Butler, Calhoun, Carroll, Cerro Gordo, Emmet, Franklin, Hamilton, Hancock, Humboldt, Kossuth, Palo Alto, Pocahontas, Webster, Winnebago, Worth, Wright" address:@"111 7th Ave, SE Box #1\nCedar Rapids, IA 52401 " website:@"http://www.justice.gov/usao/districts/ian.html" email:nil];
    [one addNumber:@"Phone: (319) 363-6333"];
    [one addNumber:@"Fax: (319) 363-1990"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Iowa" district:@"Southern District" contact:@"Nicholas A. Klinefeldt" summary:@"Boone, Dallas, Greene, Guthrie, Jasper, Madison, Marion, Marshall, Polk, Poweshiek, Story, Warren, Des Moines, Henry, Lee, Louisa, Van Buren, Audubon, Cass, Fremont, Harrison, Mills, Montgomery, Page, Pottawattamie, Shelby, Adair, Adams, Clarke, Decatur, Lucas, Ringgold, Taylor, Union, Wayne, Clinton, Johnson, Muscatine, Scott, Washington, Appanoose, Davis, Jefferson, Keokuk, Mahaska, Monroe, Wapello" address:@"U.S. Courthouse 131 East 4th Street, Suite # 310\nDavenport, Iowa 52801" website:@"http://www.justice.gov/usao/districts/ias.html" email:nil];
    [one addNumber:@"Phone: (563) 449-5432"];
    [one addNumber:@"Fax: (563) 449-5433"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Kansas" district:@"District of Kansas" contact:@"Barry R. Grissom" summary:@"Allen, Anderson, Atchison, Barber, Barton, Bourbon, Brown, Butler, Chase, Chautauqua, Cherokee, Cheyenne,Clark, Clay, Cloud, Coffey, Comanche, Cowley, Crawford, Decatur, Dickinson, Doniphan, Douglas, Edwards, Elk, Ellis, Ellsworth, Finney, Ford, Franklin, Geary, Gove, Graham, Grant, Gray, Greeley, Greenwood, Hamilton, Harper, Harvey, Haskell, Hodgeman, Jackson, Jefferson, Jewell, Johnson, Kearny, Kingman, Kiowa, Labette, Lane, Leavenworth, Lincoln, Linn, Logan, Lyon, Marion, Marshall, McPherson, Meade, Miami, Mitchell, Montgomery, Morris, Morton, Nemaha, Neosho, Ness, Norton, Osage, Osborne, Ottawa, Pawnee, Phillips, Pottawatomie, Pratt, Harper, Harvey, Haskell, Hodgeman, Jackson, Jefferson, Jewell, Johnson, Kearny, Kingman, Kiowa, Labette, Lane, Leavenworth, Lincoln, Linn, Logan, Lyon, Marion, Marshall, McPherson, Meade, Miami, Mitchell, Montgomery, Morris, Morton, Nemaha, Neosho, Ness, Norton, Osage, Osborne, Ottawa, Pawnee, Phillips, Pottawatomie, Pratt, Rawlins, Reno, Republic, Rice, Riley, Rooks, Rush, Russell, Saline, Scott, Sedgwick, Seward, Shawnee, Sheridan, Sherman, Smith, Stafford, Stanton, Stevens, Sumner, Thomas, Trego, Wabaunsee, Wallace, Washington, Wichita, Wilson, Woodson, Wyandotte, " address:@"500 State Avenue Suite 360\nKansas City, Kansas 66101" website:@"http://www.justice.gov/usao/districts/ks.html" email:nil];
    [one addNumber:@"Phone: (913) 551-6730"];
    [one addNumber:@"Fax: (913) 551-6541"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Kentucky" district:@"Western District" contact:@"David J. Hale" summary:@"Adair, Allen, Ballard, Barren, Breckenridge, Bullitt, Butler, Caldwell, Calloway, Carlisle, Casey, Christian, Clinton, Crittenden, Cumberland, Daviess, Edmonson, Fulton, Graves, Grayson, Green, Hancock, Hardin, Hart, Henderson, Hickman, Hopkins, Jefferson, Larue, Livingston, Logan, Lyon, McCracken, McLean, Marion, Marshall, Meade, Metcalfe, Monroe, Muhlenberg, Nelson, Ohio, Oldham, Russell, Simpson, Spencer, Taylor, Todd, Trigg, Union, Warren, Washington, and Webster" address:@"717 West Broadway\nLouisville, KY 40202" website:@"http://www.justice.gov/usao/districts/kyw.html" email:nil];
    [one addNumber:@"Phone: (502) 582-5911"];
    [one addNumber:@"Fax: (502) 582-5097"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Kentucky" district:@"Eastern District" contact:@"Kerry B. Harvey" summary:@"Anderson, Bath, Bell, Boone, Bourbon, Boyd, Boyle, Bracken, Breathitt, Campbell, Carroll, Carter, Clark, Clay, Elliott, Estill, Fayette, Fleming, Floyd, Franklin, Gallatin, Garrard, Grant, Greenup, Harlan, Harrison, Henry, Jackson, Jessamine, Johnson, Kenton, Knott, Knox, Laurel, Lawrence, Lee, Leslie, Letcher, Lewis, Lincoln, McCreary, Madison, Magoffin, Martin, Mason, Menifee, Mercer, Montgomery, Morgan, Nicholas, Owen, Owsley, Pendleton, Perry, Pike, Powell, Pulaski, Robertson, Rockcastle, Rowan, Scott, Shelby, Trimble, Wayne, Whitley, Wolfe, Woodford" address:@"260 W. Vine Street, Ste. 300\nLexington, KY 40507-1612" website:@"http://www.justice.gov/usao/districts/kye.html" email:nil];
    [one addNumber:@"Phone: (859) 233-2661"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Louisiana " district:@"Western District" contact:@"Stephanie A. Finley" summary:@"Assumption, Jefferson, Lafourche, Orleans, Plaquemines, St. Bernard, St. Charles, St. James,  St. John the Baptist, St. Tammany, Tangipahoa, Terrebonne, Washington" address:@"300 Fannin Street, Suite 3201\nShreveport, LA 71101-3068" website:@"http://www.justice.gov/usao/districts/law.html" email:nil];
    [one addNumber:@"Phone: (318) 676-3600"];
    [one addNumber:@"Fax: (318) 676-3641"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Louisiana " district:@"Middle District " contact:@"Walt Green" summary:@"Ascension, East Baton Rouge, East Feliciana, Iberville, Livingston, Pointe Coupee, Saint Helena, West Baton Rouge, West Feliciana" address:@"777 Florida Street, Suite 208\nBaton Rouge, LA 70801" website:@"http://www.justice.gov/usao/districts/lam.html" email:nil];
    [one addNumber:@"Phone: (225) 389-0443"];
    [one addNumber:@"Fax: (225) 389-0561"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Louisiana " district:@"Eastern District" contact:@"Dana Boente" summary:@"Acadia, Allen, Avoyelles, Beauregard, Bienville, Bossier, Caddo, Calcasieu, Caldwell, Cameron, Catahoula, Claiborne, Concordia, Jefferson Davis, De Soto, East Carroll, Evangeline, Franklin, Grant, Iberia, Jackson, Lafayette, La Salle, Lincoln, Madison, Morehouse, Natchitoches, Ouachita, Rapides, Red River, Richland, Sabine, Saint Landry, Saint Martin, Saint Mary, Tensas, Union, Vermilion, Vernon, Webster, West Carroll, Winn" address:@"650 Poydras Street, Suite 1600 New Orleans,\nLouisiana 70130" website:@"http://www.justice.gov/usao/districts/lae.html" email:nil];
    [one addNumber:@"Phone: (504) 680-3000"];
    [one addNumber:@"Fax: (504) 589-4510"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Maine" district:@"District of Maine" contact:@"Thomas E. Delahanty II" summary:@"Penobscot, Piscataquis, Sagadahoc, Somerset, Waldo, Washington, York " address:@"100 Middle Street, East Tower, 6th Floor\nPortland, ME 04101" website:@"http://www.justice.gov/usao/districts/me.html" email:nil];
    [one addNumber:@"Phone: (207) 780-3257"];
    [one addNumber:@"Fax: (207) 780-3304"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Maryland" district:@"District of Maryland" contact:@"Rod J. Rosenstein" summary:@"Howard, Kent, Montgomery, Prince George's, Queen Anne's, Saint Mary's, Somerset, Talbot, Washington, Wicomico, Worcester " address:@"36 S. Charles Street, 4th Floor\nBaltimore, MD 21201" website:@"http://www.justice.gov/usao/districts/md.html" email:nil];
    [one addNumber:@"Phone: (410) 209-4800"];
    [one addNumber:@"Fax: (410) 962-0122"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Massachusetts" district:@"District of Massachusetts" contact:@"Carmen M. Ortiz" summary:@"        Barnstable, Berkshire, Bristol, Dukes, Essex, Franklin, Hampden, Hampshire, Middlesex, Nantucket, Norfolk, Plymouth, Suffolk, Worcester        " address:@"1 Courthouse Way, Suite 9200\nBoston, MA 02210" website:@"http://www.justice.gov/usao/districts/ma.html" email:nil];
    [one addNumber:@"Phone: (617) 748-3100"];
    [one addNumber:@"Fax: (617) 748-3974"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Michigan" district:@"Western District" contact:@"Patrick Miles, Jr." summary:@"Alcona, Alpena, Arenac, Bay, Cheboygan, Clare, Crawford, Genesee, Gladwin, Gratiot, Huron, Iosco, Isabella, Jackson, Lapeer, Lenawee, Livingston, Macomb, Midland, Monroe, Montmorency, Oakland, Ogemaw, Oscoda, Otsego, Presque Isle, Roscommon, Saginaw, Saint Clair, Sanilac, Shiawassee, Tuscola, Washtenaw, Wayne," address:@"330 Ionia Avenue, N.W. Suite 501\nGrand Rapids, MI 49503" website:@"http://www.justice.gov/usao/districts/miw.html" email:nil];
    [one addNumber:@"Phone: (616) 456-2404"];
    [one addNumber:@"Fax: (616) 456-2408"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Michigan" district:@"Eastern District" contact:@"Barbara L. McQuade" summary:@"Alger, Allegan, Antrim, Baraga, Barry, Benzie, Berrien, Branch, Calhoun, Cass, Charlevoix, Chippewa, Clinton, Delta, Dickinson, Eaton, Emmet, Gogebic, Grand Traverse, Hillsdale, Houghton, Ingham, Ionia, Iron, Kalamazoo, Kalkaska, Kent, Keweenaw, Lake, Leelanau, Luce, Mackinac, Manistee, Marquette, Mason, Mecosta, Menominee, Missaukee, Montcalm, Muskegon, Newaygo, Oceana, Ontonagon, Osceola, Ottawa, Saint Joseph, Schoolcraft, Van Buren, Wexford" address:@"211 W. Fort Street, Suite 2001 Detroit,\nMI 48226" website:@"http://www.justice.gov/usao/districts/mie.html" email:nil];
    [one addNumber:@"Phone: (313) 226-9100"];
    [one addNumber:@"Fax: (313) 226-2311"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Minnesota" district:@"District of Minnesota" contact:@"B. Todd Jones" summary:@"Chisago, Dakota, Dodge, Fillmore, Goodhue, Houston, Mower, Olmsted, Ramsey, Rice, Scott, Steele, Wabasha, Washington, Winona,Anoka, Blue Earth, Brown, Carver, Chippewa, Cottonwood, Faribault, Freeborn, Hennepin, Isanti, Jackson, Kandiyohi, Lac Qui Parle, LeSueur, Lincoln, Lyon, Martin, McLeod, Meeker, Murray, Nicollet, Nobles, Pipestone, Redwood, Renville, Rock, Sherburne, Sibley, Swift, Waseca, Watonwan, Wright, Yellow Medicine, Aitkin, Benton, Carlton, Cass, Cook, Crow Wing, Itasca, Kanabec, Koochiching, Lake, Mille Lacs, Morrison, Pine, St. Louis, Becker, Beltrami, Big Stone, Clay, Clearwater, Douglas, Grant, Hubbard, Kittson, Lake of the Woods, Mahnomen, Marshall, Norman, Otter Tail, Pennington, Polk, Pope, Red Lake, Roseau, Stearns, Stevens, Todd, Traverse, Wadena, Wilkin" address:@"300 S 4th Street Suite 600\nMinneapolis, MN 55415" website:@"http://www.justice.gov/usao/districts/mn.html" email:nil];
    [one addNumber:@"Phone: (612) 664-5600"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Mississipi" district:@"Northern District" contact:@"Felicia C. Adams" summary:@"Alcorn, Attala, Benton, Bolivar, Calhoun, Carroll, Chickasaw, Choctaw, Clay, Coahoma, De Soto, Grenada, Humphreys, Itawamba, Lafayette, Lee, Leflore, Lowndes, Marshall, Monroe, Montgomery, Oktibbeha, Panola, Pontotoc, Prentiss, Quitman, Sunflower, Tallahatchie, Tate, Tippah, Tishomingo, Tunica, Union, Washington, Webster, Winston, Yalobusha " address:@"900 Jefferson Ave.\nOxford, MS 38655" website:@"http://www.justice.gov/usao/districts/msn.html" email:nil];
    [one addNumber:@"Phone: 662-234-3351"];
    [one addNumber:@"Fax: 662-234-4818"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Mississipi" district:@"Southern District" contact:@"Gregory K. Davis" summary:@" Adams, Amite, Claiborne, Clarke, Copiah, Covington, Forrest, Franklin, George, Greene, Hancock, Harrison, Hinds, Holmes, Issaquena, Jackson, Jasper, Jefferson, Jefferson Davis, Jones, Kemper, Lamar, Lauderdale, Lawrence, Leake, Lincoln, Madison, Marion, Neshoba, Newton, Noxubee, Pearl River, Perry, Pike, Rankin, Scott, Sharkey, Simpson, Smith, Stone, Walthall, Warren, Wayne, Wilkinson and Yazoo" address:@"501 East Court Street Suite 4.430\nJackson, Mississippi 39201" website:@"http://www.justice.gov/usao/districts/mss.html" email:nil];
    [one addNumber:@"Phone: (601) 965-4480"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Missouri" district:@"Western District" contact:@"Tammy Dickinson" summary:@"Bates, Carroll, Cass, Clay, Henry, Jackson, Johnson, Lafayette, Ray, Saint Clair, Saline, Barton, Barry, Jasper, Lawrence, McDonald, Newton, Stone, Vernon, Andrew, Atchison, Buchanan, Caldwell, Clinton, Daviess, De Kalb, Gentry, Grundy, Harrison, Holt, Livingston, Mercer, Nodaway, Platte, Putnam, Sullivan, Worth, Benton, Boone, Callaway, Camden, Cole, Cooper, Hickory, Howard, Miller, Moniteau, Morgan, Osage Pettis, Cedar, Christian, Dade, Dallas, Douglas, Greene, Howell, Laclede, Oregon, Ozark, Polk, Pulaski, Taney, Texas, Webster, Wright" address:@"Room 5510 400 East 9th Street\nKansas City, MO 64106" website:@"http://www.justice.gov/usao/districts/mow.html" email:nil];
    [one addNumber:@"Phone: (816) 426-3122"];
    [one addNumber:@"Fax: (816) 426-4210"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Missouri" district:@"Eastern District" contact:@"Richard Callahan" summary:@"Crawford, Dent, Franklin, Gasconade, Iron, Jefferson, Lincoln, Maries, Phelps, Saint Charles, Saint Francois, Saint Genevieve, Saint Louis, Warren, Washington, The City of Saint Louis, Adair, Audrain, Chariton, Clark, Knox, Lewis, Linn, Macon, Marion, Monroe, Montgomery, Pike, Ralls, Randolph, Schuyler, Scotland, Shelby, Bollinger, Butler, Cape Girardeau, Carter, Dunklin, Madison, Mississippi, New Madrid, Pemiscot, Perry, Reynolds, Ripley, Scott, Shannon, Stoddard, Wayne" address:@"111 S. 10th Street, 20th Floor\nSt. Louis, MO 63102" website:@"http://www.justice.gov/usao/districts/moe.html" email:nil];
    [one addNumber:@"Phone: (314) 539-2200"];
    [one addNumber:@"Fax: (314) 539-2309"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Montana" district:@"District of Montana" contact:@"Michael W. Cotter" summary:@"Beaverhead, Big Horn, Blaine, Broadwater, Carbon, Carter, Cascade, Chouteau, Custer, Daniels, Dawson, Deer Lodge, Fallon, Fergus, Flathead, Gallatin, Garfield, Glacier, Golden Valley, Granite, Hill, Jefferson, Judith Basin, Lake, Lewis and Clark, Liberty, Lincoln, McCone        Madison, Meagher, Mineral, Missoula, Musselshell, Park, Petroleum, Phillips, Pondera, Powder River, Powell, Prairie, Ravalli, Richland, Roosevelt, Rosebud, Sanders, Sheridan, Silver Bow, Stillwater, Sweet Grass, Teton, Toole, Treasure, Valley, Wheatland, Wibaux, Yellowstone " address:@"111 S. 10th Street, 20th Floor\nSt. Louis, MO 63102" website:@"http://www.justice.gov/usao/districts/moe.html" email:nil];
    [one addNumber:@"Phone: (314) 539-2200"];
    [one addNumber:@"Fax: (314) 539-2309"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Nebraska" district:@"District of Nebraska" contact:@"Deborah R. Gilg" summary:@"Adams, Antelope, Arthur, Banner, Blaine, Boone, Box Butte, Boyd, Brown, Buffalo, Burt, Butler, Cass, Cedar, Chase, Cherry, Cheyenne, Clay, Colfax, Cuming, Custer, Dakota, Dawes, Dawson, Deuel, Dixon, Dodge, Douglas, Dundy, Fillmore, Franklin, Frontier, Furnas, Gage, Garden, Garfield, Gosper, Grant, Greeley, Hall, Hamilton, Harlan, Hayes, Hitchcock, Holt, Hooker, Howard, Jefferson, Johnson, Kearney, Keith, Keya Paha, Kimball, Knox, Lancaster, Lincoln, Logan, Loup, Madison, McPherson, Merrick, Morrill, Nance, Nemaha, Nuckolls, Otoe, Pawnee, Perkins, Phelps, Pierce, Platte, Polk, Red Willow, Richardson, Rock, Saline, Sarpy, Saunders, Scotts Bluff, Seward, Sheridan, Sherman, Sioux, Stanton, Thayer, Thomas, Thurston, Valley, Washington, Wayne, Webster, Wheeler, York" address:@"1620 Dodge St, Suite 1400\nOmaha, NE 68102" website:@"http://www.justice.gov/usao/districts/ne.html" email:nil];
    [one addNumber:@"Phone: (402) 661-3700"];
    [one addNumber:@"Fax: (402) 345-6958"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Nevada" district:@"District of Nevada" contact:@"Daniel G. Bogden" summary:@"Carson City, Churchill, Clark, Douglas, Elko, Esmeralda, Eureka, Humboldt, Lander, Lincoln, Lyon, Mineral, Nye, Pershing, Storey, Washoe, White Pine, " address:@"333 Las Vegas Boulevard South Suite 5000\nLas Vegas, NV 89101" website:@"http://www.justice.gov/usao/districts/nv.html" email:nil];
    [one addNumber:@"Phone: (702) 388-6336"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"New Hampshire" district:@"District of New Hampshire" contact:@"John P. Kacavas" summary:@"Belknap, Carroll, Cheshire, Coos, Grafton, Hillsborough, Merrimack, Rockingham, Strafford, Sullivan  " address:@"53 Pleasant Street, 4th Floor\nConcord, NH 03301 " website:@"http://www.justice.gov/usao/districts/nh.html" email:nil];
    [one addNumber:@"Phone: (603) 225-1552"];
    [one addNumber:@"Fax: (603) 225-1470"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"New Jersey" district:@"District of New Jersey" contact:@"Paul J. Fishman" summary:@"Atlantic, Bergen, Burlington, Camden, Cape May, Cumberland, Essex, Gloucester, Hudson, Hunterdon, Mercer, Middlesex, Monmouth, Morris, Ocean, Passaic, Salem, Somerset, Sussex, Union, Warren" address:@"970 Broad Street, 7th Floor Newark,\n NJ 07102" website:@"http://www.justice.gov/usao/districts/nj.html" email:nil];
    [one addNumber:@"Phone: (973) 645-2700"];
    [one addNumber:@"Fax: 973-645-2702"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"New Mexico" district:@"District of New Mexico" contact:@"Kenneth J. Gonzales" summary:@"Bernalillo,  Catron, Chaves, Cibola, Colfax, Curry, DeBaca, Dona Ana, Eddy, Grant, Guadalupe, Harding, Hidalgo, Lea, Lincoln, Los Alamos, Luna, McKinley, Mora, Otero, Quay, Rio Arriba, Roosevelt, Sandoval, San Juan, San Miguel, Santa Fe,Sierra, Socorro, Taos, Torrance, Union, Valencia " address:@"P.O. Box 607 Albuquerque,\nNew Mexico 87102" website:@"http://www.justice.gov/usao/districts/nm.html" email:nil];
    [one addNumber:@"Phone: (505) 346-7274"];
    [one addNumber:@"Fax: (505) 346-7296"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"New York" district:@"Northern District" contact:@"Richard S. Hartunian" summary:@"Albany, Broome, Cayuga, Chenango, Clinton, Columbia, Cortland, Delaware, Essex, Franklin, Fulton, Greene, Hamilton, Herkimer, Jefferson, Lewis, Madison, Montgomery, Oneida, Onondaga, Oswego, Otsego, Rensselaer, Saint Lawrence, Saratoga, Schenectady, Schoharie, Tioga, Tompkins, Ulster, Warren and Washington" address:@"445 Broadway, Room 218 Albany,\nNY 12207-2924" website:@"http://www.justice.gov/usao/districts/nyn.html" email:nil];
    [one addNumber:@"Phone: (518) 431-0247"];
    [one addNumber:@"Fax: (518) 431-0249"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"New York" district:@"Eastern District" contact:@"Loretta E. Lynch" summary:@"Kings, Nassau, Queens, Richmond, and Suffolk and concurrently with the Southern District, the waters within the counties of Bronx and New York" address:@"271 Cadman Plaza East\nBrooklyn, NY 11201" website:@"http://www.justice.gov/usao/districts/nye.html" email:nil];
    [one addNumber:@"Phone: (718) 254-7000"];
    [one addNumber:@"Fax: (718) 254-6479"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"New York" district:@"Southern District" contact:@"Preet Bharara" summary:@"Bronx, Dutchess, New York, Orange, Putnam, Rockland, Sullivan, Westchester" address:@"One St. Andrewís Plaza\nNew York, NY 10007" website:@"http://www.justice.gov/usao/districts/nys.html" email:nil];
    [one addNumber:@"Phone: (212)637-2200"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"New York" district:@"Western District" contact:@"William J. Hochul, Jr." summary:@"Allegany, Cattaraugus, Chautauqua, Chemung, Erie, Genesee, Livingston, Monroe, Niagara, Ontario, Orleans, Schuyler, Seneca, Steuben, Wayne, Wyoming, Yates" address:@"138 Delaware Ave.\nBuffalo, NY 14202" website:@"http://www.justice.gov/usao/districts/nyw.html" email:nil];
    [one addNumber:@"Phone: (716) 843-5700"];
    [one addNumber:@"Fax: (716)551-3052"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"North Carolina" district:@"Western District" contact:@"Anne M. Tompkins" summary:@"Alexander, Alleghany, Anson, Ashe, Avery, Buncombe, Burke, Caldwell, Catawba, Cherokee, Clay, Cleveland, Gaston, Graham, Haywood, Henderson, Iredell, Jackson, Lincoln, McDowell, Macon, Madison, Mecklenburg, Mitchell, Polk, Rutherford, Swain, Transylvania, Union, Watauga, Wilkes, Yancey" address:@"227 West Trade Street, Suite 1650\nCharlotte, NC 28202" website:@"http://www.justice.gov/usao/districts/ncw.html" email:nil];
    [one addNumber:@"Phone: (704) 344-6222"];
    [one addNumber:@"Fax: (704) 344-6629"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"North Carolina" district:@"Eastern District" contact:@"Thomas G. Walker" summary:@"Beaufort, Bertie, Bladen, Brunswick, Camden, Carteret, Chowan, Columbus, Craven, Cumberland, Currituck, Dare, Duplin, Edgecombe, Franklin, Gates, Granville, Greene, Halifax, Harnett, Hertford, Hyde, Johnston, Jones, Lenoir, Martin, Nash, New Hanover, Northampton, Onslow, Pamlico, Pasquotank, Pender, Perquimans, Pitt, Robeson, Sampson, Tyrrell, Vance, Wake, Warren, Washington, Wayne, Wilson " address:@"310 New Bern Avenue Federal Building, Suite 800 Raleigh,\n North Carolina 27601-1461" website:@"http://www.justice.gov/usao/districts/nce.html" email:nil];
    [one addNumber:@"Phone: (919) 856-4530"];
    [one addNumber:@"Fax: (919) 856-4487"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"North Carolina" district:@"Middle District " contact:@"Ripley Rand" summary:@"Alamance, Cabarrus, Caswell, Chatham, Davidson, Davie, Durham,  Forsythe, Guilford, Hoke, Lee, Montgomery, Moore, Orange, Person, Randolph, Richmond, Rockingham, Rowan, Scotland, Stanly, Stokes, Surry, Yadkin" address:@"101 South Edgeworth Street, 4th Floor\nGreensboro, NC 27401" website:@"http://www.justice.gov/usao/districts/ncm.html" email:nil];
    [one addNumber:@"Phone: (336) 333-5351"];
    [one addNumber:@"Fax: (336) 333-5438"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"North Dakota" district:@"District of North Dakota" contact:@"Timothy Q. Purdon" summary:@"Adams, Barnes, Benson, Billings, Bottineau, Bowman, Burke, Burleigh,  Cass, Cavalier, Dickey, Divide, Dunn, Eddy, Emmons, Foster,  Golden Valley, Grand Forks, Grant, Griggs, Hettinger, Kidder, LaMoure, Logan,  McHenry, McIntosh, McKenzie, McLean, Mercer, Morton, Mountrail, Nelson,  Oliver, Pembina, Pierce, Ramsey, Ransom, Renville, Richland, Rolette,  Sargent, Sheridan, Sioux, Slope, Stark, Steele, Stutsman, Towner,  Traill, Walsh, Ward, Wells, Williams" address:@"655 First Ave. North Suite 250\nFargo, ND 58102-4932" website:@"http://www.justice.gov/usao/districts/nd.html" email:nil];
    [one addNumber:@"Phone: (701) 297-7400"];
    [one addNumber:@"Fax: (701) 297-7405"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Ohio" district:@"Nothern District" contact:@"Steven M. Dettelbach" summary:@"Allen, Ashland, Ashtabula, Auglaize, Carroll, Columbiana, Crawford, Cuyahoga, Defiance, Erie, Fulton, Geauga, Hancock, Hardin, Henry, Holmes, Huron, Lake, Lorain, Lucas, Mahoning, Marion, Medina, Mercer, Ottawa, Paulding, Portage,  Putnam, Richland, Sandusky, Seneca, Stark, Summit, Trumbull, Tuscarawas, Van Wert, Williams, Woods, Wayne, Wyandot" address:@"801 West Superior Avenue, Suite 400\nCleveland, OH 44113-1852" website:@"http://www.justice.gov/usao/districts/ohn.html" email:nil];
    [one addNumber:@"Phone: (216) 622-3600"];
    [one addNumber:@"Fax: (216) 522-3370"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Ohio" district:@"Southern District" contact:@"Carter M. Stewart" summary:@"Adams, Athens, Belmont, Brown, Butler, Champaign, Clark, Clermont, Clinton, Coshocton, Darke, Delaware, Fairfield, Fayette, Franklin, Gallia, Greene, Guernsey, Hamilton, Harrison, Highland, Hocking, Jackson, Jefferson, Knox, Lawrence, Licking, Logan, Madison, Meigs, Miami, Monroe, Montgomery, Morgan, Morrow, Muskingum, Noble, Perry, Pickaway, Pike, Preble, Ross, Scioto, Shelby, Union, Vinton, Warren, Washington" address:@"303 Marconi Boulevard, Suite 200\nColumbus, OH 43215" website:@"http://www.justice.gov/usao/districts/ohs.html" email:nil];
    [one addNumber:@"Phone: (614) 469-5715"];
    [one addNumber:@"Fax: (614) 469-2200"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Oklahoma " district:@"Western District" contact:@"Sanford C. Coats" summary:@"Alfalfa, Beaver, Beckham, Blaine, Caddo, Canadian, Cimarron, Cleveland, Comanche, Cotton, Custer, Dewey, Ellis, Garfield, Garvin, Grady, Grant, Greer, Harmon, Harper, Jackson, Jefferson, Kay, Kingfisher, Kiowa, Lincoln, Logan, McClain, Major, Noble, Oklahoma, Payne, Pottawatomie, Roger Mills, Stephens, Texas, Tillman, Washita, Woods, Woodward" address:@"Suite 400 210 West Park Avenue+F56\nOklahoma City, OK 73102" website:@"http://www.justice.gov/usao/districts/okw.html" email:nil];
    [one addNumber:@"Phone: (405) 553-8700"];
    [one addNumber:@"Fax: (405) 553-8888"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Oklahoma " district:@"Northern District" contact:@"Danny C. Williams, Sr." summary:@"Craig, Creek, Delaware, Mayes, Nowata, Osage, Ottawa, Pawnee, Rogers, Tulsa,Washington" address:@"110 West 7th Street, Suite 300\nTulsa, OK 74119" website:@"http://www.justice.gov/usao/districts/okn.html" email:nil];
    [one addNumber:@"Phone: (918) 382-2700"];
    [one addNumber:@"Fax: (918)560-7938"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Oklahoma " district:@"Eastern District" contact:@"Mark F. Green" summary:@"Adair, Atoka, Bryan, Carter, Cherokee, Choctaw, Coal, Haskell, Hughes, Johnston, Latimer, Le Flore Love, McCurtain, McIntosh, Marshall, Murray, Muskogee, Okfuskee, Okmulgee, Pittsburg, Pontotoc, Pushmataha, Seminole, Sequoyah, and Wagoner" address:@"1200 West Okmulgee\nMuskogee, OK 74401" website:@"http://www.justice.gov/usao/districts/oke.html" email:nil];
    [one addNumber:@"Phone: (918)684-5100"];
    [one addNumber:@"Fax: (918) 684-5130"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Oregon" district:@"district Oregon" contact:@"Amanda Marshall" summary:@"" address:@"1000 SW Third Ave Suite 600\nPortland, Oregon 97204" website:@"http://www.justice.gov/usao/districts/or.html" email:nil];
    [one addNumber:@"Phone: (503) 727-1000"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Pennsylvania" district:@"Western District" contact:@"David J. Hickton" summary:@"Allegheny, Armstrong, Beaver, Bedford, Blair, Butler, Cambria, Clarion, Clearfield, Crawford, Elk, Erie, Fayette, Forest, Greene, Indiana, Jefferson, Lawrence, McKean, Mercer, Somerset, Venango, Warren, Washington, Westmoreland" address:@"700 Grant Street, Suite 4000\nPittsburgh, PA 15219" website:@"http://www.justice.gov/usao/districts/paw.html" email:nil];
    [one addNumber:@"Phone: (412) 644-3500"];
    [one addNumber:@"Fax: (412) 644-4549"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Pennsylvania" district:@"Eastern District" contact:@"Zane David Memeger" summary:@"Berks, Bucks, Chester, Delaware, Lancaster, Lehigh, Montgomery, Northampton and Philadelphia" address:@"615 Chestnut Street, Suite 1250\nPhiladelphia, PA 19106" website:@"http://www.justice.gov/usao/districts/pae.html" email:nil];
    [one addNumber:@"Phone: (215) 861-8200"];
    [one addNumber:@"Fax: (215)861-8618"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Pennsylvania" district:@"Middle District " contact:@"Peter J. Smith" summary:@"Adams, Bradford, Cameron, Carbon, Centre, Clinton, Columbia, Cumberland, Dauphin, Franklin, Fulton, Huntingdon, Juniata, Lackawanna, Lebanon, Luzerne, Lycoming, Mifflin, Monroe, Montour, Northumberland, Perry, Pike, Potter, Schuylkill, Snyder, Sullivan, Susquehanna, Tioga, Union, Wayne, Wyoming and York" address:@"Suite 220 Federal Building\n228 Walnut Street" website:@"http://www.justice.gov/usao/districts/pam.html" email:nil];
    [one addNumber:@"Phone: (717) 221-4482"];
    [one addNumber:@"Fax: (717) 221-4582"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Rhode Island" district:@"District of Rhode Island" contact:@"Peter F. Neronha" summary:@"Bristol, Kent , Newport ,Providence, Washington " address:@"50 Kennedy Plaza 8th Floor\nProvidence, RI 02903" website:@"http://www.justice.gov/usao/districts/ri.html" email:nil];
    [one addNumber:@"Phone: (401) 709-5000"];
    [one addNumber:@"Fax: (401) 709-5001"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"South Carolina" district:@"District of South Carolina" contact:@"Bill Nettles" summary:@"Abbeville , Aiken , Allendale , Anderson , Bamberg , Barnwell , Beaufort , Berkeley , Calhoun , Charleston , Cherokee , Chester, Chesterfield , Clarendon , Colleton , Darlington , Dillon , Dorchester, Edgefield, Fairfield, Florence, Georgetown, Greenville, Greenwood, Hampton, Horry, Jasper, Kershaw, Lancaster, Laurens, Lee, Lexington, Marion, Marlboro, McCormick, Newberry, Oconee, Orangeburg, Pickens, Richland, Saluda, Spartanburg, Sumter, Union, Williamsburg, York  " address:@"1441 Main Street, Suite 500\nColumbia, SC 29201" website:@"http://www.justice.gov/usao/districts/sc.html" email:nil];
    [one addNumber:@"Phone: (803) 929-3000"];
    [one addNumber:@"Fax: (803) 254-2912"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"South Dakota" district:@"District of South Dakota" contact:@"Brendan Johnson" summary:@"Aurora, Beadle, Bennett, Bon Homme, Brookings, Brown, Brule, Buffalo, Butte, Campbell, Charles Mix, Clark, Clay, Codington, Corson, Custer, Davison Day, Deuel, Dewey, Douglas, Edmunds, Fall River, Faulk, Grant, Gregory, Haakon, Hamlin, Hand, Hanson, Harding, Hughes, Hutchinson, Hyde, Jackson Jerauld, Jones, Kingsbury, Lake, Lawrence, Lincoln, Lyman, Marshall, McCook , McPherson, Meade, Mellette, Miner, Minnehaha, Moody, Pennington, Perkinsm, Potter, Roberts, Sanborn, Shannon, Spink, Stanley, Sully, Todd, Tripp, Turner, Union, Walworth, Yankton, Ziebach  " address:@"P.O. Box 2638\nSioux Falls, SD 57101-2638" website:@"http://www.justice.gov/usao/districts/sd.html" email:nil];
    [one addNumber:@"Phone: (605)330-4400"];
    [one addNumber:@"Fax: (605) 330-4410"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Tennesee" district:@"Western District" contact:@"Edward L. Stanton III" summary:@"Benton, Carroll, Chester, Crockett, Decatur, Dyer, Fayette, Gibson, Hardeman, Hardin, Haywood, Henderson, Henry, Lake, Lauderdale, Madison, McNairy, Obion, Perry, Shelby, Tipton and Weakley" address:@"800 Clifford Davis Federal Office Building\nMemphis, TN 38103" website:@"http://www.justice.gov/usao/districts/tnw.html" email:nil];
    [one addNumber:@"Phone: (901) 544-4231"];
    [one addNumber:@"Fax: (901) 544-4230"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Tennesee" district:@"Middle District " contact:@"David Rivera" summary:@"Cannon, Cheatham, Clay, Cumberland, Davidson, De Kalb, Dickson, Fentress, Jackson, Giles, Hickman, Houston, Humphreys, Lawrence, Lewis, Marshall, Maury, Macon, Montgomery, Overton, Pickett, Putnam, Robertson, Rutherford, Smith, Stewart, Sumner, Trousdale, Wayne, Williamson, Wilson, White" address:@"110 Ninth Avenue South, Suite A961\nNashville, TN 37203" website:@"http://www.justice.gov/usao/districts/tnm.html" email:nil];
    [one addNumber:@"Phone: (615) 736-5151"];
    [one addNumber:@"Fax: (615) 401-6626"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Tennesee" district:@"Eastern District" contact:@"William C. 'Bill' Killian" summary:@"Anderson, Bedford, Bledsoe, Blount, Bradley, Campbell, Carter, Claiborne, Cocke, Coffee, Franklin, Grainger, Greene, Grundy, Hamblen, Hamilton, Hancock, Hawkins, Jefferson, Johnson, Knox, Lincoln, Loudon, Marion, McMinn, Meigs, Monroe, Moore, Morgan, Polk, Rhea, Roane, Scott, Sequatchie, Sevier, Sullivan, Unicoi, Union, Van Buren, Warren and Washington" address:@"800 Market Street, Suite 211\nKnoxville, TN 37902" website:@"http://www.justice.gov/usao/districts/tne.html" email:nil];
    [one addNumber:@"Phone: (865) 545-4167"];
    [one addNumber:@"Fax: (865) 545-4176"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Texas" district:@"Northern District" contact:@"Sarah R. SaldaÒa" summary:@"Archer, Armstrong,  Bailey, Baylor, Borden, Brisco, Brown, Callahan, Carson, Castro, Childress, Clay, Cochran, Coke, Coleman, Collingsworth, Comanche, Concho, Cottle, Crockett, Crosby, Dallam, Dallas, Dawson, Deaf Smith, Dickens, Donley, Eastland, Ellis, Erath, Fisher, Floyd, Foard, Gaines, Garza, Glasscock, Gray, Hale, Hall, Hansford, Hardeman, Hartley, Haskell, Hemphill, Hockley, Hood, Howard, Hunt, Hutchinson, Irion, Jack, Johnson, Jones, Kaufman, Kent, King, Knox, Lamb, Lipscomb, Lubbock, Lynn, Menard, Mills, Mitchell, Montague, Moore, Motley, Navarro, Nolan, Ochiltree, Oldham, Palo Pinto, Parker, Parmer, Potter, Randall, Reagan, Roberts, Rockwall, Runnels, Schleicher, Scurry, Shackleford, Sherman, Stephens, Sterling, Stonewall, Sutton, Swisher, Tarrant, Taylor, Terry, Throckmorton, Tom Green, Wheeler, Wichita, Wilbarger, Wise, Yoakum and Young" address:@"1100 Commerce Street\nDallas, TX 75242-1699" website:@"http://www.justice.gov/usao/districts/txn.html" email:nil];
    [one addNumber:@"Phone: (214) 659-8600"];
    [one addNumber:@"Fax: (214) 659-8806"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Texas" district:@"Southern District" contact:@"Kenneth Magidson" summary:@"Aransas, Austin, Bee, Brazoria, Brazos, Brooks, Calhoun, Cameron, Chambers, Colorado, De Witt, Duval, Fayette, Fort Bend, Galveston, Goliad, Grimes, Harris, Hidalgo, Jackson, Jim Hogg, Jim Wells, Kenedy, Kleberg, La Salle, Lavaca, Live Oak, Madison, Matagorda, McMullen, Montgomery, Nueces, Refugio, San Jacinto, San Patricio, Starr, Victoria, Walker, Waller, Webb, Wharton, Willacy, Zapata" address:@"1000 Louisiana Street, Ste 2300\nHouston, TX 77002" website:@"http://www.justice.gov/usao/districts/txs.html" email:nil];
    [one addNumber:@"Phone: (713) 567-9000"];
    [one addNumber:@"Fax: (713) 718-3300"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Texas" district:@"Western District" contact:@"Robert Pitman" summary:@"Andrews, Atascosa, Bandera, Bastrop, Bell, Bexar, Blanco, Bosque, Brewster, Burleson, Burnet, Caldwell, Comal, Coryell, Crane, Culberson, Dimmit, Ector, Edwards, El Paso, Falls, Freestone, Frio, Gillespie, Gonzales, Guadalupe, Hamilton, Hays, Hill, Hudspeth, Jeff Davis, Karnes, Kendall, Kerr, Kimble, Kinney, Lampasas, Lee, Leon, Limestone, Llano, Loving, Martin, Mason, Maverick, McCulloch, McLennan, Medina, Midland, Milam, Pecos, Presidio, Real, Reeves, Robertson, San Saba, Somervell, Terrell, Travis, Upton, Uvalde, Val Verde, Ward, Washington, Williamson, Wilson, Winkler, Zavalla" address:@"601 N.W. Loop 410, Suite 600\nSan Antonio, TX 78216" website:@"http://www.justice.gov/usao/districts/txw.html" email:nil];
    [one addNumber:@"Phone: (210) 384-7100"];
    [one addNumber:@"Fax: (210) 384-7105"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Texas" district:@"Eastern District" contact:@"John Malcolm Bales" summary:@"Anderson, Angelina, Bowie, Camp, Cass, Cherokee, Collin, Cook, Delta, Denton, Fannin, Franklin, Grayson, Gregg, Hardin, Harrison, Henderson, Hopkins, Houston, Jasper, Jefferson, Lamar, Liberty, Marion, Morris, Nacogdoches, Newton, Orange, Panola, Polk, Rains, Red River, Rusk, Sabine, San Augustine, Shelby, Smith, Titus, Trinity, Tyler, Upshur, Van Zandt, Wood" address:@"350 Magnolia Avenue, Suite 150\nBeaumont, TX 77701-2237" website:@"http://www.justice.gov/usao/districts/txe.html" email:nil];
    [one addNumber:@"Phone: (409) 839-2538"];
    [one addNumber:@"Fax: (409) 839-2550"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Utah" district:@"District of Utah" contact:@"David B. Barlow" summary:@"Beaver , Box Elder, Cache, Carbon, Daggett, Davis, Duchesne, Emery, Garfield, Grand, Iron, Juab, Kane, Millard, Morgan, Piute, Rich, Salt Lake, San Juan, Sanpete, Sevier, Summit, Tooele, Uintah, Utah, Wasatch, Washington, Wayne, Weber" address:@"185 South State Street Suite 300\nSalt Lake City, UT 84111" website:@"http://www.justice.gov/usao/districts/ut.html" email:nil];
    [one addNumber:@"Phone: (801) 524-5682"];
    [one addNumber:@"Fax: (801) 524-6924"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Vermont" district:@"District of Vermont" contact:@"Tristram J. Coffin" summary:@"Addison, Bennington, Caledonia, Chittenden, Essex, Franklin, Grand Isle, Lamoille, Orange, Orleans, Rutland, Washington, Windham, Windsor" address:@"P.O. Box 570\nBurlington, VT 05402" website:@"http://www.justice.gov/usao/districts/vt.html" email:nil];
    [one addNumber:@"Phone: (802) 951-6725"];
    [one addNumber:@"Fax: (802) 951-6540"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Virginia" district:@"Western District" contact:@"Timothy J. Heaphy" summary:@"Albemarle, Alleghany, Amherst, Appomattox, Augusta, Bath, Bedford, Bland, Botetourt, Buchanan, Buckingham, Campbell, Carroll, Charlotte, Clarke, Craig, Culpeper, Cumberland, Dickenson, Floyd, Fluvanna, Franklin, Frederick, Giles, Grayson, Greene, Halifax, Henry, Highland, Lee, Louisa, Madison, Montgomery, Nelson, Orange, Page, Patrick, Pittsylvania, Pulaski, Rappahannock, Roanoke, Rockbridge, Rockingham, Russell, Scott, Shenandoah, Smyth, Tazewell, Warren, Washington, Wise, Wythe" address:@"310 First Street, SW, Room 906\nRoanoke, VA 24011" website:@"http://www.justice.gov/usao/districts/vaw.html" email:nil];
    [one addNumber:@"Phone: (540) 857-2250"];
    [one addNumber:@"Fax: (540) 857-2614"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Virginia" district:@"Eastern District" contact:@"Neil H. MacBride" summary:@"Accomac, Amelia, Arlington, Brunswick, Caroline, Charles City, Chesterfield, Dinwiddie, Elizabeth City, Essex, Fairfax, Fauquier, Gloucester, Goochland, Greensville, Hanover, Henrico, Isle of Wight, James City, King and Queen, King George, King William, Lancaster, Loudoun, Lunenburg, Mathews, Mecklenburg, Middlesex, New Kent, Norfolk, Northampton, Northumberland, Nottoway, Powhatan, Prince Edward, Prince George, Prince William, Princess Anne, Richmond, Southampton, Spotsylvania, Stafford, Suffolk, Surry, Sussex, Warwick, Westmoreland, York" address:@"2100 Jamieson Ave\nAlexandria, VA 22314" website:@"http://www.justice.gov/usao/districts/vae.html" email:nil];
    [one addNumber:@"Phone: (703) 299-3700"];
    [one addNumber:@"Fax: (703) 299-2584"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Washington" district:@"Western District" contact:@"Jenny A. Durkan" summary:@"Clallam, Clark, Cowlitz, Grays Harbor, Island, Jefferson, King, Kitsap, Lewis, Mason, Pacific, Pierce, San Juan, Skagit, Skamania, Snohomish, Thurston, Wahkiakum, Whatcom" address:@"700 Stewart Street, Suite 5220\nSeattle, WA 98101-1271" website:@"http://www.justice.gov/usao/districts/waw.html" email:nil];
    [one addNumber:@"Phone: (206) 553-7970"];
    [one addNumber:@"Fax: (206) 553-0882"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Washington" district:@"Eastern District" contact:@"Michael C. Ormsby" summary:@"Adams, Asotin, Benton, Chelan, Columbia, Douglas, Ferry, Franklin, Garfield, Grant, Kittitas, Klickitat, Lincoln, Okanogan, Pend Oreille, Spokane, Stevens, Walla Walla, Whitman, and Yakima" address:@"P.O. Box 1494\nSpokane, WA 99210-1494" website:@"http://www.justice.gov/usao/districts/wae.html" email:nil];
    [one addNumber:@"Phone: (509) 353-2767"];
    [one addNumber:@"Fax: (509) 353-2766"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"West Virginia" district:@"Northern District" contact:@"William J. Ihlenfeld, II" summary:@"Barbour, Berkeley, Braxton, Brooke, Calhoun, Doddridge, Gilmer, Grant, Hampshire, Hancock, Hardy, Harrison, Jefferson, Lewis, Marion, Marshall, Mineral, Monongalia, Morgan, Ohio, Pendleton, Pleasants, Pocahontas, Preston, Randolph, Ritchie, Taylor, Tucker, Tyler, Upshur, Webster and Wetzel" address:@"P.O. Box 591\nWheeling, WV 26003-0011" website:@"http://www.justice.gov/usao/districts/wvn.html" email:nil];
    [one addNumber:@"Phone: (304) 234-0100"];
    [one addNumber:@"Fax: (304) 234-0110"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"West Virginia" district:@"Southern District" contact:@"Booth Goodwin" summary:@"Boone, Cabell, Clay, Fayette, Greenbrier, Jackson, Kanawha, Lincoln, Logan, McDowell, Mason, Mercer, Mingo, Monroe, Nicholas, Putnam, Raleigh, Roane, Summers, Wayne, Wirt, Wood and Wyoming" address:@"P.O. Box 1713\nCharleston, WV 25326" website:@"http://www.justice.gov/usao/districts/wvs.html" email:nil];
    [one addNumber:@"Phone: 304-345-2200"];
    [one addNumber:@"Fax: 304-347-7074"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Wisconsin" district:@"Western District" contact:@"John W. Vaudreuil" summary:@"Adams, Ashland, Barron, Bayfield, Buffalo, Burnett, Chippewa, Clark, Columbia, Crawford, Dane, Douglas, Dunn, Eau Claire, Grant, Green, Iowa, Iron, Jackson, Jefferson, Juneau, La Crosse, Lafayette, Lincoln, Marathon, Monroe, Oneida, Pepin, Pierce, Polk, Portage, Price, Richland, Rock, Rusk, Saint Croix, Sauk, Sawyer, Taylor, Trempealeau, Vernon, Vilas, Washburn,  Wood" address:@"660 West Washington Avenue Suite 303\nMadison, WI 53703" website:@"http://www.justice.gov/usao/districts/wiw.html" email:nil];
    [one addNumber:@"Phone: (608) 264-5158"];
    [one addNumber:@"Fax: (608) 264-5172"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Wisconsin" district:@"Eastern District" contact:@"James L. Santelle" summary:@"Brown, Calumet, Dodge, Door, Florence, Fond du Lac, Forest, Green Lake, Kenosha, Kewaunee, Langlade, Manitowoc, Marinette, Marquette, Menominee, Milwaukee, Oconto, Outagamie, Ozaukee, Racine, Shawano, Sheboygan, Walworth, Washington, Waukesha, Waupaca, Waushara, Winnebago" address:@"530 Federal Building\n517 East Wisconsin Avenue" website:@"http://www.justice.gov/usao/districts/wie.html" email:nil];
    [one addNumber:@"Phone: (414) 297-1700"];
    [one addNumber:@"Fax: (414) 297-1738"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Wyoming" district:@"District of Wyoming" contact:@"Christopher A. 'Kip' Crofts" summary:@"Albany Count, Big Horn Count, Campbell, Carbon, Converse, Crook, Fremont,  Goshen, Hot Springs, Johnson, Laramie, Lincoln, Natrona, Niobrara, Park, Platte, Sheridan, Sublette, Sweetwater, Teton, Uinta, Washakie, Weston  " address:@"P. O. Box 668 Cheyenne,\nWY 82003-0668" website:@"http://www.justice.gov/usao/districts/wy.html" email:nil];
    [one addNumber:@"Phone: (307) 772-2124"];
    [one addNumber:@"Fax: (307) 772-2123"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"District of Columbia" district:@"District of Columbia" contact:@"Ronald C. Machen Jr" summary:nil address:@"555 Fourth Street, NW\nWashington, DC 20530" website:@"http://www.justice.gov/usao/districts/dc.html" email:nil];
    [one addNumber:@"Phone: (202) 252-7566"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"Districts of Guam & Northern Mariana Islands" district:@"Districts of Guam & Northern Mariana Islands" contact:@"Alicia Anne Garrido Limtiaco" summary:nil address:@"Sirena Plaza, 108 Hernan Cortez, Suite 500\nHagatna, GU 96910" website:@"http://www.justice.gov/usao/districts/gu.html" email:nil];
    [one addNumber:@"Phone: (671) 472-7332"];
    [one addNumber:@"Fax: (671) 472-7334"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"District of Puerto Rico" district:@"District of Puerto Rico" contact:@"Rosa Emilia RodrÌguez-VÈlez" summary:nil address:@"Torre ChardÛn, Suite 1201350 Carlos ChardÛn Street\nSan Juan, PR 00918" website:@"http://www.justice.gov/usao/districts/pr.html" email:nil];
    [one addNumber:@"Phone: (787) 766-5656"];
    [one addNumber:@"Fax: (787) 771-4043"];
    [districtAttornies addObject:one];
    one = [[HTAllianceData alloc]init:@"Office Of The Attorney General" state:@"District of the Virgin Islands" district:@"District of the Virgin Islands" contact:@"Ronald W. Sharpe" summary:nil address:@"Room 260 5500 Veterans Drive\nSt. Thomas, VI 00802-6424" website:@"http://www.justice.gov/usao/districts/vi.html" email:nil];
    [one addNumber:@"Phone: (340) 774-5757"];
    [one addNumber:@"Fax: (340) 776-3474"];
    [districtAttornies addObject:one];

    
    
    
    one =[[HTAllianceData alloc]init:@"Los Angeles County District Attorney's Office" state:@"California" district:@"Los Angeles County" contact:@"Jackie Lacey" summary:nil address:@"District Attorney's Office\nCounty of Los Angeles\n210 West Temple Street, Suite 18000\nLos Angeles, CA 90012-3210" website:@"http://da.co.la.ca.us/feedback.htm" email:@"webmail@da.lacounty.gov"];
    [one addNumber:@"Telephone (213)974-3512"];
    [one addNumber:@"Fax (213)974-1484"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Miami-Dade Office Of The State Attorney" state:@"Florida" district:@"Miami" contact:@"Katherine Fernandez Rudle" summary:nil address:@"1350 N.W. 12 Avenue\nMiami, FL 33136-2111" website:@"http://www.miamisao.com/contactus/index.htm" email:nil];
    [one addNumber:@"(305)547-0100"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Fulton Country District Attorney's Office" state:@"Georgia" district:@"Fulton Country" contact:@"Paul L. Howard Jr." summary:nil address:@"136 Pryor Street, SW, Third Floor\nAtlanta, GA 30303" website:@"http://www.atlantada.org/contact_us/index.php" email:nil];
    [one addNumber:@"Phone: (404)612-4981"];
    [one addNumber:@"Fax: (404)893-2769"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Wyandotte County District Attorney's Office" state:@"Kansas" district:@"Wyandotte County" contact:@"Jerome A. Gorman" summary:nil address:@"Criminal Justice Complex\n710 N. 7th St\nSuite 10" website:@"http://www.wycokck.org/dept.aspx?id=172&menu_id=946" email:nil];
    [one addNumber:@"Phone: 913-573-2851"];
    [one addNumber:@"Fax: 913-573-2948"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Orleans Parish District Attorney's Office" state:@"Louisiana" district:@"Orleans Parish" contact:@"Leon A. Cannizzaro, Jr." summary:nil address:@"619 South White Street\nNew Orleans, Louisiana 70119" website:@"http://orleansda.com/contact/" email:nil];
    [one addNumber:@"(504)822-2414"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"Shelby County District Attorney's Office" state:@"Tennessee" district:@"Shelby County" contact:@"Amy Weirich" summary:nil address:@"201 Poplar Avenue\n3rd Floor\nMemphis, Tennessee 38103" website:@"http://www.scdag.com/contact-us" email:nil];
    [one addNumber:@"Phone:	(901)222-1300"];
    [one addNumber:@"Fax: (901)222-1305"];
    [USattorneys addObject:one];
    one = [[HTAllianceData alloc]init:@"El Paso County District Attorney's Office" state:@"Texas" district:@"El Paso County" contact:@"Jaime Esparza" summary:nil address:@"500 E. San Antonio, 2nd Floor\nEl Paso County Courthouse\nEl Paso, Texas 79901" website:@"http://www.epcounty.com/DA/contact.htm" email:@"daesparza@epcounty.com"];
    [one addNumber:@"Phone: (915)546-2059"];
    [one addNumber:@"Fax: (915)533-5520"];
    [one addNumber:@"Victim Assistance (915)546-2091"];
    [USattorneys addObject:one];
    
    
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
