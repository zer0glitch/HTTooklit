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
    one = [[HTStateLawData alloc]init:@"SB 50 (2012)-Hotline Posting" summary:@"" link:@"" state:@"Alabama"];
    [self insertNewObject:one];
    
    
    
    
    one = [[HTStateLawData alloc]init:@"11.41.360-Human trafficking in the first degree" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.41.365-Human trafficking in the second degree" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.41.370-Definitions" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.110-Sex trafficking in the first degree" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.120-Sex trafficking in the second degree" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.130-Sex trafficking in the third degree" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.135-Sex trafficking in the fourth degree" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.145-Asset Forefeiture" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 210 (2012)-Human Trafficking Task Force" summary:@"" link:@"" state:@"Alaska"];
    [self insertNewObject:one];
    
    
    
    
    one = [[HTStateLawData alloc]init:@"13-705-Dangerous crime against children; sentences; definitions" summary:@"" link:@"" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1306-Unlawfully obtaining labor or services; classification" summary:@"" link:@"" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1307-Sex trafficking; classification" summary:@"" link:@"" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1308-Trafficking of persons for forced labor or services; classification; definitions" summary:@"" link:@"" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-13010-Communication Interception" summary:@"" link:@"" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1309-Restitution" summary:@"" link:@"" state:@"Arizona"];
    [self insertNewObject:one];
    
    
    
    
    
    
   
    
    
    
    
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
