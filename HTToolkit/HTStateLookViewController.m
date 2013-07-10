//
//  HTStateLookViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 6/3/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTStateLookViewController.h"
#import "HTStateLawData.h"
#import "HTStateLawViewController.h"

@interface HTStateLookViewController ()

@end

@implementation HTStateLookViewController
@synthesize states, labels;

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
    states = [[NSMutableArray alloc]init];
    labels = [[NSMutableArray alloc]init];
    
    //Alabama
    HTStateLawData *one = [[HTStateLawData alloc]init:@"Section 13A-6-152 Human trafficking in The First Degree" summary:@"A person has committed the crime of Human Trafficking in the first degree if they have knowingly subjected another to forced labor or sexual servitude or knowingly obtaining or causing a minor to engage in sexual servitude." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-152/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-153 Human Trafficking in The Second Degree" summary:@"A person commits a second degree crime for Human Trafficking if they knowingly benefit from one's participation in forced labor or sexual servitude or knowingly recruits or transports another for the purpose of forced labor or sexual servitude." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-153/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-154 Evidence of Certain Facts or Conditions Not Deemed a Defense" summary:@"Evidence of the specified facts or conditions shall not constitue a defense in a prosecution for human trafficking in the first or second degree or preclude a finding of a violation" link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-154/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13A-6-155 Mandatory Restitution" summary:@"A person or entity convicted of any violation of this article shall be ordered to pay mandatory restitution to the victim, prosecutorial, or law enforcement entity, with the proceeds from property forfeited under 13A-6-156 applied first to payment or restitution." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-155/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-156-Forfeiture of profits or proceeds and interest in property" summary:@"" link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-156/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-157-Civil Action by victims; relief rewarded" summary:@"" link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-157/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-158-Limitation Period" summary:@"" link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-158/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-159-Affirmitive Defense" summary:@"" link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-159/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-160-Concurrent prosecuting authority; separate offenses" summary:@"" link:@"http://law.onecle.com/alabama/criminal-code/13A-6-160.html" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 50 (2012)-Hotline Posting" summary:@"" link:@"http://legiscan.com/AL/text/SB50/2012" state:@"Alabama"];
    [self insertNewObject:one];
    
    
    
    //Alaska
    one = [[HTStateLawData alloc]init:@"11.41.360-Human trafficking in the first degree" summary:@"" link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-41/sec-11-41-360/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.41.365-Human trafficking in the second degree" summary:@"" link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-41/sec-11-41-365/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.41.370-Definitions" summary:@"" link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-41/sec-11-41-370/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.110-Sex trafficking in the first degree" summary:@"" link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-110/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.120-Sex trafficking in the second degree" summary:@"" link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-120/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.130-Sex trafficking in the third degree" summary:@"" link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-130/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.135-Sex trafficking in the fourth degree" summary:@"" link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-135/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.145-Asset Forefeiture" summary:@"" link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-145/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 210 (2012)-Human Trafficking Task Force" summary:@"" link:@"http://legiscan.com/AK/text/SB210/2011" state:@"Alaska"];
    [self insertNewObject:one];
    
    
    
    //Arizona
    one = [[HTStateLawData alloc]init:@"13-705-Dangerous crime against children; sentences; definitions" summary:@"" link:@"http://law.justia.com/codes/arizona/2010/title13/13-705.html" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1306-Unlawfully obtaining labor or services; classification" summary:@"" link:@"http://law.justia.com/codes/arizona/2010/title13/13-1306.html" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1307-Sex trafficking; classification" summary:@"" link:@"http://law.justia.com/codes/arizona/2011/title13/section13-1307/" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1308-Trafficking of persons for forced labor or services; classification; definitions" summary:@"" link:@"" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1309-Restitution" summary:@"" link:@"http://law.justia.com/codes/arizona/2011/title13/section13-1309" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1310-Communication Interception" summary:@"" link:@"http://law.justia.com/codes/arizona/2005/title13/03010.html" state:@"Arizona"];
    [self insertNewObject:one];
    
    
    
    
    //Arkansas
    one = [[HTStateLawData alloc]init:@"5-11-108-Trafficking of Persons" summary:@"" link:@"http://law.justia.com/codes/arkansas/2010/title-5/subtitle-2/chapter-11/5-11-108" state:@"Arkansas"];
    [self insertNewObject:one];
    
    
    
   
    //California
    one = [[HTStateLawData alloc]init:@"181  Infringement of personal liberty" summary:@"Anyone who assumes or attemps to assume the rights of ownership of another or buys or attempts to buy a person has committed a crime punishable by imprisonment." link:@"http://www.state.gov/documents/organization/135993.pdf" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"186 Distribution of proceeds from forfeiture sale" summary:@"Should any items be forfeited and sold, the money should be distributed as documented to specified funds, accounts, and programs." link:@"http://law.justia.com/codes/california/2005/pen/186-186.8.html" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"236.1 Human Trafficking" summary:@"Any person who deprives or violates the personal liberty of another with the intent to obtain forced labor or services, is guilty of human trafficking and shall be punished by imprisonment  and a fine of not more than five hundred thousand dollars ($500,000)." link:@"http://law.justia.com/codes/california/2012/pen/part-1/title-8/chapter-8/section-236.1" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@" 236.1(c) Human Trafficking of Minors " summary:@"Any person who causes, induces, or persuades, or attempts to cause, induce, or persuade, a person who is a minor at the time of commission of the offense to engage in a commercial sex act, with the intent to effect or maintain a violation of certain statues is guilty of human trafficking." link:@"http://law.justia.com/codes/california/2012/pen/part-1/title-8/chapter-8/section-236.1" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"236.2 Duty of law enforcement agencies to use due diligence to identify victims of human trafficking, Indicators" summary:@"Law enforcement agencies shall use due diligence to identify all victims of human trafficking, regardless of the citizenship of the person. When an officer comes across a person who has been deprived of their personal liberty or exhibits signs of human trafficking." link:@"http://law.justia.com/codes/california/2012/pen/part-1/title-8/chapter-8/section-236.2/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"236.3 Real property used to facilitate violation of [Human Trafficking] shall have nuisance procedures applied" summary:@"Upon conviction of a violation of Section 236.1, if real property is used to facilitate the commission of the offense, the procedures for determining whether the property constitutes a nuisance and the remedies imposed therefor as provided in Article 2 (commencing with Section 11225) of Chapter 3 of Title 1 of Part 4 shall apply." link:@"http://law.justia.com/codes/california/2012/pen/part-1/title-8/chapter-8/section-236.3" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@" 236.5 Duty of law enforcement agencies upon encounter with victim of human trafficking regarding LEA endorsements" summary:@"Within 15 business days of the first encounter with a victim of human trafficking, as defined by Section 236.1, law enforcement agencies shall provide brief letters that satisfy the following Law Enforcement Agency (LEA) endorsement regulations." link:@"http://law.justia.com/codes/california/2011/pen/part-1/236-237/236.5/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"266 (k) Additional fines; Use for child sexual abuse prevention and counseling and to serve minor victims of human trafficking" summary:@"Upon the conviction of any person for a violation ofSection 266h, 266i, or 266j, the court may, in addition to any otherpenalty or fine imposed, order the defendant to pay an additionalfine not to exceed five thousand dollars, which will fund child sexual exploitation and child sexual abuse victim counseling centers and prevention programs." link:@"http://law.justia.com/codes/california/2005/pen/261-269.html" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"273.7 Disclosure of trafficking or domestic violence shelter" summary:@"Domestic violence shelter and trafficking shelter means a confidential location that provides emergency housing on a 24-hour basis for victims of sexual assault, spousal abuse, or both, and their families or human trafficking." link:@"http://law.justia.com/codes/california/2012/pen/part-1/title-9/chapter-2/section-273.7/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"293 Publication of information regarding victim of sex offense or human trafficking" summary:@"An employee of a law enforcement agency who personally receives a report from a person, alleging that the person making the report has been the victim of a sex offense, or was forced to commit an act of prostitution because he or she is the victim of human trafficking shall inform that person that his or her name will become a matter of public record unless he or she requests that it not become a matter of public record." link:@"http://law.justia.com/codes/california/2011/pen/part-1/290-294/293/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"784.8 Severence of counts in case of human trafficking" summary:@"When charges alleging multiple violations of Section 236.1 that involve the same victim or victims in multiple territorial jurisdictions are filed in one county pursuant to this section, the court shall hold a hearing to consider whether the matter should proceed in the county of filing, or whether one or more counts should be severed." link:@"http://law.justia.com/codes/california/2010/pen/777-795.html" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13519.14 Training and guidelines for handling human trafficking complaints" summary:@"The commission shall implement by January 1, 2007, a course or courses of instruction for the training of law enforcement officers in California in the handling of human trafficking complaints and also shall develop guidelines for law enforcement response to human trafficking." link:@"http://law.justia.com/codes/california/2011/pen/part-4/13510-13519.15/13519.14/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14023 Priorities" summary:@"The Attorney General shall give priority to matters involving organized crime, gang activities, drug trafficking, human trafficking, and cases involving a high degree of risk to the witness. Special regard shall also be given to the elderly, the young, battered, victims of domestic violence, the infirm, the handicapped, and victims of hate incidents." link:@"http://law.justia.com/codes/california/2011/pen/part-4/14020-14033/14023/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18259.7 Pilot Program in Los Angeles to address needs of sexually exploited minors" summary:@"The County of Los Angeles, contingent upon local funding, may establish a pilot project consistent with this chapter to develop a comprehensive, replicative, multidisciplinary model to address the needs and effective treatment of commercially sexually exploited minors who have been arrested or detained by local law enforcement for a violation of subdivision." link:@"http://law.justia.com/codes/california/2012/wic/division-9/part-6/chapter-4.4/section-18259.7/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13283 Noncitizen human trafficking victims have access to refugee cash assistance" summary:@"noncitizen victims of trafficking, domestic violence, and other serious crimes have access to refugee cash assistance, and refugee employment social services set forth in this chapter, to the same extent as individuals who are admitted to the United States as refugees." link:@"http://law.justia.com/codes/california/2012/wic/division-9/part-3/chapter-5.5/section-13283/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"AB 1956 Tattoo Removal for Juvenile Victims of Trafficking" summary:@"Existing law establishes a pilot program requiring the Division of Juvenile Facilities to purchase 2 medical laser devices for the removal of tattoos, as specified, from eligible participants who are at-risk youth, ex-offenders, and current or former gang members, as specified and establishes the California Voluntary Tattoo Removal Program." link:@"http://www.leginfo.ca.gov/pub/11-12/bill/asm/ab_1951-2000/ab_1956_bill_20120223_introduced.pdf" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"AB 2040 Record Expungement for Victims of Human Trafficking" summary:@"Existing law authorizes the court, upon petition from a person who has reached 18 years of age, to seal all records relating to the person’s case in the custody of a juvenile court if the person has not been subsequently convicted of a felony or misdemeanor involving moral turpitude, and if rehabilitation has been attained to the satisfaction of the court." link:@"http://leginfo.legislature.ca.gov/faces/billNavClient.xhtml?bill_id=201120120AB2040" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"AB 2212 Civil Damages" summary:@"The bill would divide civil penalties collected through the nuisance provisions, in cases of human trafficking, between the Victim-Witness Assistance Fund, to be available upon appropriation by the Legislature to the California Emergency Management Agency to fund grants for human trafficking victim services and prevention programs, and the city attorney and city prosecutor or district attorney." link:@"http://leginfo.legislature.ca.gov/faces/billNavClient.xhtml?bill_id=201120120AB2212" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"AB 2466 Asset Forfeiture" summary:@"This bill would authorize the prosecuting agency, at the same time as the filing of a complaint or indictment charging human trafficking, to file a petition for protective relief necessary to preserve property or assets that could be used to pay for remedies relating to human trafficking, including, but not limited to, restitution and fines." link:@"http://leginfo.legislature.ca.gov/faces/billNavClient.xhtml?bill_id=201120120AB2466" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"AB 1193 Hotline Posting" summary:@"This bill would require specified businesses and other establishments, upon the availability of a model notice developed by the Department of Justice, to post a notice, as specified, that contains information related to slavery and human trafficking, including information related to specified nonprofit organizations that provide services in support of the elimination of slavery and human trafficking." link:@"http://leginfo.legislature.ca.gov/faces/billNavClient.xhtml?bill_id=201120120SB1193" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 1091 Witness Support for Victims" summary:@"This bill would expand the list of cases in which a prosecuting witness may have support persons to include, among others, cases involving human trafficking, prostitution, child exploitation, and obscenity, as specified." link:@"http://www.leginfo.ca.gov/pub/11-12/bill/sen/sb_1051-1100/sb_1091_bill_20120215_introduced.html" state:@"California"];
    [self insertNewObject:one];
    
    
    
    
    //Colorado
    one = [[HTStateLawData alloc]init:@"18-3-411-Sex offenses against children" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=S&statecd=CO&sessionyr=2012&TOCId=11921&userid=GUEST9&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3-412-Habitual sex offenders against children - indictment or information - verdict of the jury" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=&statecd=CO&sessionyr=2012&TOCId=11922&userid=PRODSG&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3-501-Trafficking in adults" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=&statecd=CO&sessionyr=2012&TOCId=11934&userid=PRODSG&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3-502-Trafficking in children" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=&statecd=CO&sessionyr=2012&TOCId=11935&userid=PRODSG&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3-503-Coercion of Involuntary servitude" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=&statecd=CO&sessionyr=2012&TOCId=11936&userid=PRODSG&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-6-404-Procurement of a child for sexual exploitation" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=S&statecd=CO&sessionyr=2012&TOCId=12114&userid=GUEST9&cvfilename=&noheader=1&Interface=" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-13-128-Smuggling of humans" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?userid=GUEST9&interface=NLL&statecd=CO&codesec=18-13-128&sessionyr=2013&Title=18&datatype=S&noheader=1&nojumpmsg=0" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-17-103(5)-Definitions (Colorado Organized Crime Control Act): 18-3-501--503 constitute 'Racketeering activity'" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?userid=GUEST9&interface=&statecd=CO&codesec=18-17-103&sessionyr=2013&Title=18&datatype=S&noheader=1&nojumpmsg=0" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-13-303-Asset Forfeiture" summary:@"" link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=S&statecd=CO&sessionyr=2012&TOCId=11137&userid=GUEST9&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-21-127-Civil Remedy" summary:@"" link:@"http://www.state.co.us/gov_dir/leg_dir/olls/sl2012a/sl_174.htm" state:@"Colorado"];
    [self insertNewObject:one];
    
            
    
    
    
    //Connecticut
    one = [[HTStateLawData alloc]init:@"Sec. 46a-4b-Training program on trafficking in persons" summary:@"" link:@"http://law.justia.com/codes/connecticut/2011/title46a/chap812/Sec46a-4b.html" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 46a-170-Trafficking in Persons Council. Membership. Duties. Reports." summary:@"" link:@"http://law.justia.com/codes/connecticut/2011/title46a/chap814f/Sec46a-170.html" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 52-571 i-Action for damages resulting from trafficking in persons" summary:@"" link:@"http://law.justia.com/codes/connecticut/2012/title-52/chapter-925/section-52-571aa" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 53-394-Definitions (a) 'Racketeering activity' [includes trafficking in persons]" summary:@"" link:@"http://law.justia.com/codes/connecticut/2012/title-53/chapter-949c/section-53-394" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 53a-192a-Trafficking in Persons" summary:@"" link:@"http://law.justia.com/codes/connecticut/2009/title53a/chap952/Sec53a-192a.html" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 54-234-Development of response system for victims of offense of trafficking in persons" summary:@"" link:@"http://law.justia.com/codes/connecticut/2012/title-54/chapter-968/section-54-234" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 54-36p-Asset Forfeiture" summary:@"" link:@"http://law.justia.com/codes/connecticut/2012/title-54/chapter-959/section-54-36p" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 54-41b-Authorized interception of communications" summary:@"" link:@"http://law.justia.com/codes/connecticut/2011/title54/chap959a/Sec54-41b.html" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 53a-82-Protection for Minors; Safe Harbor" summary:@"" link:@"http://law.justia.com/codes/connecticut/2011/title53a/chap952/Sec53a-82.html" state:@"Connecticut"];
    [self insertNewObject:one];
            
    
    
    
    //Delaware
    one = [[HTStateLawData alloc]init:@"11-787-Trafficking of persons and involuntary servitude" summary:@"" link:@"http://law.justia.com/codes/delaware/2012/title11/c005/sc02/787/" state:@"Delaware"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"1502-Racketeering Statute" summary:@"" link:@"http://law.justia.com/codes/delaware/2011/title11/c015.html" state:@"Delaware"];
    [self insertNewObject:one];
    
   
    
    
    

    //Florida
    one = [[HTStateLawData alloc]init:@"796.035 Selling or buying of minors into sex trafficking or prostitution; penalties" summary:@"A parent or guardian who knowingly transfers custody of a minor into prostitution is committing a felony of the first degree" link:@"http://law.justia.com/codes/florida/2012/titlexlvi/chapter796/section796.035/" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"796.045 Sex trafficking; penalties" summary:@"Any person providing a means for a person who is being forced to engage in prostitution to be trafficked is committing a felony in the second degree" link:@"http://law.justia.com/codes/florida/2010/TitleXLVI/chapter796/796_045.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"787.05 Unlawfully obtaining labor or services" summary:@"Any person knowingly obtaining labor or services through means considered trafficking is committing a felony in the second degree" link:@"http://law.justia.com/codes/florida/2010/TitleXLVI/chapter787/787_05.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"787.06 Human Trafficking" summary:@"Human trafficking is considered a form of modern-day slavery.  Any young child, teenager, or adult who is subject to force, fraud, or coersion for forced sexual exploitation or forced labor is trafficked." link:@"http://law.justia.com/codes/florida/2010/TitleXLVI/chapter787/787_06.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"772.104 Civil cause of action " summary:@"Any person proven to be injured because of a violation of the provisions of s.772.103 is entitled to certain renumerations." link:@"http://law.justia.com/codes/florida/2010/TitleXLV/chapter772/772_104.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"409.953 Rulemaking authority for refugee assistance program" summary:@" The Department of Children and Family Services has the authority to administer the refugee assistance program in accordance with 45 C.F.R. parts 400 and 401. A petition in circuit court may establish custody for an unaccompanied minor." link:@"http://law.justia.com/codes/florida/2010/TitleXXX/chapter409/409_953.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"895.02 HT to Racketeering Statute" summary:@"“Racketeering activity” means to commit, to attempt to commit, to conspire to commit, or to solicit, coerce, or intimidate another person to commit a number of acts." link:@"http://www.flsenate.gov/Laws/Statutes/2011/Chapter895/All" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"934.07 Authorized interception of communications" summary:@"The Governor, the Attorney General, the statewide prosecutor, or any state attorney may authorize an application to a judge of competent jurisdiction for, and such judge may approve the interception of, wire, oral, or electronic communications." link:@"http://law.justia.com/codes/florida/2010/TitleXLVII/chapter934/934_07.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 99 Sexually Exploited Children" summary:@"Creates the “Florida Safe Harbor Act,” which is intended to provide a more coordinated response to address the child welfare service needs of sexually exploited children who are dependent." link:@"http://www.flsenate.gov/Committees/BillSummaries/2012/html/114" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39.401 Child Found to be Dependent Taken into Custody" summary:@"A child considered a dependent may be taken into custody based upon sworn testimony before or after the petition is filled or by an authorized agent if there is probable cause supporting finding abuse, neglect, abandonment, etc." link:@"http://law.justia.com/codes/florida/2010/TitleV/chapter39/39_401.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39.524 Safe Harbor Placement" summary:@"A dependent child 6 years of age or older who is found to be a victim of sexual exploitation must be assessed for placement in a safe house." link:@"http://law.justia.com/codes/florida/2012/titlev/chapter39/partvi/section39.524/" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"409.1678 Safe Harbor for Children who are victims of sexual exploitation" summary:@"Provides detailed definitions for relevant terms and provisions for providing safe housing." link:@"http://law.justia.com/codes/florida/2012/titlexxx/chapter409/parti/section409.1678/" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"960.065 Victims of Sexual Exploitation are Eligible for awards" summary:@"Provides guidelines for award eligibility for vicitims" link:@"http://www.flsenate.gov/Laws/Statutes/2012/960.065" state:@"Florida"];
    [self insertNewObject:one];
    
    
    
    //Georgia
    one = [[HTStateLawData alloc]init:@"16-5-46 Trafficking of persons for labor or sexual servitude" summary:@"Gives defnitions for the terms coersion, deception, and sexual servitude" link:@"http://law.justia.com/codes/georgia/2010/title-16/chapter-5/article-3/16-5-46" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19-7-5(b)(4) Definition sexual exploitation" summary:@"The purpose of this Code section is to provide for the protection of children whose health and welfare are adversely affected and further threatened by the conduct of those responsible for their care and protection" link:@"http://law.justia.com/codes/georgia/2010/title-19/chapter-7/article-1/19-7-5" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-6-13.3. Proceeds from pimping; forfeiture; distribution" summary:@"Any proceeds or money which is used, intended for use, used in any manner to facilitate, or derived from a violation of Code Section 16-6-11, wherein any of the persons involved in performing an act of prostitution is under the age of 18, is contraband and forfeited to the state and no person shall have a property interest in it. " link:@"http://law.justia.com/codes/georgia/2010/title-16/chapter-6/16-6-13-3" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@" 35-1-16. Training law enforcement officers investigating crimes involving trafficking persons for labor or sexual servitude" summary:@"The Georgia Peace Officer Standards and Training Council and the Georgia Public Safety Training Center shall establish guidelines and procedures for the incorporation of training materials and information" link:@"http://www.itislaw.com/NLLXML/getcode.asp?datatype=S&codesec=35-1-16&statecd=GA&sessionyr=2013&TOCId=16989&userid=PRODSG&cvfilename=&docname=&Interface=NLL&noheader=1" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HR 1151 Human Trafficking Task Force" summary:@"Explains the structure and purpose of the Joint Human Trafficking Task Force in Georgia" link:@"http://www.legis.ga.gov/legislation/en-US/display/20112012/HR/1151" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"17-17-6 Notification to victim of accused's pretrial release and of victims' rights and the availability of victims' compensation and services" summary:@"A law enforcer must inform a victim of the availablity of compensation, community based victim services, and the possibility of the release of the accused." link:@"http://law.justia.com/codes/georgia/2010/title-17/chapter-17/17-17-6" state:@"Georgia"];
    [self insertNewObject:one];
    
    
    
    
    //Hawaii
    one = [[HTStateLawData alloc]init:@"707-A-Definitions" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-780" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-B-Labor trafficking in the first degree" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-781" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-C-Labor trafficking in the second degree" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-782/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-D-Additional sentencing considerations; victims held in servitude" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-783/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-E-Extended terms of imprisonment, labor trafficking offenses" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-784" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-F-Restitution for victims of labor trafficking" summary:@"" link:@"https://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-785/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-G-Nonpayment of wages" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-786" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-H-Unlawful conduct with respect to documents" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-787/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"712A-4-Covered offenses. Offenses for which property is subject to forfeiture" summary:@"" link:@"http://law.justia.com/codes/hawaii/2010/division5/title37/chapter712a/712a-4/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"803-44-Application for court order to intercept wire, oral, or electronic communications" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title38/chapter803/803-44/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"712-1201-Sex Trafficking Statute-Promoting prostitution; definition of terms" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter712/712-1201" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"712-1202-Sex Trafficking Statute-Promoting prostitution in the first degree" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter712/712-1202" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"842-1-Organized Crime: Definitions" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division4/title36/chapter663j/663j-2" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"663-2-Civil Remedy:Definitions: 'Coerce, Promoting prostitution'" summary:@"" link:@"http://law.justia.com/codes/hawaii/2010/division4/title36/chapter663/663-2/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"663-3-Cause of action for coercion into prostitution" summary:@"" link:@"https://law.justia.com/codes/hawaii/2010/division4/title36/chapter663j/663j-3/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"663-4-Evidence of coercion" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division4/title36/chapter663j/663j-4" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"663-5-Recovering Damages" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division4/title36/chapter663j/663j-5" state:@"Hawaii"];
    [self insertNewObject:one];
    
    
    
    
    //Idaho
    one = [[HTStateLawData alloc]init:@"18-8602-Human trafficking defined" summary:@"" link:@"http://law.justia.com/codes/idaho/2011/title18/chapter86/18-8602" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-5601-Interstate trafficking in prostitution" summary:@"" link:@"http://law.justia.com/codes/idaho/2011/title18/chapter56/18-5601" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-5602-Procurement - Definition and penalty" summary:@"" link:@"http://law.justia.com/codes/idaho/2012/title-18/chapter-56/section-18-5602/" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-5609-Inducing persons under eighteen years of age into prostitution" summary:@"" link:@"http://law.justia.com/codes/idaho/2010/title18/t18ch56sect18-5609.html" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8502(ff)-Criminal Gang Enforcement Act - Definitions" summary:@"" link:@"http://law.justia.com/codes/idaho/2011/title18/chapter85/18-8502" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8601-Legislative Intent (and law enforcement training)" summary:@"" link:@"http://law.justia.com/codes/idaho/2012/title-18/chapter-86/section-18-8601/" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8603-Penalties" summary:@"" link:@"http://law.justia.com/codes/idaho/2011/title18/chapter86/18-8603" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8604-Restitution - Rehabilitation" summary:@"" link:@"https://law.justia.com/codes/idaho/2011/title18/chapter86/18-8604/" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8605-Human trafficking victim protection" summary:@"" link:@"http://law.justia.com/codes/idaho/2011/title18/chapter86/18-8605" state:@"Idaho"];
    [self insertNewObject:one];
    
    
    
    
    
    //Illinois
    one = [[HTStateLawData alloc]init:@"720 ILCS 5/10-9-Trafficking in persons, involuntary servitude, and related offenses" summary:@"" link:@"http://law.justia.com/codes/illinois/2012/chapter-720/act-720-ilcs-5/title-iii" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"720 ILCS 5/124B-300-Forfeiture; Involuntary servitude and trafficking of persons" summary:@"" link:@"http://law.justia.com/codes/illinois/2010/chapter725/072500050HArt_124B.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 1907 5/§ 33G-3.-Definitions" summary:@"" link:@"http://www.ilga.gov/legislation/fulltext.asp?DocName=&SessionId=84&GA=97&DocTypeId=HB&DocNum=1907&GAID=11&LegID=54594" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"§725 ILCS 5/108B-3.-Authorization for the interception of private communication" summary:@"" link:@"http://law.justia.com/codes/illinois/2010/chapter725/072500050HArt_108B.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 11-14-Prostitution" summary:@"" link:@"http://law.justia.com/codes/illinois/2010/chapter720/072000050HArt_11.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 3-The Abused and Neglected Child Reporting Act" summary:@"" link:@"http://law.justia.com/codes/illinois/2005/chapter32/1460.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 2-3-Neglected or abused minor" summary:@"" link:@"http://law.justia.com/codes/illinois/2005/chapter50/60384.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 2-18-Evidence" summary:@"" link:@"http://law.justia.com/codes/illinois/2005/chapter50/60384.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec 11-19-3-Vehicle impoundment" summary:@"" link:@"http://law.justia.com/codes/illinois/2012/chapter-625/act-625-ilcs-5/chapter-11" state:@"Illinois"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"740 ILCS 128/5;15-Access to Civil Damages" summary:@"" link:@"" state:@"Illinois"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"116-2.1-Motion to vacate prostitution convictions for sex trafficking victims" summary:@"" link:@"http://law.justia.com/codes/illinois/2012/chapter-725/act-725-ilcs-5/title-vi" state:@"Illinois"];
    [self insertNewObject:one];
    
    
    
    
    //Indiana
    one = [[HTStateLawData alloc]init:@"35-42-3.5-1-Promotion of human trafficking, sexual trafficking of a minor, human trafficking" summary:@"" link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch3.5.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-3.5-2-Restitution to victim" summary:@"" link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch3.5.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-3.5-3-Victim has civil cause of action against a person convicted of offense - Damages recoverable - Statute" summary:@"" link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch3.5.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-3.5-4-Additional rights of victim" summary:@"" link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch3.5.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-1-1-Murder" summary:@"" link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch1.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-2-3-Kidnapping, criminal confinement, or interference with custody" summary:@"" link:@"http://law.justia.com/codes/indiana/2011/title35/article42/chapter2/" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"5-2-1-9-Rules - Implementation of chapter - Town marshal basic training program- Police chief executive training program" summary:@"" link:@"http://law.justia.com/codes/indiana/2011/title5/article2/chapter1/" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"34-24-1-1-Seizure of vehicles or other property" summary:@"" link:@"http://law.justia.com/codes/indiana/2011/title34/article24/chapter1/" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-45-6-1-Racketeer Influenced Corrupt Organizations Act- Definitions" summary:@"" link:@"http://law.justia.com/codes/indiana/2010/title35/ar45/ch6.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"IC 35-33.5-1-3-'Designated offense' defined" summary:@"" link:@"http://law.justia.com/codes/indiana/2010/title35/ar33.5/ch1.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"IC 5-2-6-3-Purposes of institute; sex and violent offender directory" summary:@"" link:@"http://law.justia.com/codes/indiana/2011/title5/article2/chapter6/" state:@"Indiana"];
    [self insertNewObject:one];
    
    
    
    
    
    //Iowa
    one = [[HTStateLawData alloc]init:@"710 A.1-Definitions" summary:@"" link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710 A.2-Human Trafficking" summary:@"" link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710 A.3-Affirmative defense" summary:@"" link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710 A.4-Restitution" summary:@"" link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710 A.5-Certification" summary:@"" link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"915.51-General rights of human trafficking victim" summary:@"" link:@"http://law.justia.com/codes/iowa/2011/titlexvi/subtitle3/chapter915/915-51" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710A.2A-Solicitation of commercial sexual activity" summary:@"" link:@"http://law.justia.com/codes/iowa/2013/titlexvi/subtitle1/chapter710a/710a-2a" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"809A.3.-Conduct giving rise to forfeiture" summary:@"" link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=809A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"809A.4-Property subject to forfeiture" summary:@"" link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=809A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"80B.11-Rules: Training for Law Enforcement" summary:@"" link:@"http://law.justia.com/codes/iowa/2011/titleiii/subtitle1/chapter80b/80b-11" state:@"Iowa"];
    [self insertNewObject:one];
    

    
    
    
    //Kansas
    one = [[HTStateLawData alloc]init:@"21-3446  Trafficking" summary:@"Human trafficking is the recruitment, harboring, transportation, etc. of a person for labor or services through force, fraud, or coersion and benefitting from it either financially or by recieving anything of value." link:@"http://law.justia.com/codes/kansas/2011/Chapter21/Article34/21-3446.html" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-3447 Aggravated trafficking" summary:@"Aggrivated trafficking is human trafficking with addition to extremely harsh circumstances, being committed for the sexual gratification of the defendant or another, resulting in death, etc. " link:@"http://law.justia.com/codes/kansas/2011/Chapter21/Article34/21-3447.html" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-4643 Mandatory term of imprisonment for certain sex offenders; exceptions" summary:@"a defendant who is 18 years of age or older and is convicted of certain crimes committed on or after July 1, 2006, shall be sentenced to a term of imprisonment for life with a mandatory minimum term of imprisonment of not less than 25 years unless the court determines that the defendant should be sentenced differently." link:@"http://law.justia.com/codes/kansas/2009/chapter21/statutes_12180.html" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"22-4902 Offender registration - Definitions" summary:@"Provides numerous categories of offenders including sex offender, violent offender, drug offender, and other in state and out of state registered offenders." link:@"http://law.justia.com/codes/kansas/2012/chapter22/article49/section22-4902/" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21–5426 Human trafficking; aggravated human trafficking" summary:@"Human trafficking is the purposeful use of force, fraud, or coersion to subject someone into involuntary servitude or forced labor.  Aggrivated human trafficking means there is the addition of kidnapping, sexual gratification of the defendant, or death." link:@"http://kslegislature.org/li_2012/b2011_12/statute/021_000_0000_chapter/021_054_0000_article/021_054_0026_section/021_054_0026_k/" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"60-4104 Covered offenses and conduct giving rise to forfeiture" summary:@"Acts such as prostitution, counterfeiting, human trafficking and aggrivated human trafficking, mistreatment of a depenent adult, identity theft and identity fraud, and forgery." link:@"http://law.justia.com/codes/kansas/2012/chapter60/article41/section60-4104/" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"75-453 Victim Assistance" summary:@"An adult family member may apply for an address designated by the secretary of state in the stead of a minor of incapacitated victim." link:@"http://law.justia.com/codes/kansas/2012/chapter75/article4/section75-453/" state:@"Kansas"];
    [self insertNewObject:one];
    
    
    
    
    
    //Kentucky
    one = [[HTStateLawData alloc]init:@"529.100-Human trafficking" summary:@"" link:@"http://law.justia.com/codes/kentucky/2012/chapter-529/529.100/" state:@"Kentucky"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"529.110-Promoting human trafficking" summary:@"" link:@"http://law.justia.com/codes/kentucky/2011/529-00/529-110/" state:@"Kentucky"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"422.295-Confidentiality of communications between human trafficking victim and caseworker" summary:@"" link:@"http://law.justia.com/codes/kentucky/2011/422-00/422-295/" state:@"Kentucky"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"431.063-Human trafficking victim not to be incarcerated pending trial - Exceptions" summary:@"" link:@"http://law.justia.com/codes/kentucky/2011/431-00/431-063/" state:@"Kentucky"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"439.3401-Parole for violent offenders - Applicability of section to victim of domestic violence or abuse - Time of offense" summary:@"" link:@"http://law.justia.com/codes/kentucky/2011/439-00/439-3401/" state:@"Kentucky"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"529.01-Definitions" summary:@"" link:@"" state:@"Kentucky"];
    //[self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"506.12-Engaging in organized crime" summary:@"" link:@"" state:@"Kentucky"];
    //[self insertNewObject:one];
    
    
    
    

    
    //Louisiana
    one = [[HTStateLawData alloc]init:@"14:46.2  Human Trafficking" summary:@"It is unlawful for any person to knowingly harbor, transport, recruit, etc. another person through fraud, force, or coersion to provide labor or services." link:@"http://law.justia.com/codes/louisiana/2011/rs/title14/rs14-46-2" state:@"Louisiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@" 14:46.3 Trafficking of children for sexual purposes" summary:@"It is unlawful for any person to knowingly recruit, harbor, transport, provide, sell, purchase, obtain, or maintain the use of a person under the age of eighteen years for the purpose of engaging in commercial sexual activity." link:@"http://law.justia.com/codes/louisiana/2011/rs/title14/rs14-46-3" state:@"Louisiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"539.1 Forfeited property related to certain sex crimes; exempt property; allocation of forfeited property" summary:@"When property is forfeited under certai provisions the district attorney may authorize public sale or hold a public auction unless the property was stolen or the owner did not know the property was used for the criminal act." link:@"http://law.justia.com/codes/louisiana/2011/rs/title15/rs15-539-1" state:@"Louisiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"541 Definitions; Sex offenders, sexually violent predators, and child predators" summary:@"Definitions for Registration of sex offenders." link:@"http://law.justia.com/codes/louisiana/2011/rs/title15/rs15-541" state:@"Louisiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"1308 Authorization for interception of wire or oral communications" summary:@"With approval of the district attorney or assistant district attorney, the authorized attorney general may authorize an application to a judge in whose district the interception of wire or oral communications shall take place." link:@"http://law.justia.com/codes/louisiana/2011/rs/title15/rs15-1308/" state:@"Louisiana"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"S Concurrent Resolution 58 Human Trafficking Task Force" summary:@"" link:@"" state:@"Louisiana"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 435 Posting of a Human Trafficking Hotline" summary:@"Requires National Human Trafficking Resource Center hotline information to be posted at sexually oriented businesses, certain businesses that have been found to be a nuisance for prostitution, truck stops and rest stops." link:@"http://www.ncsl.org/issues-research/justice/human-trafficking-legislation-2011-and-2012.aspx" state:@"Louisiana"];
    [self insertNewObject:one];
    
    
    
    
    
    //Maine
    one = [[HTStateLawData alloc]init:@"4701-Remedies for human trafficking" summary:@"" link:@"http://law.justia.com/codes/maine/2012/title5/chapter337c/section4701/" state:@"Maine"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"17A-301-Kidnapping" summary:@"" link:@"http://law.justia.com/codes/maine/2005/title17-ach0sec0/title17-asec301.html" state:@"Maine"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"17A-302-Criminal restraint" summary:@"" link:@"http://law.justia.com/codes/maine/2005/title17-ach0sec0/title17-asec302.html" state:@"Maine"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15 5821-Subject property (forfeiture)" summary:@"" link:@"http://law.justia.com/codes/maine/2012/title15/chapter517/section5821/" state:@"Maine"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"LD 1731-852-Aggravated promotion of prostitution" summary:@"" link:@"http://www.mainelegislature.org/legis/bills/bills_125th/billtexts/SP059103.asp" state:@"Maine"];
    [self insertNewObject:one];
    
    
    
    
    
    //Maryland
    one = [[HTStateLawData alloc]init:@"11-303-Human Trafficking" summary:@"" link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-11/subtitle-3/11-303" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"3-701-Extortion" summary:@"" link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-3/subtitle-7/3-701" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15-207-Posting of sign relating to human trafficking" summary:@"" link:@"http://law.justia.com/codes/maryland/2010/business-regulation/title-15/subtitle-2/15-207" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"3-324-Sexual solicitation of minors" summary:@"" link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-3/subtitle-3/3-324" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"3-704-Extortion by false accusation" summary:@"" link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-3/subtitle-7/3-704" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"3-705-Extortion by verbal threat" summary:@"" link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-3/subtitle-7/3-705" state:@"Maryland"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"7-432-Human trafficking awareness" summary:@"" link:@"" state:@"Maryland"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"10-406-Authorized wire, oral, or electronic interceptions" summary:@"" link:@"http://safehouseofhope.org/wp-content/uploads/2012/02/Maryland-State-Report.pdf" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 352/HB 607 (2012) § 19–103.-NHTRC Number posting in truck stops" summary:@"" link:@"http://www.azgovernor.gov/HTTF/documents/Materials/HTTF_051513_OtherStatesEffortsChart.pdf" state:@"Maryland"];
    [self insertNewObject:one];
    
    
    
    
    
    //Massachusetts
    one = [[HTStateLawData alloc]init:@"HB 3808-50-Trafficking of persons for sexual servitude; trafficking of persons under 18 years for sexual servitude; trafficking by business entities; penalties; tort actions brought by victims" summary:@"" link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-51-Trafficking of persons for forced service; victims under 18 years; trafficking by business entities; penalties; tort actions brought by victims" summary:@"" link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-Asset Forfeiture" summary:@"" link:@"http://www.mass.gov/legis/journal/desktop/Current%20Agenda%202011/H3808.pdf" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-66A-Victims of Human Trafficking Trust Fund" summary:@"" link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-1.-Definitions" summary:@"" link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-2.-Enterprise crime; penalties" summary:@"" link:@"http://www.mass.gov/legis/journal/desktop/Current%20Agenda%202011/H3808.pdf" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-39K-Child welfare service needs of sexually exploited children" summary:@"" link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-Human Trafficking Task Force" summary:@"" link:@"http://www.mass.gov/legis/journal/desktop/Current%20Agenda%202011/H3808.pdf" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808- Safe Harbor" summary:@"" link:@"http://www.mass.gov/legis/journal/desktop/Current%20Agenda%202011/H3808.pdf" state:@"Massachusetts"];
    [self insertNewObject:one];
    
   
    
    
    
    //Michigan
    one = [[HTStateLawData alloc]init:@"750.159g(gg)-Definitions; racketeering" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-xxva/section750-159g/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(a)-Definitions" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462a/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(b)-Forced labor or services; threat of physical harm; prohibition; violation as felony; penalty" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462b/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(c)-Forced labor or services; physical restraint; prohibition; violation as felony; penalty" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462c/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(d)-Forced labor or services; abuse of law or legal process; prohibition; violation as felony; penalty" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462d/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(e)-Forced labor or services; destroying, concealing, removing, confiscating, or possessing passport or immigration document of another person; prohibition; violation as felony; penalty" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462e/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(f)-Forced labor or services; blackmail or threat of financial harm; prohibition; violation as felony; penalty" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462f/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(g)-Use of minor for child sexually abusive activity; prohibition; violation as felony; penalty" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462g/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(h)-Prohibited acts; violation as felony; penalty" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462h/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(i)-Kidnapping, criminal sexual conduct, or attempt to kill; penalty" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462i/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(j)-Providing or obtaining labor or services of another person by force, fraud, or coercion; recruiting, etc, person for labor or services for purposes of holding person in involuntary servitude or debt bondage; construction with other lawsl sentencing" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462j/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"600.4701-Definitions: Asset Forfeiture" summary:@"" link:@"http://law.justia.com/codes/michigan/2006/mcl-chap600/mcl-600-4701.html" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"600.4702-Property subject to seizure and forfeiture; encumbrances; substituted proceeds of crime." summary:@"" link:@"http://law.justia.com/codes/michigan/2006/mcl-chap600/mcl-600-4702.html" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.448.-Soliciting and accosting" summary:@"" link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxvii/section750-448/" state:@"Michigan"];
    [self insertNewObject:one];
    
    
    
    
    
    //Minnesota
    one = [[HTStateLawData alloc]init:@"256J.08-Minnesota family investment program; Definitions" summary:@"" link:@"http://law.justia.com/codes/minnesota/2010/245-267/256J/256J_08.html" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"256J.32-Documenting, verifying, and recertifying eligibility" summary:@"" link:@"http://law.justia.com/codes/minnesota/2005/245/256j-s32.html" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.78-Statewide human trafficking assessment" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-78/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.785-Trafficking study" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-785/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.79-Trafficking study; analysis and use of data" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-79/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.795-Trafficking victim assistance" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-795/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.7955-Human trafficking task force" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-7955/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.7957-Toll free hotline for trafficking victims" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-7957/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.281-Definitions" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-281/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.282-Labor trafficking" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-282/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.283-Unlawful conduct with respect to documents in furtherance of labor or sex trafficking" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-283/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.284-Labor or sex trafficking crimes; defenses; civil liability; corporate liability" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-284/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.321-Prostitution and sex trafficking; definitions" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-321/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.322-Solicitation, inducement, and promotion of prostitution; sex trafficking" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-322/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.5315(5)(b)-Disposition of forfeited property" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-5315/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"611A.036-Prohibition against employer retaliation" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/611a/611a-036/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"624.712(sub.5)-Definitions. -Subd. 5. Crime of Violence" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/624/624-712/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.902-Definitions: Investigative Tools" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-902/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.903-Racketeering" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-903/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SF 1, Article 4-Sexually Exploited Youth" summary:@"" link:@"http://www.njjn.org/uploads/digital-library/Minnesota-Safe-Harbor-Youth-Victims-of-Sexual-Exploitation-SF-1.pdf" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.093-Juvenile Prostitutes; Diversion or Child Protection Proceedings" summary:@"" link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-093/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SF 1 (2011)-Safe Harbor for Sex Trafficked Youth; Sexually Exploited Youth; Statewide Victim Services Model" summary:@"" link:@"http://www.njjn.org/uploads/digital-library/Minnesota-Safe-Harbor-Youth-Victims-of-Sexual-Exploitation-SF-1.pdf" state:@"Minnesota"];
    [self insertNewObject:one];
    
    
    
    
    
    //Mississippi
    one = [[HTStateLawData alloc]init:@"97-3-54-Anti-human trafficking act; short title" summary:@"" link:@"http://law.justia.com/codes/mississippi/2010/title-97/3/97-3-54/" state:@"Mississippi"];
    [self insertNewObject:one];
    /*one = [[HTStateLawData alloc]init:@"97-3-54.1-Anti-human trafficking act; prohibited conduct; penalty" summary:@"" link:@"http://law.justia.com/codes/mississippi/2010/title-97/3/97-3-54/" state:@"Mississippi"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"97-3-54.2-Anti-human trafficking act; destruction, concealment, or confiscation of passport or other immigration document for purpose of preventing person’s freedom of movement or ability to travel; penalties" summary:@"" link:@"http://law.justia.com/codes/mississippi/2010/title-97/3/97-3-54/" state:@"Mississippi"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"97-3-54.3-Anti-human trafficking act; aiding, abetting, or conspiring to violate anti-human trafficking provisions" summary:@"" link:@"" state:@"Mississippi"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"97-3-54.4-Anti-human trafficking act; definitions" summary:@"" link:@"http://law.justia.com/codes/mississippi/2010/title-97/3/97-3-54/" state:@"Mississippi"];
    [self insertNewObject:one];
    */
    
    
    
    
    //Missouri
    one = [[HTStateLawData alloc]init:@"566.103-Promotion of online sexual solicitation- advertisements-notification of violation" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566103/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.200-Definitions" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566200/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.203-Abusing an individual through forced labor penalty" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566203/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.206-Trafficking for the purpose of slavery, involuntary servitude, peonage, of forced labor penalty" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566206/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.209-Trafficking for the purpose of sexual exploitation penalty" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566209/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.212-Sexual trafficking of a child penalty" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566212/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.213-Sexual trafficking of a child under age twelve affirmative defense not allowed, when penalty" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566213/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.215-Human trafficking through misuse of documentation" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566215/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.215.1-Contributing to human trafficking-penalty" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566215/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.218-Restitution required for certain offenders" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566218/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.223-Federal Trafficking Victims Protection Act of 2000 to apply" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566223/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.265-Penalties for violation by corporation or business" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566265/" state:@"Missiouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"513.607-Asset Forfeiture" summary:@"" link:@"http://law.justia.com/codes/missouri/2012/titlexxxv/chapter513/section513607/" state:@"Missiouri"];
    [self insertNewObject:one];
    
    
    
    
    
    //Montana
    one = [[HTStateLawData alloc]init:@"45-5-305-Subjecting another to involuntary servitude definitions" summary:@"" link:@"http://law.justia.com/codes/montana/2011/title45/chapter45-5/part45-5-3/section45-5-305/" state:@"Montana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"45-5-306-Trafficking of persons for involuntary servitude" summary:@"" link:@"http://law.justia.com/codes/montana/2011/title45/chapter45-5/part45-5-3/section45-5-306/" state:@"Montana"];
    [self insertNewObject:one];
    
    
    
    
    //Nebraska
    one = [[HTStateLawData alloc]init:@"28-830-Human trafficking; forced labor or services; terms, defined" summary:@"" link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-830/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"28-831-Human trafficking; forced labor or services; prohibited acts; penalties" summary:@"" link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-831/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"28-832-Human trafficking; Attorney General; Department of Health and Human Services; duties" summary:@"" link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-832/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"28-1354-Terms, defined" summary:@"" link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-1354/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"28-1355-Pattern of racketeering activity or collection of an unlawful debt; prohibited acts" summary:@"" link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-1355/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"LB 1145-Training for Law Enforcement" summary:@"" link:@"http://uniweb.legislature.ne.gov/FloorDocs/102/PDF/Slip/LB1145.pdf" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"LB 1145-Human Trafficking Task Force" summary:@"" link:@"http://uniweb.legislature.ne.gov/FloorDocs/102/PDF/Slip/LB1145.pdf" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"LB 1145-Posting of Human Trafficking Hotline" summary:@"http://uniweb.legislature.ne.gov/FloorDocs/102/PDF/Slip/LB1145.pdf" link:@"" state:@"Nebraska"];
    [self insertNewObject:one];
    
    
    
    
    //Nevada
    one = [[HTStateLawData alloc]init:@"200.463-Involuntary servitude; penalties" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.463/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"200.464-Recruiting, enticing, harboring, transporting, providing or obtaining another person to be held in involuntary servitude; benefiting from another person being held in involuntary servitude; penalty" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.464/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"200.465-Assuming rights of ownership over another person; purchase or sale of person; penalty" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.465/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"200.467-Trafficking in persons for financial gain; penalties" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.467/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"200.468-Trafficking in persons for illegal purposes; penalty" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.468/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"613.080-Involuntary servitude prohibited; wages; penalty" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-613/statute-613.080/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"201.300-Pandering: Definition; penalties; exception" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-201/statute-201.300/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"NRS 179.121-Forfeiture of personal property and conveyances used in commission of crime." summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-179/statute-179.121/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"NRS 432B.610-Training for Law Enforcement" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-432b/statute-432b.610/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"NRS 432B.620-Certification of peace officers" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-432b/statute-432b.620/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"NRS 176.515-Vacating Convictions" summary:@"" link:@"http://law.justia.com/codes/nevada/2011/chapter-176/statute-176.515/" state:@"Nevada"];
    [self insertNewObject:one];
    
    
    
    
    
    //New Hampshire
    one = [[HTStateLawData alloc]init:@"633:5-Peonage" summary:@"" link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-5/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:6-Definitions" summary:@"" link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-6/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:7-Trafficking in Persons" summary:@"" link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-7/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:8-Forfeiture of items used in connection with trafficking in persons" summary:@"" link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-8/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:9-Administrative forfeiture of items used in connection with trafficking in persons" summary:@"" link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-9/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:10-Restitution and Compensation" summary:@"" link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-10/" state:@"New Hampshire"];
    [self insertNewObject:one];
    
    
    
    
    //New Jersey
    one = [[HTStateLawData alloc]init:@"2C:13-8-Human Trafficking" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-2c/section-2c-13/2c-13-8/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2C:41-1(a)(1)(z)-Racketeering - Definitions" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-2c/section-2c-41/2c-41-1/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"44:10-34-Definitions relative to welfare reform, eligibility" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-44/section-44-10/44-10-34/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"52:4B-44-Standards for law enforcement agencies to ensure rights of crime victims" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-52/section-52-4b/52-4b-44/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2C:64-1-Property subject to forfeiture" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-2c/section-2c-64/2c-64-1/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2A:4A-21-Purposes" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-2a/section-2a-4a/2a-4a-21/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2A:4A-22-General definitions" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-2a/section-2a-4a/2a-4a-22/" state:@"New Jersey"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"2A:4A-42-Predispositional evaluation" summary:@"" link:@"" state:@"New Jersey"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2A:4A-71-Review and processing of complaints" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-2a/section-2a-4a/2a-4a-71/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2A:4A-74-Court intake service conference" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-2a/section-2a-4a/2a-4a-74/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2C:34-1.-Prostitution and Related Offenses" summary:@"" link:@"http://law.justia.com/codes/new-jersey/2009/title-2c/section-2c-34/2c-34-1/" state:@"New Jersey"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"52:4B-44.1-Establishment of standard protocols for provision of information and services to victims of human trafficking, minors charged with prostitution" summary:@"" link:@"" state:@"New Jersey"];
    //[self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"52:4B-11-Causes of personal injury or death" summary:@"" link:@"" state:@"New Jersey"];
    //[self insertNewObject:one];
    
    
    
    
    
    //New Mexico
    one = [[HTStateLawData alloc]init:@"30-52-1-Human Trafficking" summary:@"" link:@"http://law.justia.com/codes/new-mexico/2011/chapter30/article52/section30-52-1/" state:@"New Mexico"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"30-52-2-Human trafficking; benefits and services for human trafficking victims" summary:@"" link:@"http://law.justia.com/codes/new-mexico/2011/chapter30/article52/section30-52-2/" state:@"New Mexico"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"30-52-3-Temporary Provision; task force to combat human trafficking; membership; duties" summary:@"" link:@"http://law.justia.com/codes/new-mexico/2011/chapter30/article52/section30-52-3/" state:@"New Mexico"];
    [self insertNewObject:one];
    
    
    
    
    //New York
    one = [[HTStateLawData alloc]init:@"230.34-Sex trafficking" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/pen/part-3/title-m/article-230/230.34/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"230.36-Sex trafficking; accomplice" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/pen/part-3/title-m/article-230/230.36/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"135.35-Labor trafficking" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/pen/part-3/title-h/article-135/135.35/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"135.36-Labor trafficking; accomplice" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/pen/part-3/title-h/article-135/135.36/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"440.10-Motion to vacate judgement" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/cpl/part-2/title-m/article-440/440.10" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"311.4-Substitution of petition or funding" summary:@"" link:@"http://law.justia.com/codes/new-york/2006/family-court/fct0311.4_311.4.html" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 447-a-Definitions" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/sos/article-6/title-8-a/447-a/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 447-b-Services for exploited children" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/sos/article-6/title-8-a/447-b/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-aa-Definitions" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-aa/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-bb-Services for victims of human trafficking" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-bb/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-cc-Confirmation as a victim of human trafficking" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-cc/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-dd-Law enforcement assistance with respect to immigration" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-dd/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-ee-Establishment of interagency task force on human trafficking" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-ee/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"460.1-Definitions" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/pen/part-4/title-x/article-460/460.10/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"460.2-Enterprise corruption" summary:@"" link:@"http://law.justia.com/codes/new-york/2012/pen/part-4/title-x/article-460/460.20/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"700.05-Eavesdropping and video surveillance warrants; definitions of terms" summary:@"" link:@"http://law.justia.com/codes/new-york/2010/cpl/part-3/title-t/article-700/700-05" state:@"New York"];
    [self insertNewObject:one];
    
    
    
    
    //North Carolina
    one = [[HTStateLawData alloc]init:@"14-43.10-Definitions" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article10a/section14-4310/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14-43.11-Human Trafficking" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article10a/section14-4311/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14-43.12-Involuntary Servitude" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article10a/section14-4312/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14-43.13-Sexual Servitude" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article10a/section14-4313/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"7A-474.3-Eligible activities and limitations" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter7a/article37a/section7a-4743/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15A-266.3A-DNA sample required for DNA analysis upon arrest for certain offenses" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter15a/article13/section15a-2663a/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15A-832-Responsibilities of the district attorney's office" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter15a/article46/section15a-832/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15C-1-Address confidentiality program. Purpose" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter15c/section15c-1/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15C-3-Address confidentiality program" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter15c/section15c-3/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15C-4-Filing and certification of applications; authorization card" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter15c/section15c-4/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15C-10-Assistance for program applicants" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter15c/section15c-10/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14-2.3-Forfeiture of gain acquired through criminal activity." summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article1/section14-23/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"75D-3-Definitions" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter75d/section75d-3/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB-950-5.3A.-Training for Law Enforcement" summary:@"" link:@"http://votesmart.org/static/billtext/41058.pdf" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB-950- 15.3A.-Establishing Human Trafficking Commission" summary:@"" link:@"http://votesmart.org/static/billtext/41058.pdf" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15A-831-Responsibilities of law enforcement agency" summary:@"" link:@"http://law.justia.com/codes/north-carolina/2010/chapter15a/article46/section15a-831/" state:@"North Carolina"];
    [self insertNewObject:one];
    
    
    
    
    
    //North Dakota
    one = [[HTStateLawData alloc]init:@"12.1-06.1-01-Racketeering Crime" summary:@"" link:@"http://law.justia.com/codes/north-dakota/2012/title-12.1/chapter-12.1-06.1/" state:@"North Dakota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"12.1-40-01-Human trafficking penalty" summary:@"" link:@"http://law.justia.com/codes/north-dakota/2012/title-12.1/chapter-12.1-40/" state:@"North Dakota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"12.1-40-02-Definitions" summary:@"" link:@"http://law.justia.com/codes/north-dakota/2012/title-12.1/chapter-12.1-40/" state:@"North Dakota"];
    [self insertNewObject:one];
    
    
    
    
    //Ohio
    one = [[HTStateLawData alloc]init:@"2905.01-Kidnapping" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-01/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2905.02(A)(3)-Abduction for the purpose of involuntary servitude" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-02/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2905.31-Definitions" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-31/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2905.32-Trafficking in persons" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-32/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2905.33-Unlawful conduct with respect to documents" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-33/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2929.01-Definitions" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2929/section2929-01/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2929.14-Definite prison terms" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2929/section2929-14/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2923.32-Engaging in pattern of corrupt activity" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2923/section2923-32/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2941.1422-Human trafficking specification" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2941/section2941-1422/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2981.02-Asset Forfeiture" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2981/section2981-02/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"109.745-Training for Law Enforcement" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title1/chapter109/section109-745/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"109.73-Training in peace office training schools" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title1/chapter109/section109-73/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"5502.63-Posting of NHTRC Hotline" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title55/chapter5502/section5502-63/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2151.358-Expungment of Record for children" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title21/chapter2151/section2151-358/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2152.021-Safe Harbor Provisions" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title21/chapter2152/section2152-021/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"5101.87-Human Trafficking Fund" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title51/chapter5101/section5101-87to5101-90/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2307.51-Civil Remedy" summary:@"" link:@"http://law.justia.com/codes/ohio/2011/title23/chapter2307/section2307-51/" state:@"Ohio"];
    [self insertNewObject:one];
    
    
    
    
    
    //Oklahoma
    one = [[HTStateLawData alloc]init:@"21-446-Unlawful transport of alien - Concealing, harboring, or sheltering from detection - Destroying, hiding, altering, or keeping documentation" summary:@"" link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-748-Human trafficking for forced labor or forced sexual exploitation" summary:@"" link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-748.2vl-Guidelines for treatment of human trafficking victims - Right to civil action" summary:@"" link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-748.2v2-Guidelines for treatment of human trafficking victims - Right to civil action" summary:@"" link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-1738-Seizure and forfeiture proceedings- Vehicles, airplanes, vessels, etc. used in attempt or commission of certain crimes" summary:@"" link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-866-Offense of Trafficking in Children" summary:@"" link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"22-1402-Definitions for Racketeer-Influenced and Corrupt Organizations Act" summary:@"" link:@"http://law.justia.com/codes/oklahoma/2012/title-22/" state:@"Oklahoma"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //Oregon
    one = [[HTStateLawData alloc]init:@"131.602-Asset Forfeiture" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol4/131/131-602/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.261-Definitions for ORS 163.263 and 163.264" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-261/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.263-Subject another person to involuntary servitude in second degree" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-263/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.264-Involuntary servitude in the first degree" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-264/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.266-Trafficking in persons" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-266/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.269-Victim assertation of defense of duress" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-269/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"166.715-Definitions for Racketeering activity" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol4/166/166-715/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"167.017-Compelling Prostitution" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol4/167/167-017/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"192.854-Services for Human Trafficking Victims" summary:@"" link:@"http://law.justia.com/codes/oregon/2011/vol5/192/192-854/" state:@"Oregon"];
    [self insertNewObject:one];
    
    
    
    
    
    //Pennsylvania
    one = [[HTStateLawData alloc]init:@"18-911-Definition of Racketeering Activity" summary:@"" link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-9/section-911/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3001-Definition" summary:@"" link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-30/section-3001/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3002-Trafficking of persons subjected to forced labor" summary:@"" link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-30/section-3002/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3003-Restitution for offenses" summary:@"" link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-30/section-3003/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3004-Forfeiture" summary:@"" link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-30/section-3004/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    
    
    
    
    
    //Rhode Island
    one = [[HTStateLawData alloc]init:@"11-67-1-Definitions" summary:@"" link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-1/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-2-Involuntary servitude" summary:@"" link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-2/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-3-Trafficking of persons for forced labor or commercial sexual activity" summary:@"" link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-3/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-4-Restitution" summary:@"" link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-4/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-5-Forfeitures" summary:@"" link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-5/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-6-Sex Trafficking of a Minor" summary:@"" link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-6/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-7-Interagency task force on trafficking in persons created - Composition - Duties and responsibilities" summary:@"" link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-7/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-8-Reporting" summary:@"" link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-8/" state:@"Rhode Island"];
    [self insertNewObject:one];
    
    
    
    
    
    //South Carolina
    one = [[HTStateLawData alloc]init:@"16-3-20-Punishment for murder; separate sentencing proceeding when death penalty sought" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-20/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-652(1)(b)-Criminal sexual conduct in the first degree" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-652/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-655(D)(2)(A)(ix)-Criminal sexual conduct with a minor; aggrevating and mitigating circumstances; penalties; repeat offenders" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-655/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2010-Definitions" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2010/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2020-Human Trafficking" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2020/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2040-Restitution for Victims" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2040/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2050-Human Trafficking Task Force" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2050/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2060-Civil Remedy" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2060/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2070-Victim Assistance" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2070/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2080-Shelter for Victims" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2080/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2090-Asset Forfeiture" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2090/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"17-25-45-Life sentence for person convicted for certain crimes" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-17/chapter-25/section-17-25-45/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"23-3-490-Public inspection of offender registry" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-23/chapter-3/section-23-3-490/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"23-3-535-Limitation on places of residence of certain sex offenders; exceptions; violations; local government ordinances; school districts required to provide certain information" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-23/chapter-3/section-23-3-535/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"23-3-540-Electronic monitoring; reporting damage to or removing monitoring device" summary:@"" link:@"http://law.justia.com/codes/south-carolina/2012/title-23/chapter-3/section-23-3-540/" state:@"South Carolina"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //South Dakota
    one = [[HTStateLawData alloc]init:@"22-49-1Human Trafficking Prohibited" summary:@"" link:@"http://law.justia.com/codes/south-dakota/2012/title22/chapter49/22-49-1/" state:@"South Dakota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"22-49-2 First degree human trafficking-felony" summary:@"" link:@"http://law.justia.com/codes/south-dakota/2012/title22/chapter49/22-49-2/" state:@"South Dakota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"22-49-3 Second degree human trafficking-felony" summary:@"" link:@"http://law.justia.com/codes/south-dakota/2012/title22/chapter49/22-49-3/" state:@"South Dakota"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //Tennessee
    one = [[HTStateLawData alloc]init:@"39-13-308  Trafficking for forced labor or services" summary:@"A person commits a trafficking offense if they are knowingly involved in the act of trafficking, either providing or obtaining, for involuntary servitude or are benefitting from it. Also, The court may order restitution to the victims. Trafficking for force labor or services is a Class C felony." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-308/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-309 Trafficking for sexual servitude" summary:@"A person commits a trafficking offense if they are knowingly involved in the act of  trafficking, either providing or obtaining, for sexual services. Trafficking for sexual services is a Class B felony." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-309" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-310 Separate offenses 39-13-308 and 39-13-309" summary:@"39-13-308 and 39-13-309 should be counted as seperate offenses." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-310/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-311 Violations by corporations" summary:@"A corporation can be prosecuted of 39-13-308 and 39-13-309 if an agent committed the crime while authorized by the company." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-311/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-307 Involuntary labor servitude restitution" summary:@"A person commits the offense of involuntary servitude when they force someone into servitude through means such as abuse, threats, physical restraint, and blackmail.  The court may order restitution to the victims as a result of such acts. This is a Class C felony unless the servitude resulted in serious bodily injury, servitude lasted more then a year, or ten or more victims were held at any time." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-307/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-11-703 Asset Forfeiture" summary:@"Any property acquired directly or indirectly in the violaiton is subject to judicial forfeiture." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-11/part-7/39-11-703" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-313 Posting of Tennessee Human Trafficking Resource Center Hotline" summary:@"Any government entity or private business providing certain services is strongly encouraged to post information about the hotline.  All content and contact information from a call is confidential and not open record, except by order of court for a criminal investigation." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=S&statecd=TN&sessionyr=2011&TOCId=12149&userid=PRODSG&cvfilename=&Interface=NLL&noheader=0" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-513 Person under 18 immune from prosecution for prostitution" summary:@"A person under the age of 18 is immune from prosecution for prostitution and cannot be tried as a juvenile or adult and will be provided with the National Human Trafficking Resource Center hotline." link:@"http://www.endslaverytn.org/get-involved/learn/human-trafficking-and-slavery-laws/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 2370 Plan for Victim Services" summary:@"Requires that DHS develop a plan for victim services, including a timeline, expected cost of implementation, etc." link:@"http://www.capitol.tn.gov/Bills/107/Fiscal/HB2492.pdf" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 2489 Civil Remedy" summary:@"A trafficked person may bring a civil action for actual damages,compensatory damages, punitive damages, injunctive relief, any combination of those or any other appropriate relief." link:@"http://legiscan.com/TN/text/HB2489/id/519013/Tennessee-2011-HB2489-Draft.pdf" state:@"Tennessee"];
    [self insertNewObject:one];
    
    
    
    
    //Texas
    one = [[HTStateLawData alloc]init:@"20A.01  Definitions" summary:@"Provides definitions for relavent terms such as child, forced labor or services, sexual conduct, and traffic." link:@"http://law.justia.com/codes/texas/2011/penal-code/title-5/chapter-20a/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"20A.02 Trafficking of persons" summary:@"A person commits an offense if they participate in trafficking with the use of force, fraud, or coersion, if they benefit from the trafficking, if they seek a trafficked individual, etc." link:@"http://law.justia.com/codes/texas/2011/penal-code/title-5/chapter-20a/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"98.002 Liability in tort for trafficking in persons" summary:@"A person who trafficks another or knowingly benefits from the trafficking of another is liable to the person who is trafficked for damages." link:@"http://law.justia.com/codes/texas/2009/civil-practice-and-remedies-code/title-4-liability-in-tort/chapter-98-liability-for-trafficking-of-persons/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"98.003 Damages" summary:@"A person who wins a suit shall be rewarded for actual damages, court costs, attorney fees, and may recover exemplary damages." link:@"http://law.justia.com/codes/texas/2009/civil-practice-and-remedies-code/title-4-liability-in-tort/chapter-98-liability-for-trafficking-of-persons/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"98.004 Cause of action cumulative" summary:@"The cause of action created by this chapter is cumulative of any other remedy provided by common law or statute." link:@"http://law.justia.com/codes/texas/2009/civil-practice-and-remedies-code/title-4-liability-in-tort/chapter-98-liability-for-trafficking-of-persons/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"98.005 Joint and several liability" summary:@"A person engaged in or knowingly benefitting from trafficking is jointly liable with other defendants for the entirety of the damages." link:@"http://law.justia.com/codes/texas/2009/civil-practice-and-remedies-code/title-4-liability-in-tort/chapter-98-liability-for-trafficking-of-persons/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"98.006 Liberal construction and application" summary:@"This chapter shall be liberally construed and applied to promote its underlying purpose to protect persons from human trafficking and provide adequate remedies to victims of human trafficking." link:@"http://law.justia.com/codes/texas/2009/civil-practice-and-remedies-code/title-4-liability-in-tort/chapter-98-liability-for-trafficking-of-persons/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"402.035 Human trafficking prevention task force" summary:@"The office of the attorney general shall establish the human trafficking prevention task force to develop policies and procedures to assist in the prevention and prosecution of human trafficking crimes" link:@"http://law.justia.com/codes/texas/2011/government-code/title-4/subtitle-a/chapter-402/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"421.082(e)(2) Powers and duties" summary:@"Texas Infrastructure Protection Communications Center shall promotion of emergency preparedness, analyze information, and assess threats while preventing or minimizing damage, injury, and loss of life." link:@"http://law.justia.com/codes/texas/2005/gv/004.00.000421.00.html" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"772.006(d),(e),(f) Governor's Criminal Justice Division" summary:@"The trafficking of persons investigation and prosecution account is created in the general revenue fund.  This money may be used for grants to qualified applicants, but the grants may not exceed $10 million in a given fiscal year." link:@"http://law.justia.com/codes/texas/2011/government-code/title-7/chapter-772/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"1701.258 Education and training programs on trafficking of persons" summary:@"The commission by rule shall require an officer first licensed by the commission to complete a one-time basic education and training program on the trafficking of persons." link:@"http://law.justia.com/codes/texas/2011/occupations-code/title-10/chapter-1701" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"1701.402(h) Proficiency certificates" summary:@"As a requirement for an intermediate proficiency certificate, an officer must complete an education and training program on investigative topics." link:@"http://law.justia.com/codes/texas/2011/occupations-code/title-10/chapter-1701" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"42.0191 Finding regarding victims of trafficking or other abuse" summary:@"A judge shall enter a finding upon affirming that the victim of the trial has suffered a severe form of trafficking or substantial physical or mental abuse, regardless of whether it is the subject of the trial or not." link:@"http://law.justia.com/codes/texas/2011/code-of-criminal-procedure/title-1/chapter-42" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"56.01(3) Definitions" summary:@"Provides relevant definitions for terms such as Close relative of a deceased victim, guardian of a victim, and victim." link:@"http://law.justia.com/codes/texas/2005/cr/001.00.000056.00.html" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"59.01 Asset Forfeiture" summary:@"Provides definitions for terms such as attorney representing the state, contraband, crime of violence, interest holder, owner, proceeds, etc." link:@"http://law.justia.com/codes/texas/2005/cr/001.00.000059.00.html" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2 Interception of Communications" summary:@"Provides definitions for terms used on the subject as well as procedures and violations." link:@"http://law.onecle.com/texas/criminal-procedure/18.20.00.html" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"104.07 Posting of NHTRC Hotline" summary:@"The holder of a permit or license under Chapter 25, 26, 28, 32, 69, or 71, other than the holder of a food and beverage certificate, shall display a sign containing specific information and the sign must meet certain requirements." link:@"http://law.justia.com/codes/texas/2011/alcoholic-beverage-code/title-4/chapter-104/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"531.381 Definition of Victim" summary:@"Domestic victim means a victim of trafficking who is a permanent legal resident or citizen of the United States." link:@"http://law.justia.com/codes/texas/2011/government-code/title-4/subtitle-i/chapter-531/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"531.382 Victim Assistance" summary:@"The commission shall develop and implement a program designed to assist domestic victims, including victims who are children, in accessing necessary services." link:@"http://law.justia.com/codes/texas/2011/government-code/title-4/subtitle-i/chapter-531/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"531.384 Training for judges, prosecutors, and law enforcement" summary:@"The commission, with assistance from the Office of Court Administration of the Texas Judicial System, the Department of Public Safety, and local law enforcement agencies, shall create training programs designed to increase the awareness of judges, prosecutors, and law enforcement personnel of information for domestic victims." link:@"http://law.justia.com/codes/texas/2011/government-code/title-4/subtitle-i/chapter-531/" state:@"Texas"];
    [self insertNewObject:one];
    
    
    
    
    //Utah
    one = [[HTStateLawData alloc]init:@"67-5-22.7-Multi-agency strike force to combat violent and other major felony crimes associated with illegal immigration and human trafficking - Fraudulent documents identification unit" summary:@"" link:@"http://law.justia.com/codes/utah/2012/title-67/article-5/section-22/" state:@"Utah"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"76-5-308-Human Trafficking" summary:@"" link:@"http://law.justia.com/codes/utah/2012/title-76/article-5/section-308/" state:@"Utah"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"76-5-309-Human trafficking and human smuggling - penalties" summary:@"" link:@"http://law.justia.com/codes/utah/2012/title-76/article-5/section-309/" state:@"Utah"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"76-5-310-Aggravated human trafficking and aggravated human smuggling - penalties" summary:@"" link:@"http://law.justia.com/codes/utah/2012/title-76/article-5/section-310/" state:@"Utah"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"76-10-1602-Definition of unlawful acticity under corrupt enterprise statute" summary:@"" link:@"http://law.justia.com/codes/utah/2012/title-76/article-10/section-1602/" state:@"Utah"];
    [self insertNewObject:one];
    
    
    
    
    
    
    
    
    
    //Vermont
    one = [[HTStateLawData alloc]init:@"13-2635-Slave traffic" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter59/section2635/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-2635a-Sex trafficking of children; sex trafficking of any person by force, fraud, or coercion" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter59/section2635a/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-5401-Sex offender registration. Law enforcement notification. Definitions" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter167/section5401/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-5411a-Electronic posting of the sex offender registry" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter167/section5411a/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2651-Definitions" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2651/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2652-Human Trafficking" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2652/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2661-Posting of NHTRC Hotline" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2661/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2663-Classification of Victims" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2663/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2662-Civil Remedy" summary:@"" link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2662/" state:@"Vermont"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"13 V.S.A. 2658-Vacating Convictions" summary:@"" link:@"" state:@"Vermont"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"H. 153 (2011)-Task Force" summary:@"" link:@"http://www.leg.state.vt.us/docs/2012/Acts/ACT055.PDF" state:@"Vermont"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //Virginia
    one = [[HTStateLawData alloc]init:@"9.1-102-Training for Law Enforcement" summary:@"" link:@"http://law.justia.com/codes/virginia/2011/title9-1/chapter1/9-1-102/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-47-Abduction and kidnapping defined; punishment" summary:@"" link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter4/18-2-47/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-59-Extortion of money, property or pecuniary benefit" summary:@"" link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter4/18-2-59/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.1-902(E)(4)-Offenses requiring registration" summary:@"" link:@"" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-48-Abduction with intent to extort money or for immoral purpose" summary:@"" link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter4/18-2-48/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-356-Receiving money for procurring person" summary:@"" link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter8/18-2-356/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-513-Definition of Racketeering Activity" summary:@"" link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter13/18-2-513/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"40.1-11.3-Posting of NHTRC Hotline" summary:@"" link:@"http://leg1.state.va.us/cgi-bin/legp504.exe?000+cod+40.1-11.3" state:@"Virginia"];
    [self insertNewObject:one];
   // one = [[HTStateLawData alloc]init:@"258-1-Develop plan for Victim Services" summary:@"" link:@"" state:@"Virginia"];
   // [self insertNewObject:one];
    
    
    
    
    
    //Washington
    one = [[HTStateLawData alloc]init:@"7.68.360-Human trafficking- Coordinated state agency protocols" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title7/7-68/7-68-360.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.73.230-Interception of Communications" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title9/9-73/9-73-230.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.68A.100-Commerical Sexual Abuse of a Minor" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title9/9-68a/9-68a-100.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.68A.101-Promoting Sexual Abuse of a Minor" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title9/9-68a/9-68a-101.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.96.060-Vacating Convictions" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title9/9-96/9-96-060.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9A.40.100-Trafficking" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title9a/9a-40/9a-40-100.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9A.82.100-Civil Remedy" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title9a/9a-82/" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9A.88.0001-Asset Forfeiture" summary:@"" link:@"http://waengage.com/wp-content/uploads/2012/09/WA-Law-Rating-by-Polaris-Project-2012.pdf" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13.32A.030-Safe Harbor Provisions" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title13/13-32a/13-32a-030.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13.40.219-Arrest for prostitution or prostitution loitering - Alleged offender - Victim of severe form of trafficking, commercial sex abuse of a minor" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title13/13-40/13-40-219.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.010-Definitions" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-010.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.020-Disclosure statement" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-020.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.030-Personal jurisdiction" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-030.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.040-Liability" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-040.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.050-Assistance information" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-050.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"47.38.080-Human trafficking informational posters at rest areas" summary:@"" link:@"http://law.justia.com/codes/washington/2011/title47/47-38/47-38-080.html" state:@"Washington"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"SB 6476-Training for Law Enforcement" summary:@"" link:@"" state:@"Washington"];
    //[self insertNewObject:one];
    
    
    
    
    //West Virginia
    one = [[HTStateLawData alloc]init:@"30-29-3-Duties of the Governor’s committee and the subcommittee." summary:@"" link:@"http://law.justia.com/codes/west-virginia/2012/chapter30/article29/30-29-3/" state:@"West Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"30-29-11-Authorizing Training for Law Enforcement" summary:@"" link:@"http://law.justia.com/codes/west-virginia/2011/chapter30/article29/30-29-11/" state:@"West Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"61-2-17-Human Trafficking; Criminal penalties" summary:@"" link:@"http://law.justia.com/codes/west-virginia/2012/chapter61/article2/61-2-17/" state:@"West Virginia"];
    [self insertNewObject:one];
    
    
    
    
    
    //Wisconsin
    one = [[HTStateLawData alloc]init:@"181.1420-Grounds for administrative dissolution" summary:@"" link:@"http://law.justia.com/codes/wisconsin/2011/181/181.1420.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"940.302-Human Trafficking" summary:@"" link:@"http://law.justia.com/codes/wisconsin/2011/940/940.302.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"946.82-Definition of Racketeering Activity" summary:@"" link:@"http://law.justia.com/codes/wisconsin/2011/946/946.82.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"948.051-Trafficking of a Child" summary:@"" link:@"http://law.justia.com/codes/wisconsin/2011/948/948.051.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"968.28-Interception of Communications" summary:@"" link:@"http://law.justia.com/codes/wisconsin/2011/968/968.28.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    
    
    
    
    
    //Wyoming
    one = [[HTStateLawData alloc]init:@"6-2-701.-Definitions" summary:@"" link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-702.-Human trafficking in first degree" summary:@"" link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-703.-Human trafficking in second degree" summary:@"" link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-704.-Forced labor" summary:@"" link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-705.-Sexual servitude of an adult" summary:@"" link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-706.-Sexual servitude of a minor" summary:@"" link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-707.-Patronizing a victim of sexual servitude" summary:@"" link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-708.-Victim defenses; vacating convictions" summary:@"" link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(HTStateLawData *) obj
{
    if (!labels) {
        labels = [labels init];
    }
    if(![labels containsObject:obj.state]){
        [labels addObject:obj.state];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
    if(!states){
        states = [states init];
    }
    if(![states containsObject:obj]){
        [states insertObject:obj atIndex:0];
    }
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
    return labels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stateCell" forIndexPath:indexPath];
    NSString * stat = [labels objectAtIndex:indexPath.row];
    cell.textLabel.text = stat;
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
    if ([[segue identifier] isEqualToString:@"showStates"]) {
        NSMutableArray *temp = [[NSMutableArray alloc] init];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSString *state = [labels objectAtIndex:indexPath.row];
        for(int i = 0; i<states.count; i++){
            HTStateLawData *data = [states objectAtIndex:i];
            if(state == data.state){
                [temp insertObject:data atIndex:0];
            }
        }
        HTStateLawViewController *detailViewController = [segue destinationViewController];
        detailViewController.Laws = temp;
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
