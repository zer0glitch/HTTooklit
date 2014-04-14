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
@synthesize states, labels, bannerIsVisible;

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
    states = [[NSMutableArray alloc]init];
    labels = [[NSMutableArray alloc]init];
    
    //Alabama
    HTStateLawData *one = [[HTStateLawData alloc]init:@"Section 13A-6-152 Human trafficking in The First Degree" summary:@"A person has committed the crime of Human Trafficking in the first degree if they have knowingly subjected another to forced labor or sexual servitude or knowingly obtaining or causing a minor to engage in sexual servitude." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-152/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-153 Human Trafficking in The Second Degree" summary:@"A person commits a second degree crime for Human Trafficking if they knowingly benefit from one's participation in forced labor or sexual servitude or knowingly recruits or transports another for the purpose of forced labor or sexual servitude." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-153/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-154 Evidence of Certain Facts or Conditions Not Deemed a Defense" summary:@"Evidence of the specified facts or conditions shall not constitute a defense in a prosecution for human trafficking in the first or second degree or preclude a finding of a violation" link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-154/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13A-6-155 Mandatory Restitution" summary:@"A person or entity convicted of any violation of this article shall be ordered to pay mandatory restitution to the victim, prosecutorial, or law enforcement entity, with the proceeds from property forfeited under 13A-6-156 applied first to payment or restitution." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-155/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-156-Forfeiture of profits or proceeds and interest in property" summary:@"A person who commits he offense of human trafficking in the first or second degree forfeits any profit or interest in property obtained as a result of the offense to the State of Alabama" link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-156/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-157-Civil Action by victims; relief rewarded" summary:@"A victim of human trafficking may bring a civil action in the appropriate court.  The court may award damages and any other appropriate relief." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-157/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-158-Limitation Period" summary:@"An action for an offense may be brought to court within five years of the victim being removed or escaping from the human trafficking situation if the victim if not a minor.  If the victim is a minor this time frame is extended until they reach the age of 18." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-158/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-159-Affirmitive Defense" summary:@"In a prosecution for prostitution of a human trafficking victim  it will be and affirmative defense for acts engaged as a result of labor or sexual servitude that the person was a victim of human trafficking." link:@"http://law.justia.com/codes/alabama/2012/title-13a/chapter-6/section-13a-6-159/" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Section 13A-6-160-Concurrent prosecuting authority; separate offenses" summary:@"District attorneys and the Attorney General have concurrent authority and each violation shall constitute as a separate offense under this article." link:@"http://law.onecle.com/alabama/criminal-code/13A-6-160.html" state:@"Alabama"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 50 (2012)-Hotline Posting" summary:@"" link:@"http://legiscan.com/AL/text/SB50/2012" state:@"Alabama"];
    [self insertNewObject:one];
    
    
    
    //Alaska
    one = [[HTStateLawData alloc]init:@"11.41.360-Human trafficking in the first degree" summary:@"A person commits the crime of human trafficking in the first degree if they induce another to engage in sexual conduct, adult entertainment, or labor in the state by force, threat of force, or deception." link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-41/sec-11-41-360/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.41.365-Human trafficking in the second degree" summary:@"A person commits the crime of human trafficking in the second degree if they obtain a benefit from human trafficking with disregard to the trafficking." link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-41/sec-11-41-365/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.41.370-Definitions" summary:@"Provides definitions for terms used in relation to offenses against another person." link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-41/sec-11-41-370/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.110-Sex trafficking in the first degree" summary:@"A person commits the crime of promoting prostitution in the first degree if they cause a person to engage in prostitution through the use of force, cause a minor to engage in prostitution, or causes someone in their custody to engage in prostitution." link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-110/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.120-Sex trafficking in the second degree" summary:@"A person commits the crime of promoting prostitution in the second degree if they manage or supervise a prostitution enterprise, procures or solicits a patron for a prostitute, or provides travel that includes commercial sexual conduct." link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-120/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.130-Sex trafficking in the third degree" summary:@"A person commits the crime of promoting human trafficking in the third degree if they manage or supervise a place of prostitution, causes a person 18 years of age or older to engage in prostitution, or aids in a prostitution enterprise." link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-130/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.135-Sex trafficking in the fourth degree" summary:@"A person commits the crime of promoting prostitution in the fourth degree if they engage in conduct that institutes, aids, or facilitates prostitution." link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-135/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11.66.145-Asset Forfeiture" summary:@"Property used to institute, aid, or facilitate, or received or derived from, a violation shall be forfeited." link:@"http://law.justia.com/codes/alaska/2011/title11/chapter11-66/sec-11-66-145/" state:@"Alaska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 210 (2012)-Human Trafficking Task Force" summary:@"Establish a task force to evaluate services available to victims of human trafficking, sex trafficking, or promotion of prostitution." link:@"http://legiscan.com/AK/text/SB210/2011" state:@"Alaska"];
    [self insertNewObject:one];
    
    
    
    //Arizona
    one = [[HTStateLawData alloc]init:@"13-705-Dangerous crime against children; sentences; definitions" summary:@"Provides details on consideration of dangerous crimes against children as well as the minimum, presumptive, and maximum sentencing of a criminal." link:@"http://law.justia.com/codes/arizona/2010/title13/13-705.html" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1306-Unlawfully obtaining labor or services; classification" summary:@"It is unlawful to knowingly obtain labor or services by causing or threatening bodily injury, restraining or threatening to restrain a person against their will, or withholding government records, identification, or personal property." link:@"http://law.justia.com/codes/arizona/2010/title13/13-1306.html" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1307-Sex trafficking; classification" summary:@"It is unlawful to knowingly traffick a person with the knowledge of or intent to cause a person to engage in any prostitution or sexually explicit performance by deception, force, or coercion." link:@"http://law.justia.com/codes/arizona/2011/title13/section13-1307/" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1308-Trafficking of persons for forced labor or services; classification; definitions" summary:@"" link:@"http://law.justia.com/codes/arizona/2012/title13/section13-1308/" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1309-Restitution" summary:@"The court shall order restitution for certain violations, including the greater of either the gross income or value to the defendant of the victim's labor or services or the value of the victim's labor." link:@"http://law.justia.com/codes/arizona/2011/title13/section13-1309" state:@"Arizona"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-1310-Communication Interception" summary:@"A county attorney may write to a higher court to be granted an ex parte order for the interception of wire, electronic or oral communications if there is a probable cause to believe a crime has been, is being, or may be committed and evidence or the location of the fugitive may be obtained by doing so." link:@"http://law.justia.com/codes/arizona/2005/title13/03010.html" state:@"Arizona"];
    [self insertNewObject:one];
    
    
    
    
    //Arkansas
    one = [[HTStateLawData alloc]init:@"5-11-108-Trafficking of Persons" summary:@"A person commits the offense of trafficking if they recruit, harbor, transport, or obtain a person from labor or services through force, fraud, or coercion for the purpose of subjecting them to involuntary servitude, peonage, slavery, sexual conduct, etc." link:@"http://law.justia.com/codes/arkansas/2010/title-5/subtitle-2/chapter-11/5-11-108" state:@"Arkansas"];
    [self insertNewObject:one];
    
    
    
   
    //California
    one = [[HTStateLawData alloc]init:@"181  Infringement of personal liberty" summary:@"Anyone who assumes or attempts to assume the rights of ownership of another or buys or attempts to buy a person has committed a crime punishable by imprisonment." link:@"http://www.state.gov/documents/organization/135993.pdf" state:@"California"];
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
    one = [[HTStateLawData alloc]init:@"266 (k) Additional fines; Use for child sexual abuse prevention and counseling and to serve minor victims of human trafficking" summary:@"Upon the conviction of any person for a violation ofSection 266h, 266i, or 266j, the court may, in addition to any other penalty or fine imposed, order the defendant to pay an additional fine not to exceed five thousand dollars, which will fund child sexual exploitation and child sexual abuse victim counseling centers and prevention programs." link:@"http://law.justia.com/codes/california/2005/pen/261-269.html" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"273.7 Disclosure of trafficking or domestic violence shelter" summary:@"Domestic violence shelter and trafficking shelter means a confidential location that provides emergency housing on a 24-hour basis for victims of sexual assault, spousal abuse, or both, and their families or human trafficking." link:@"http://law.justia.com/codes/california/2012/pen/part-1/title-9/chapter-2/section-273.7/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"293 Publication of information regarding victim of sex offense or human trafficking" summary:@"An employee of a law enforcement agency who personally receives a report from a person, alleging that the person making the report has been the victim of a sex offense, or was forced to commit an act of prostitution because he or she is the victim of human trafficking shall inform that person that his or her name will become a matter of public record unless he or she requests that it not become a matter of public record." link:@"http://law.justia.com/codes/california/2011/pen/part-1/290-294/293/" state:@"California"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"784.8 Severance of counts in case of human trafficking" summary:@"When charges alleging multiple violations of Section 236.1 that involve the same victim or victims in multiple territorial jurisdictions are filed in one county pursuant to this section, the court shall hold a hearing to consider whether the matter should proceed in the county of filing, or whether one or more counts should be severed." link:@"http://law.justia.com/codes/california/2010/pen/777-795.html" state:@"California"];
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
    one = [[HTStateLawData alloc]init:@"18-3-411-Sex offenses against children" summary:@"Unlawful sexual offense means enticement of a child.  This statute provides information on the limitations, offenses, and handlings of such offenses." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=S&statecd=CO&sessionyr=2012&TOCId=11921&userid=GUEST9&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3-412-Habitual sex offenders against children - indictment or information - verdict of the jury" summary:@"If a second or subsequent unlawful sexual offense for which a defendant is convicted constitutes a misdemeanor, the court shall impose a sentence to the county jail of not less than three times the maximum sentence for that class misdemeanor." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=&statecd=CO&sessionyr=2012&TOCId=11922&userid=PRODSG&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3-501-Trafficking in adults" summary:@"A person commits the crime of trafficking in adults if they sell, exchange, barter, or lease an adult and receive anything of value in exchange or receives an adult as a result of such an exchange." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=&statecd=CO&sessionyr=2012&TOCId=11934&userid=PRODSG&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3-502-Trafficking in children" summary:@"A person commits the crime of trafficking in children if they sell, exchange, barter, or lease a child and receive anything of value in exchange or receives a child as a result of such an exchange." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=&statecd=CO&sessionyr=2012&TOCId=11935&userid=PRODSG&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3-503-Coercion of Involuntary servitude" summary:@"A person commits coercion of involuntary servitude if they coerce a person into performing labor or services by withholding or threatening to destroy immigration documents, threatening to notify law enforcement of a person's violation of federal immigration laws, or inflicting or threatening to inflict physical harm." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=&statecd=CO&sessionyr=2012&TOCId=11936&userid=PRODSG&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-6-404-Procurement of a child for sexual exploitation" summary:@"Any person who intentionally gives, transports, provides, or makes available, or who offers to give, transport, provide, or make available, to another person a child for the purpose of sexual exploitation of a child commits procurement of a child for sexual exploitation, a class 3 felony." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=S&statecd=CO&sessionyr=2012&TOCId=12114&userid=GUEST9&cvfilename=&noheader=1&Interface=" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-13-128-Smuggling of humans" summary:@"A person commits smuggling of humans if, for the purpose of assisting another person to enter, remain in, or travel through the US or Colorado in violation of immigration laws." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?userid=GUEST9&interface=NLL&statecd=CO&codesec=18-13-128&sessionyr=2013&Title=18&datatype=S&noheader=1&nojumpmsg=0" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-17-103(5)-Definitions (Colorado Organized Crime Control Act): 18-3-501--503 constitute 'Racketeering activity'" summary:@"Provides definitions for terms used to describe organized crime." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?userid=GUEST9&interface=&statecd=CO&codesec=18-17-103&sessionyr=2013&Title=18&datatype=S&noheader=1&nojumpmsg=0" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-13-303-Asset Forfeiture" summary:@"Any building or part of a building, including fixtures, contents, vehicles, and other property is deemed a class 1 nuisance when used for human trafficking or the prostitution, solicitation, or pandering of a child. All of these are subject to seizure, confiscation, and forfeiture." link:@"http://search.jurisearch.com/NLLXML/getcode.asp?datatype=S&statecd=CO&sessionyr=2012&TOCId=11137&userid=GUEST9&cvfilename=&noheader=1&Interface=NLL" state:@"Colorado"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-21-127-Civil Remedy" summary:@"A person is entitled to recover damages and to obtain injunctive relief from any person who commits trafficking or coercion of involuntary servitude." link:@"http://www.state.co.us/gov_dir/leg_dir/olls/sl2012a/sl_174.htm" state:@"Colorado"];
    [self insertNewObject:one];
    
            
    
    
    
    //Connecticut
    one = [[HTStateLawData alloc]init:@"Sec. 46a-4b-Training program on trafficking in persons" summary:@"A training program shall be developed on trafficking and should be available, upon request, to the Division of State Police." link:@"http://law.justia.com/codes/connecticut/2011/title46a/chap812/Sec46a-4b.html" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 46a-170-Trafficking in Persons Council. Membership. Duties. Reports." summary:@"Outlines the structure of the established Trafficking in Persons Council." link:@"http://law.justia.com/codes/connecticut/2011/title46a/chap814f/Sec46a-170.html" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 52-571 i-Action for damages resulting from trafficking in persons" summary:@"Any person aggrieved by a violation of section 53a-192a may bring a civil action in the superior court for the judicial district where such a person resides or the judicial district of Hartford against the persons who committed such a violation." link:@"http://law.justia.com/codes/connecticut/2012/title-52/chapter-925/section-52-571i/" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 53-394-Definitions (a) 'Racketeering activity' [includes trafficking in persons]" summary:@"Provides definitions for terms used in cases involving racketeering activity." link:@"http://law.justia.com/codes/connecticut/2012/title-53/chapter-949c/section-53-394" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 53a-192a-Trafficking in Persons" summary:@"A person is guilty of trafficking in persons when such person commits coercion as provided in section 53a-192 and the other person is compelled or induced to engage in conduct that constitutes a violation of section 53a-82 or work." link:@"http://law.justia.com/codes/connecticut/2009/title53a/chap952/Sec53a-192a.html" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 54-234-Development of response system for victims of offense of trafficking in persons" summary:@"The Office of Victim Services shall, within available appropriations, contract with nongovernment organizations to develop a coordinated response system." link:@"http://law.justia.com/codes/connecticut/2012/title-54/chapter-968/section-54-234" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 54-36p-Asset Forfeiture" summary:@"All money used or intended for use, property constituting the proceeds obtained, property derived from any sale or exchange for pecuniary gain, or property used or intended for use in violations of certain subsections are subject to forfeiture to the state." link:@"http://law.justia.com/codes/connecticut/2012/title-54/chapter-959/section-54-36p" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 54-41b-Authorized interception of communications" summary:@"The Chief State's Attorney or the state's attorney for the judicial district in which interception is to be conducted may make application to a panel of judges for an order authorizing the interception of any wire communication." link:@"http://law.justia.com/codes/connecticut/2011/title54/chap959a/Sec54-41b.html" state:@"Connecticut"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 53a-82-Prostitution" summary:@"A person sixteen years or older is guilty of prostitution when engaging or agreeing or offering to engage in sexual conduct with another person in return for a fee unless they have been coerced into doing so." link:@"http://law.justia.com/codes/connecticut/2011/title53a/chap952/Sec53a-82.html" state:@"Connecticut"];
    [self insertNewObject:one];
            
    
    
    
    //Delaware
    one = [[HTStateLawData alloc]init:@"11-787-Trafficking of persons and involuntary servitude" summary:@"Provides descriptions of offenses such as involuntary servitude,  sexual servitude of a minor, trafficking of persons for forced labor or services, and trafficking of persons for use of body parts." link:@"http://law.justia.com/codes/delaware/2012/title11/c005/sc02/787/" state:@"Delaware"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"1502-Racketeering Statute" summary:@"Racketeering shall mean to engage in or to solicit, coerce or intimidate another to engage in an activity defined as racketeering activity or any activity constituting any felony under certain Delaware codes." link:@"http://law.justia.com/codes/delaware/2011/title11/c015.html" state:@"Delaware"];
    [self insertNewObject:one];
    
   
    
    
    

    //Florida
    one = [[HTStateLawData alloc]init:@"796.035 Selling or buying of minors into sex trafficking or prostitution; penalties" summary:@"A parent or guardian who knowingly transfers custody of a minor into prostitution is committing a felony of the first degree" link:@"http://law.justia.com/codes/florida/2012/titlexlvi/chapter796/section796.035/" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"796.045 Sex trafficking; penalties" summary:@"Any person providing a means for a person who is being forced to engage in prostitution to be trafficked is committing a felony in the second degree" link:@"http://law.justia.com/codes/florida/2010/TitleXLVI/chapter796/796_045.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"787.05 Unlawfully obtaining labor or services" summary:@"Any person knowingly obtaining labor or services through means considered trafficking is committing a felony in the second degree" link:@"http://law.justia.com/codes/florida/2010/TitleXLVI/chapter787/787_05.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"787.06 Human Trafficking" summary:@"Human trafficking is considered a form of modern-day slavery.  Any young child, teenager, or adult who is subject to force, fraud, or coercion for forced sexual exploitation or forced labor is trafficked." link:@"http://law.justia.com/codes/florida/2010/TitleXLVI/chapter787/787_06.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"772.104 Civil cause of action " summary:@"Any person proven to be injured because of a violation of the provisions of s.772.103 is entitled to certain renumerations." link:@"http://law.justia.com/codes/florida/2010/TitleXLV/chapter772/772_104.html" state:@"Florida"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"409.953 Rule-making authority for refugee assistance program" summary:@" The Department of Children and Family Services has the authority to administer the refugee assistance program in accordance with 45 C.F.R. parts 400 and 401. A petition in circuit court may establish custody for an unaccompanied minor." link:@"http://law.justia.com/codes/florida/2010/TitleXXX/chapter409/409_953.html" state:@"Florida"];
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
    one = [[HTStateLawData alloc]init:@"960.065 Victims of Sexual Exploitation are Eligible for awards" summary:@"Provides guidelines for award eligibility for victims" link:@"http://www.flsenate.gov/Laws/Statutes/2012/960.065" state:@"Florida"];
    [self insertNewObject:one];
    
    
    
    //Georgia
    one = [[HTStateLawData alloc]init:@"16-5-46 Trafficking of persons for labor or sexual servitude" summary:@"Gives definitions for the terms coercion, deception, and sexual servitude" link:@"http://law.justia.com/codes/georgia/2010/title-16/chapter-5/article-3/16-5-46" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19-7-5(b)(4) Definition sexual exploitation" summary:@"The purpose of this Code section is to provide for the protection of children whose health and welfare are adversely affected and further threatened by the conduct of those responsible for their care and protection" link:@"http://law.justia.com/codes/georgia/2010/title-19/chapter-7/article-1/19-7-5" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-6-13.3. Proceeds from pimping; forfeiture; distribution" summary:@"Any proceeds or money which is used, intended for use, used in any manner to facilitate, or derived from a violation of Code Section 16-6-11, wherein any of the persons involved in performing an act of prostitution is under the age of 18, is contraband and forfeited to the state and no person shall have a property interest in it. " link:@"http://law.justia.com/codes/georgia/2010/title-16/chapter-6/16-6-13-3" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@" 35-1-16. Training law enforcement officers investigating crimes involving trafficking persons for labor or sexual servitude" summary:@"The Georgia Peace Officer Standards and Training Council and the Georgia Public Safety Training Center shall establish guidelines and procedures for the incorporation of training materials and information" link:@"http://www.itislaw.com/NLLXML/getcode.asp?datatype=S&codesec=35-1-16&statecd=GA&sessionyr=2013&TOCId=16989&userid=PRODSG&cvfilename=&docname=&Interface=NLL&noheader=1" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HR 1151 Human Trafficking Task Force" summary:@"Explains the structure and purpose of the Joint Human Trafficking Task Force in Georgia" link:@"http://www.legis.ga.gov/legislation/en-US/display/20112012/HR/1151" state:@"Georgia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"17-17-6 Notification to victim of accused's pretrial release and of victims' rights and the availability of victims' compensation and services" summary:@"A law enforcer must inform a victim of the availability of compensation, community based victim services, and the possibility of the release of the accused." link:@"http://law.justia.com/codes/georgia/2010/title-17/chapter-17/17-17-6" state:@"Georgia"];
    [self insertNewObject:one];
    
    
    
    
    //Hawaii
    one = [[HTStateLawData alloc]init:@"707-A-Definitions" summary:@"Provides meanings for terms used crimes considered to be offenses against another person." link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-780" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-B-Labor trafficking in the first degree" summary:@"A person commits the offense of labor trafficking in the first degree if the person intentionally or knowingly provides or obtains, attempts to provide or obtain, another person for labor or services by any means listed by this section." link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-781" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-C-Labor trafficking in the second degree" summary:@"A person commits the offense of labor trafficking in the second degree if they knowingly aid in another person committing the offense of human trafficking in the first degree or benefit from the venture." link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-782/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-D-Additional sentencing considerations; victims held in servitude" summary:@"The court shall consider the time for which the victim was held in servitude as well as the number of victims involved in the offense for which the defendant is convicted when sentencing." link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-783/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-E-Extended terms of imprisonment, labor trafficking offenses" summary:@"If the victim suffered bodily injury, the person found guilty may be sentenced to an extended indeterminate term of imprisonment as described in this section." link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-784" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-F-Restitution for victims of labor trafficking" summary:@"The court shall order restitution to be paid to the victim, consisting of an amount that is the greater of either the total gross income or value to the defendant of the victim's labor, or value of labor under minimum wage." link:@"https://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-785/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-G-Nonpayment of wages" summary:@"A person commits the offense of nonpayment of wages if they intentionally or knowingly or with intent to defraud fails or refuses to pay wages to the employee, except where required by federal or state statute or by court process. Fines range from $2,000 to $10,000" link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-786" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"707-H-Unlawful conduct with respect to documents" summary:@"A person commits unlawful conduct with respect to documents if the person knowingly destroys, conceals, removes, or possesses any actual or purported government identification document of another person or an employee." link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter707/707-787/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"712A-4-Covered offenses. Offenses for which property is subject to forfeiture" summary:@"Offenses for which property is subject to forfeiture under this chapter are all specifically authorized forfeiture, murder, kidnapping, gambling, robbery, bribery, trademark counterfeiting, promoting child abuse, and other named offenses." link:@"http://law.justia.com/codes/hawaii/2010/division5/title37/chapter712a/712a-4/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"803-44-Application for court order to intercept wire, oral, or electronic communications" summary:@"A listed attorney of the state may make an application to a designated judge or other circuit or district court judge in the county where the interception takes place to approve or authorize the interception of oral, wired, or electronic communications if it may provide evidence of serious crime." link:@"http://law.justia.com/codes/hawaii/2011/division5/title38/chapter803/803-44/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"712-1201-Sex Trafficking Statute-Promoting prostitution; definition of terms" summary:@"Provides definitions for the terms 'advances prostitution' and 'profits from prostitution'." link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter712/712-1201" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"712-1202-Sex Trafficking Statute-Promoting prostitution in the first degree" summary:@"A person commits the offense of promoting prostitution in the first degree if they knowingly advance prostitution by compelling or inducing a person by force, threat, fraud or advances or profits from prostitution of a minor." link:@"http://law.justia.com/codes/hawaii/2011/division5/title37/chapter712/712-1202" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"842-1-Organized Crime: Definitions" summary:@"" link:@"http://law.justia.com/codes/hawaii/2011/division4/title36/chapter663j/663j-2" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"663-2-Civil Remedy:Definitions: 'Coerce, Promoting prostitution'" summary:@"Provides definitions for the terms 'coerce', 'promoting prostitution', and 'prostitution'." link:@"http://law.justia.com/codes/hawaii/2010/division4/title36/chapter663/663-2/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"663-3-Cause of action for coercion into prostitution" summary:@"An individual has a cause of action against a person who coerced the individual into or to continue prostitution, used coercion to collect or receive any of the individual's earnings derived from prostitution, or hired the individual for prostitution." link:@"https://law.justia.com/codes/hawaii/2010/division4/title36/chapter663j/663j-3/" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"663-4-Evidence of coercion" summary:@"Acts that may serve as evidence of a claim under section -3 include but are not limited to physical force or threats thereof, physical or mental torture, kidnapping, blackmail, extortion, isolation, etc." link:@"http://law.justia.com/codes/hawaii/2011/division4/title36/chapter663j/663j-4" state:@"Hawaii"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"663-5-Recovering Damages" summary:@"A person entitled to bring an action under section 663J-3 may recover all economic and noneconomic damages caused by coercion into prostitution, exemplary damages, attorney's fees, and costs of costs of suit." link:@"http://law.justia.com/codes/hawaii/2011/division4/title36/chapter663j/663j-5" state:@"Hawaii"];
    [self insertNewObject:one];
    
    
    
    
    //Idaho
    one = [[HTStateLawData alloc]init:@"18-8602-Human trafficking defined" summary:@"Human trafficking is sex trafficking in which a commercial sex act is induced by force, fraud, or coercion, or the person included is under 18 years of age, or the recruitment, harboring, transport, or other obtaining persons for involuntary servitude." link:@"http://law.justia.com/codes/idaho/2011/title18/chapter86/18-8602" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-5601-Interstate trafficking in prostitution" summary:@"Any person who imports persons into this state, or who exports persons from this state, for prostitution, or any person who induces, entices, or procures such activity, shall be guilty of a punishable felony." link:@"http://law.justia.com/codes/idaho/2011/title18/chapter56/18-5601" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-5602-Procurement - Definition and penalty" summary:@"Any person who induces, compels, entices, or procures another person to engage in acts as a prostitute shall be guilty of a felony punishable by imprisonment for 2-20 years or a fine of $1,000-$50,000, or both." link:@"http://law.justia.com/codes/idaho/2012/title-18/chapter-56/section-18-5602/" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-5609-Inducing persons under eighteen years of age into prostitution" summary:@"Every person who induces or attempts to induce a person under 18 years of age in prostitution shall be guilty of a felony punishable by imprisonment for 2 years to life, fined no more than $50,000, or both." link:@"http://law.justia.com/codes/idaho/2010/title18/t18ch56sect18-5609.html" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8502(ff)-Criminal Gang Enforcement Act - Definitions" summary:@"Provides information for terms used with gang enforcement and resources for definitions." link:@"http://law.justia.com/codes/idaho/2011/title18/chapter85/18-8502" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8601-Legislative Intent (and law enforcement training)" summary:@"It is the intent of the legislature to address human trafficking and provide criminal sanctions for persons who engage in human trafficking in this state." link:@"http://law.justia.com/codes/idaho/2012/title-18/chapter-86/section-18-8601/" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8603-Penalties" summary:@"Any person who commits  a crime listed in this statute as well as the crime of human trafficking shall be punished by imprisonment in the state prison for not more than 25 years unless a more severe penalty is otherwise prescribed by law." link:@"http://law.justia.com/codes/idaho/2011/title18/chapter86/18-8603" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8604-Restitution - Rehabilitation" summary:@"In addition to any other loss resulting from a human trafficking violation, the court shall order restitution as applicable including the greater of the gross income or value to the defendant or the value of the victim's labor as guaranteed under minimum wage, as well as fees for mental and physical rehabilitation the the victim(s)." link:@"https://law.justia.com/codes/idaho/2011/title18/chapter86/18-8604/" state:@"Idaho"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-8605-Human trafficking victim protection" summary:@"The attorney general shall issue a report outlining how existing victim and witness laws respond to the needs of victims, and suggesting areas of improvement.  The department of health and welfare shall insure a report outlining how social service programs respond or fail to respond to the needs of victims and suggest ares of improvement." link:@"http://law.justia.com/codes/idaho/2011/title18/chapter86/18-8605" state:@"Idaho"];
    [self insertNewObject:one];
    
    
    
    
    
    //Illinois
    one = [[HTStateLawData alloc]init:@"720 ILCS 5/10-9-Trafficking in persons, involuntary servitude, and related offenses" summary:@"Provides definitions, classifications, considerations, and sentencing for offenses of human trafficking." link:@"http://law.justia.com/codes/illinois/2012/chapter-720/act-720-ilcs-5/title-iii" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"720 ILCS 5/124B-300-Forfeiture; Involuntary servitude and trafficking of persons" summary:@"A person who commits the offense of involuntary servitude, involuntary servitude of a minor, or trafficking of persons for forces labor or services under section 10A-10 shall forfeit to the State of Illinois any profits or proceeds and any property acquired through the violation." link:@"http://law.justia.com/codes/illinois/2010/chapter725/072500050HArt_124B.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 1907 5/§ 33G-3.-Definitions" summary:@"Provides definitions for the terms 'another state', 'enterprise', 'labor organization', operation or management', 'predicate activity', 'pattern of predicate activity', and 'unlawful death'." link:@"http://www.ilga.gov/legislation/fulltext.asp?DocName=&SessionId=84&GA=97&DocTypeId=HB&DocNum=1907&GAID=11&LegID=54594" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"§725 ILCS 5/108B-3.-Authorization for the interception of private communication" summary:@"The State's Attorney may authorize, in writing,  an ex parte application to the chief judge of a court of competent jurisdiction for an order authorizing the interception of a private communication when no party has consented if the results may provide evidence of major crime." link:@"http://law.justia.com/codes/illinois/2010/chapter725/072500050HArt_108B.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 11-14-Prostitution" summary:@"Any person who performs, offers or agrees to perform any act of sexual penetration as defined in section 12-12 or touching/fondling of sex organs for money, property, toey, object, or article of value commits the act of prostitution." link:@"http://law.justia.com/codes/illinois/2010/chapter720/072000050HArt_11.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 3-The Abused and Neglected Child Reporting Act" summary:@"Provides definitions and classifications for abuse and neglect of children." link:@"http://law.justia.com/codes/illinois/2005/chapter32/1460.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 2-3-Neglected or abused minor" summary:@"Gives specifications to classify how a minor may come to be considered neglected or abused." link:@"http://law.justia.com/codes/illinois/2005/chapter50/60384.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec. 2-18-Evidence" summary:@"The standard of proof and the rules of evidence in the nature of civil proceedings in this State are applicable to proceedings under this article." link:@"http://law.justia.com/codes/illinois/2005/chapter50/60384.html" state:@"Illinois"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"Sec 11-19-3-Vehicle impoundment" summary:@"" link:@"http://law.justia.com/codes/illinois/2012/chapter-625/act-625-ilcs-5/chapter-11" state:@"Illinois"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"740 ILCS 128/5;15-Access to Civil Damages" summary:@"" link:@"" state:@"Illinois"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"116-2.1-Motion to vacate prostitution convictions for sex trafficking victims" summary:@"A motion under this Section may be filled at any time following the entry of a verdict or finding of guilty where the conviction was under section 11-14 or 11-14.2 and the defendant's participation was a result of having been a trafficking victim." link:@"http://law.justia.com/codes/illinois/2012/chapter-725/act-725-ilcs-5/title-vi" state:@"Illinois"];
    [self insertNewObject:one];
    
    
    
    
    //Indiana
    one = [[HTStateLawData alloc]init:@"35-42-3.5-1-Promotion of human trafficking, sexual trafficking of a minor, human trafficking" summary:@"Any person who knowingly recruits, harbors, or transports another person by force, threat of force, or fraud commits promotion of human trafficking, a Class B felony." link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch3.5.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-3.5-2-Restitution to victim" summary:@"In addition to any sentence or fine imposed for a conviction of an offense under section 1, the court shall order the person convicted to make restitution to the victim of the crime." link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch3.5.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-3.5-3-Victim has civil cause of action against a person convicted of offense - Damages recoverable - Statute" summary:@"If a person is convicted of an offense under section 1, the victim has a civil cause of action against the person convicted of the offense and may recover certain fees for damages and court costs." link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch3.5.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-3.5-4-Additional rights of victim" summary:@"An alleged victim of an offense under section 1 may not be detained in a facility inappropriate to their status as a crime victim, may not be jailed, fined, or other penalized, and shall be provided protection if their safety is at risk." link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch3.5.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-1-1-Murder" summary:@"A person who knowingly or intentionally kills another human being commits murder, a felony." link:@"http://law.justia.com/codes/indiana/2010/title35/ar42/ch1.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-42-2-3-Kidnapping, criminal confinement, or interference with custody" summary:@"" link:@"http://law.justia.com/codes/indiana/2011/title35/article42/chapter2/" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"5-2-1-9-Rules - Implementation of chapter - Town marshal basic training program- Police chief executive training program" summary:@"The board shall adopt in accordance with IC 4-22-2 all necessary rules to carry out the provisions of this chapter. The rules, which shall be adopted only after necessary and proper investigation and inquiry by the board are included." link:@"http://law.justia.com/codes/indiana/2011/title5/article2/chapter1/" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"34-24-1-1-Seizure of vehicles or other property" summary:@"Explains what vehicles, items, and other property may be seized." link:@"http://law.justia.com/codes/indiana/2011/title34/article24/chapter1/" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"35-45-6-1-Racketeer Influenced Corrupt Organizations Act- Definitions" summary:@"Provides relevant definitions for terms commonly used through the chapter, which pertains to racketeering activity." link:@"http://law.justia.com/codes/indiana/2010/title35/ar45/ch6.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"IC 35-33.5-1-3-'Designated offense' defined" summary:@"Designated offense means a Class A B or C felony, Murder, Kidnapping, Criminal confinement, Robbery, Arson, Child solicitation, Human and sexual trafficking, Escape as a Class B or C felony, crimes with a weapon of mass destruction, attempting any of the previous, or " link:@"http://law.justia.com/codes/indiana/2010/title35/ar33.5/ch1.html" state:@"Indiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"IC 5-2-6-3-Purposes of institute; sex and violent offender directory" summary:@"Lists the duties and reasons for the institute with responsibilities such as evaluating state and local programs, stimulate criminal and juvenile justice research, and administer assistance to victims of human sexual trafficking." link:@"http://law.justia.com/codes/indiana/2011/title5/article2/chapter6/" state:@"Indiana"];
    [self insertNewObject:one];
    
    
    
    
    
    //Iowa
    one = [[HTStateLawData alloc]init:@"710 A.1-Definitions" summary:@"Provides definitions for terms used in this section, such as 'human trafficking', 'commercial sexual activity', 'debt bondage', and 'forced labor or services'." link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710 A.2-Human Trafficking" summary:@"A person who knowingly engages in human trafficking or knowingly benefits from an act of human trafficking is guilty of a felony of a specified class." link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710 A.3-Affirmative defense" summary:@"It shall be an affirmative defense to a prosecution for criminal violation directly related to the defendant's status as a victim of a crime that is a violation of section 710A.2." link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710 A.4-Restitution" summary:@"The gross income of the defendant or the value of labor or services performed by the victim to the defendant shall be considered when determining the amount of restitution." link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710 A.5-Certification" summary:@"There may be written requests processed federally through the attorney general to provide a victim of trafficking who is willing to aid in an investigation to be granted an appropriate visa." link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=710A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"915.51-General rights of human trafficking victim" summary:@"Victims of human trafficking shall have the same rights as other victims of a crime, including the right to receive victim compensation regardless of their immigration status." link:@"http://law.justia.com/codes/iowa/2011/titlexvi/subtitle3/chapter915/915-51" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"710A.2A-Solicitation of commercial sexual activity" summary:@"A person shall not entice, coerce, or recruit, or attempt to entice, coerce, or recruit, either a person under the age of eighteen or a law enforcement officer or agent representing oneself to be under the age of eighteen, to engage in commercial sexual activity." link:@"http://law.justia.com/codes/iowa/2013/titlexvi/subtitle1/chapter710a/710a-2a" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"809A.3.-Conduct giving rise to forfeiture" summary:@"An act or omission in this state or another, which is considered a type of misdemeanor or felony may give rise to forfeiture." link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=809A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"809A.4-Property subject to forfeiture" summary:@"All substances, materials, property, proceeds, weapons, or property up to a specified value is are subject to forfeiture." link:@"http://coolice.legis.iowa.gov/cool-ice/default.asp?category=billinfo&service=iowacode&ga=83&input=809A" state:@"Iowa"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"80B.11-Rules: Training for Law Enforcement" summary:@"The director of the academy shall promulgate rules in accordance with the provisions of this chapter and chapter 17A, giving due consideration to varying factors and special requirements." link:@"http://law.justia.com/codes/iowa/2011/titleiii/subtitle1/chapter80b/80b-11" state:@"Iowa"];
    [self insertNewObject:one];
    

    
    
    
    //Kansas
    one = [[HTStateLawData alloc]init:@"21-3446  Trafficking" summary:@"Human trafficking is the recruitment, harboring, transportation, etc. of a person for labor or services through force, fraud, or coercion and benefitting from it either financially or by receiving anything of value." link:@"http://law.justia.com/codes/kansas/2011/Chapter21/Article34/21-3446.html" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-3447 Aggravated trafficking" summary:@"Aggravated trafficking is human trafficking with addition to extremely harsh circumstances, being committed for the sexual gratification of the defendant or another, resulting in death, etc. " link:@"http://law.justia.com/codes/kansas/2011/Chapter21/Article34/21-3447.html" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-4643 Mandatory term of imprisonment for certain sex offenders; exceptions" summary:@"a defendant who is 18 years of age or older and is convicted of certain crimes committed on or after July 1, 2006, shall be sentenced to a term of imprisonment for life with a mandatory minimum term of imprisonment of not less than 25 years unless the court determines that the defendant should be sentenced differently." link:@"http://law.justia.com/codes/kansas/2009/chapter21/statutes_12180.html" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"22-4902 Offender registration - Definitions" summary:@"Provides numerous categories of offenders including sex offender, violent offender, drug offender, and other in state and out of state registered offenders." link:@"http://law.justia.com/codes/kansas/2012/chapter22/article49/section22-4902/" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21–5426 Human trafficking; aggravated human trafficking" summary:@"Human trafficking is the purposeful use of force, fraud, or coercion to subject someone into involuntary servitude or forced labor.  Aggravated human trafficking means there is the addition of kidnapping, sexual gratification of the defendant, or death." link:@"http://kslegislature.org/li_2012/b2011_12/statute/021_000_0000_chapter/021_054_0000_article/021_054_0026_section/021_054_0026_k/" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"60-4104 Covered offenses and conduct giving rise to forfeiture" summary:@"Acts such as prostitution, counterfeiting, human trafficking and aggravated human trafficking, mistreatment of a dependent adult, identity theft and identity fraud, and forgery." link:@"http://law.justia.com/codes/kansas/2012/chapter60/article41/section60-4104/" state:@"Kansas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"75-453 Victim Assistance" summary:@"An adult family member may apply for an address designated by the secretary of state in the stead of a minor of incapacitated victim." link:@"http://law.justia.com/codes/kansas/2012/chapter75/article4/section75-453/" state:@"Kansas"];
    [self insertNewObject:one];
    
    
    
    
    
    //Kentucky
    one = [[HTStateLawData alloc]init:@"529.100-Human trafficking" summary:@"A person is guilty of human trafficking when they intentionally subject one or more persons to human trafficking." link:@"http://law.justia.com/codes/kentucky/2012/chapter-529/529.100/" state:@"Kentucky"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"529.110-Promoting human trafficking" summary:@"A person is guilty of promoting human trafficking when the person intentionally benefits financially or receives anything of value from knowingly participating in human trafficking or recruits, entices, harbors, transports, or obtains another person, knowing the person will be subject to trafficking." link:@"http://law.justia.com/codes/kentucky/2011/529-00/529-110/" state:@"Kentucky"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"422.295-Confidentiality of communications between human trafficking victim and caseworker" summary:@"A human trafficking victim has a privilege to refuse to disclose and to prevent any other person from disclosing confidential communications made to a trafficking victim counselor for the purpose of receiving counseling, therapy, or treatment related to trafficking." link:@"http://law.justia.com/codes/kentucky/2011/422-00/422-295/" state:@"Kentucky"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"431.063-Human trafficking victim not to be incarcerated pending trial - Exceptions" summary:@"A victim of human trafficking shall not be held in a detention center, jail, or other secure facility pending trial for an offense arising from the trafficking unless it is the least restrictive alternative or their release would threaten public safety." link:@"http://law.justia.com/codes/kentucky/2011/431-00/431-063/" state:@"Kentucky"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"439.3401-Parole for violent offenders - Applicability of section to victim of domestic violence or abuse - Time of offense" summary:@"Provides information on how the court shall treat a violent offender as for parole for their crime." link:@"http://law.justia.com/codes/kentucky/2011/439-00/439-3401/" state:@"Kentucky"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"529.01-Definitions" summary:@"" link:@"" state:@"Kentucky"];
    //[self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"506.12-Engaging in organized crime" summary:@"" link:@"" state:@"Kentucky"];
    //[self insertNewObject:one];
    
    
    
    

    
    //Louisiana
    one = [[HTStateLawData alloc]init:@"14:46.2  Human Trafficking" summary:@"It is unlawful for any person to knowingly harbor, transport, recruit, etc. another person through fraud, force, or coercion to provide labor or services." link:@"http://law.justia.com/codes/louisiana/2011/rs/title14/rs14-46-2" state:@"Louisiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@" 14:46.3 Trafficking of children for sexual purposes" summary:@"It is unlawful for any person to knowingly recruit, harbor, transport, provide, sell, purchase, obtain, or maintain the use of a person under the age of eighteen years for the purpose of engaging in commercial sexual activity." link:@"http://law.justia.com/codes/louisiana/2011/rs/title14/rs14-46-3" state:@"Louisiana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"539.1 Forfeited property related to certain sex crimes; exempt property; allocation of forfeited property" summary:@"When property is forfeited under certain provisions the district attorney may authorize public sale or hold a public auction unless the property was stolen or the owner did not know the property was used for the criminal act." link:@"http://law.justia.com/codes/louisiana/2011/rs/title15/rs15-539-1" state:@"Louisiana"];
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
    one = [[HTStateLawData alloc]init:@"4701-Remedies for human trafficking" summary:@"Provides information for human trafficking cases, such as civil actions for damages, relief, and the statute of limitations." link:@"http://law.justia.com/codes/maine/2012/title5/chapter337c/section4701/" state:@"Maine"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"17A-301-Kidnapping" summary:@"A person is guilty of kidnapping if they knowingly restrain another person with the intent to hold them for ransom/reward, as a shield/hostage, inflict injury, to terrorize them or a third person, to interfere with a government function, or by keeping them in a place they are unlikely to be found." link:@"http://law.justia.com/codes/maine/2005/title17-ach0sec0/title17-asec301.html" state:@"Maine"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"17A-302-Criminal restraint" summary:@"A person is guilty of criminal restraint if they have no legal right or knowingly or intentionally take or restrain a person under the age of 14, incompetent, under the age of 8, or is 14 - 16 years of age from the custody of their guardian with the intent to hold permanently and the actor is at least 18 years of age." link:@"http://law.justia.com/codes/maine/2005/title17-ach0sec0/title17-asec302.html" state:@"Maine"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15 5821-Subject property (forfeiture)" summary:@"The following are subject to forfeiture to the State and no property right may exist in them: Scheduled and  synthetic hallucinogenic drugs, materials related to aforementioned drugs, other property, firearms and other weapons, conveyances, records, money instruments, real property, computers, bona fide lienholders, and assets in human trafficking offenses." link:@"http://law.justia.com/codes/maine/2012/title15/chapter517/section5821/" state:@"Maine"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"LD 1731-852-Aggravated promotion of prostitution" summary:@"Actions such as using drugs to render a person incapable of controlling their conduct, making material false statements, misstatements, or omissions, withholding, confiscating, or destroying government identification, or any scheme to instill fear in a person that they will be harmed for not engaging in prostitution." link:@"http://www.mainelegislature.org/legis/bills/bills_125th/billtexts/SP059103.asp" state:@"Maine"];
    [self insertNewObject:one];
    
    
    
    
    
    //Maryland
    one = [[HTStateLawData alloc]init:@"11-303-Human Trafficking" summary:@"A person may not knowingly take or case another person to be taken to any place for prostitution, persuade, induce, entice, or encourage another to be taken to any place for prostitution, or receive consideration too procure a place in a house of prostitution with the intent of causing the other to engage in prostitution." link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-11/subtitle-3/11-303" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"3-701-Extortion" summary:@"A person may not obtain, attempt to obtain, or conspire to obtain money, property, labor, services, or anything of value from another person with the person's consent, if the consent is induced by wrongful use of actual or threatened force or violence, economic injury, or manipulation of government identification for harming immigration status." link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-3/subtitle-7/3-701" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15-207-Posting of sign relating to human trafficking" summary:@"Provides guidelines, information, and guidelines for posting National Human Trafficking Resource Center Hotline information.  " link:@"http://law.justia.com/codes/maryland/2010/business-regulation/title-15/subtitle-2/15-207" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"3-324-Sexual solicitation of minors" summary:@"A person may not, with the intent to commit a violation of Section 3-304, 3-306, 3-307 of this subtitle, or Section 11-304, 11-305, or 11-306 knowingly solicit a minor or law enforcement officer posing as a minor, to engage in activities that would be unlawful for the person to engage in." link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-3/subtitle-3/3-324" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"3-704-Extortion by false accusation" summary:@"A person with the intent to unlawfully extort money, property, labor, services, or anything of value from another, may not falsely accuse or threaten to falsely accuse another of a crime of anything that, if the accusation were true, would tend to bring the other into contempt or disrepute." link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-3/subtitle-7/3-704" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"3-705-Extortion by verbal threat" summary:@"A person, with the intent to extort anything of value from another, may not verbally threaten to accuse any person of a crime that, if true, would contempt or disrepute or cause physical injury, emotional distress, economic damage, or damage to their property." link:@"http://law.justia.com/codes/maryland/2010/criminal-law/title-3/subtitle-7/3-705" state:@"Maryland"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"7-432-Human trafficking awareness" summary:@"" link:@"" state:@"Maryland"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"10-406-Authorized wire, oral, or electronic interceptions" summary:@"The Attorney General, State Prosecutor, or any State's Attorney may apply to a judge for authorization for the interception of communications by law enforcement officers when it may provide evidence of murder, kidnapping, rape, child abuse, extortion, a human trafficking offense, etc." link:@"http://safehouseofhope.org/wp-content/uploads/2012/02/Maryland-State-Report.pdf" state:@"Maryland"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SB 352/HB 607 (2012) § 19–103.-NHTRC Number posting in truck stops" summary:@"The owner of privately owned bus stop or truck stop shall post the national human trafficking resource center hotline information sign described in Section 15-207 on the inside of each stall door in the restroom or on the back of the entrance door." link:@"http://safehouseofhope.org/wp-content/uploads/2012/02/Maryland-State-Report.pdf" state:@"Maryland"];
    [self insertNewObject:one];
    
    
    
    
    
    //Massachusetts
    one = [[HTStateLawData alloc]init:@"HB 3808-50-Trafficking of persons for sexual servitude; trafficking of persons under 18 years for sexual servitude; trafficking by business entities; penalties; tort actions brought by victims" summary:@"Whoever knowingly subject, or attempts to subject another to any form of sexual servitude shall serve no less than 5 years in the state prison but no more than 20 years and may not be fined more than $25,000. A business may not be fined more than $1,000,000." link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-51-Trafficking of persons for forced service; victims under 18 years; trafficking by business entities; penalties; tort actions brought by victims" summary:@"Whoever knowingly subject, or attempts to subject another to any form of forced labor shall serve no less than 5 years in the state prison but no more than 20 years and may not be fined more than $25,000. A business may not be fined more than $1,000,000." link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-Asset Forfeiture" summary:@"" link:@"http://www.mass.gov/legis/journal/desktop/Current%20Agenda%202011/H3808.pdf" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-66A-Victims of Human Trafficking Trust Fund" summary:@"There shall be a separate fund to me known as the Victims of Human Trafficking Fund, consisting of proceeds assets seized and forfeited together with any interest or earnings accrued on such monies through investment deposit." link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-1.-Definitions" summary:@"Provides definitions for terms such as 'sexual assault', 'sexually violent offense', 'sex offense involving a child', and 'sex offense'." link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-2.-Enterprise crime; penalties" summary:@"" link:@"http://www.mass.gov/legis/journal/desktop/Current%20Agenda%202011/H3808.pdf" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-39K-Child welfare service needs of sexually exploited children" summary:@"The department of children and families, in collaboration with the department of mental health and other appropriate state agencies, shall provide for the child welfare services needs of sexually exploited children and provide appropriate services to a child reasonably believed to be a sexually exploited child to safeguard the child's welfare." link:@"https://malegislature.gov/Bills/187/House/H03808" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-Human Trafficking Task Force" summary:@"There shall be an interagency task force to address all aspects of human trafficking, including sex trafficking and labor trafficking.  The task force shall consist of representative from various designated agencies." link:@"http://www.mass.gov/legis/journal/desktop/Current%20Agenda%202011/H3808.pdf" state:@"Massachusetts"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB 3808-Safe Harbor" summary:@"" link:@"http://www.mass.gov/legis/journal/desktop/Current%20Agenda%202011/H3808.pdf" state:@"Massachusetts"];
    [self insertNewObject:one];
    
   
    
    
    
    //Michigan
    one = [[HTStateLawData alloc]init:@"750.159g(gg)-Definitions; racketeering" summary:@"Provides documentation on what violations constitute the offense of racketeering." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-xxva/section750-159g/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(a)-Definitions" summary:@"Provides definitions for terms commonly used with human trafficking such as 'commercial sexual activity', 'extortion', 'financial harm', and 'services'." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462a/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(b)-Forced labor or services; threat of physical harm; prohibition; violation as felony; penalty" summary:@"A person shall not knowingly subject or attempt to subject another to forced labor or services by causing or threatening to cause physical harm to another person." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462b/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(c)-Forced labor or services; physical restraint; prohibition; violation as felony; penalty" summary:@"A person shall not knowingly subject or attempt to subject another to forced labor or services by physically restraining or threatening to physically restrain another person." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462c/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(d)-Forced labor or services; abuse of law or legal process; prohibition; violation as felony; penalty" summary:@"A person shall not knowingly subject or attempt to subject another to forced labor or services by abusing or threatening to abuse the law or legal process." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462d/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(e)-Forced labor or services; destroying, concealing, removing, confiscating, or possessing passport or immigration document of another person; prohibition; violation as felony; penalty" summary:@"A person shall not knowingly subject or attempt to subject another to forced labor or services by knowingly destroying , concealing, removing, confiscating, or possessing an actual or purported government identification document, of another person." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462e/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(f)-Forced labor or services; blackmail or threat of financial harm; prohibition; violation as felony; penalty" summary:@"A person shall not knowingly subject or attempt to subject another person to forced labor or services by blackmailing, using or threatening to cause financial harm to, or exerting or threatening to  exert financial control over another person." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462f/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(g)-Use of minor for child sexually abusive activity; prohibition; violation as felony; penalty" summary:@"A person shall not knowingly recruit, entice, harbor, transport, provide, or obtain by any means, or attempt to recruit, entice, harbor, provide, or obtain by any means, a minor knowing that the minor will be used for child sexually abusive activity." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462g/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(h)-Prohibited acts; violation as felony; penalty" summary:@"A person shall not knowingly recruit, entice, harbor, provide, obtain, or attempt, by any means another person with the intent to subject them to forced labor or services or benefit financially  or obtain anything of value for a venture of such an act." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462h/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(i)-Kidnapping, criminal sexual conduct, or attempt to kill; penalty" summary:@"If a violation of this chapter involves kidnapping or an attempt to kidnap, criminal sexual conduct, or an attempt to commit criminal sexual conduct, or an attempt to kill, the defendant shall be imprisoned for life or any term of years." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462i/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.462(j)-Providing or obtaining labor or services of another person by force, fraud, or coercion; recruiting, etc, person for labor or services for purposes of holding person in involuntary servitude or debt bondage; construction with other laws sentencing" summary:@"A person shall not knowingly provide or obtain the labor or services of another person by force, fraud, or coercion, or knowingly recruit, harbor, transport, provide, or obtain a person for labor or services for the purpose of holding them in involuntary servitude or debt bondage." link:@"http://law.justia.com/codes/michigan/2011/chapter750/act328of1931/328-1931-lxviia/section750-462j/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"600.4701-Definitions: Asset Forfeiture" summary:@"Provides meanings for terms commonly used in the state of Michigan in reference to asset forfeiture." link:@"http://law.justia.com/codes/michigan/2006/mcl-chap600/mcl-600-4701.html" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"600.4702-Property subject to seizure and forfeiture; encumbrances; substituted proceeds of crime." summary:@"All property that is the proceeds of a crime except real property that is the primary residence of the spouse/dependent if they are unaware of the crime, and all property used in concealed crime, the escape from the scene of a crime, or or used to conceal one's identity is subject to forfeiture." link:@"http://law.justia.com/codes/michigan/2012/chapter600/act236of1961/236-1961-47/section600-4702/" state:@"Michigan"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"750.448.-Soliciting and accosting" summary:@"A person 16 years of age or older who accosts, solicits, or invites another person in a public place or in or from a building or vehicle, by word, gesture, or any other means, to commit prostitution or to do any other lewd or immoral act, is guilty of a crime " link:@"http://law.justia.com/codes/michigan/2012/chapter750/act328of1931/328-1931-lxvii/section750-448/" state:@"Michigan"];
    [self insertNewObject:one];
    
    
    
    
    
    //Minnesota
    one = [[HTStateLawData alloc]init:@"256J.08-Minnesota family investment program; Definitions" summary:@"Provides meanings for terms used in reference to the family investment program, such as 'absent parent', 'agency error', 'applicant', 'basic needs', and 'caregiver'." link:@"http://law.justia.com/codes/minnesota/2010/245-267/256J/256J_08.html" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"256J.32-Documenting, verifying, and recertifying eligibility" summary:@"A county agency must only require verification of information necessary to determine MFIP eligibility and the amount of the assistance payment." link:@"http://law.justia.com/codes/minnesota/2011/245-267/256j/256j-32/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.78-Statewide human trafficking assessment" summary:@"The commissioner of public safety, in cooperation with local authorities, shall collect, share, and compile trafficking data among government agencies to assess the nature and extent of trafficking in Minnesota as well as analyze the data to develop a plan to address and prevent human trafficking." link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-78/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.785-Trafficking study" summary:@"The commissioner shall elicit the cooperation and assistance of government agencies and nongovernmental organizations as appropriate to assist in the collection of trafficking data." link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-785/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.79-Trafficking study; analysis and use of data" summary:@"The commissioner shall analyze the data collected in section 299A.785 to come up with a plan to address current trafficking and prevent future trafficking which includes  ways to train agencies, organizations, and officials involved in law enforcement, prosecution, and social services as well as a way to increase public awareness of trafficking." link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-79/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.795-Trafficking victim assistance" summary:@"The commissioner may review the existing services to meet trafficking victims' needs and recommend a plan that would coordinate the services including, but not limited to medical and mental services, housing, educations and job training, English as a second language, interpreting services, leg an and immigration services, and victim compensation." link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-795/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.7955-Human trafficking task force" summary:@"By September 1, 2006, the commissioner shall appoint a 22-member tai force on human trafficking to advise the commissioner on the commissioner's duties in sections 299.A.78 to 299A.795. The task force shall also serve as a liaison between the commissioner and agencies and nongovernmental organizations that provide services to trafficking victims." link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-7955/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"299A.7957-Toll free hotline for trafficking victims" summary:@"The commissioner of public safety shall contract with a nonprofit organization that provides legal services to domestic and international trafficking victims to maintain a toll-free telephone hotline for trafficking victims." link:@"http://law.justia.com/codes/minnesota/2011/299a-299n/299a/299a-7957/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.281-Definitions" summary:@"Provides meanings for the terms 'blackmail', 'debt bondage', 'forced labor or services', 'labor trafficking', and 'labor trafficking victim'." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-281/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.282-Labor trafficking" summary:@"Whoever knowingly engages in the labor trafficking of an individual who is under the age of 18 is guilty of a crime and may be sentenced to imprisonment for not more than 20 years or a fine of no more than $40,000 or both.  If the victim is at least 18 years of age the maximum sentence is 15 years and the maximum fine is $30,000." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-282/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.283-Unlawful conduct with respect to documents in furtherance of labor or sex trafficking" summary:@"Unless the person's conduct constitutes a violation o section 609.282, a person who knowingly destroys, conceals, removes, confiscates, or possesses any actual purported passport or other immigration document, or any other actual or purported government identification document is guilty of a crime." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-283/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.284-Labor or sex trafficking crimes; defenses; civil liability; corporate liability" summary:@"A labor trafficking victim may bring a cause of actin against a person who violates section 609.282 or 609.283.  If a corporation or other business enterprise is convicted of violation section 609.282, 609.283, or 609.322, the court may order it's dissolution, suspend or revoke any license, or oder the surrender of it's charter." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-284/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.321-Prostitution and sex trafficking; definitions" summary:@"Provides meaning for terms used in relation to prostitution and sex trafficking such as 'business of prostitution', 'patron', 'place of prostitution', 'sex trafficking', 'sexual contact', etc." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-321/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.322-Solicitation, inducement, and promotion of prostitution; sex trafficking" summary:@"Whoever, while acting other than a prostitute or patron, intentionally does any of the acts named in this section may be sentenced to imprisonment of a time not exceeding the given maximum sentencing or a fine not exceeding the documented maximum amount." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-322/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.5315(5)(b)-Disposition of forfeited property" summary:@"For forfeitures resulting from violations of section 609.282, 609.283, or 609.322, the money or proceeds from the sale of forfeited property, after payment of seizure, storage, forfeiture, and sale expenses, the proceeds must be distributed as documented in this section." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-5315/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"611A.036-Prohibition against employer retaliation" summary:@"An employer must allow a victim or witness, who is subpoenaed or requested by the prosecutor to attend court for the purpose of giving testimony, reasonable time off from work to attend criminal proceedings related to the victim's case." link:@"http://law.justia.com/codes/minnesota/2011/609-624/611a/611a-036/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"624.712(sub.5)-Definitions. -Subd. 5. Crime of Violence" summary:@"'Crime of violence means: felony convictions of offenses including: murder, manslaughter, aiding suicide, assault, robbery, kidnapping, false imprisonment, sex trafficking, malicious punishment of a child, arson, etc." link:@"http://law.justia.com/codes/minnesota/2011/609-624/624/624-712/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.902-Definitions: Investigative Tools" summary:@"Provides meaning for terms such as 'criminal proceeds', 'criminal act', 'enterprise', 'pattern of criminal activity', 'personal property', 'principal', 'prosecuting authority', and 'real property'." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-902/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.903-Racketeering" summary:@"A person is guilty of racketeering if they are employed by or associated with an enterprise an intentionally conducts or participates in the affairs by participating in a pattern of criminal activity." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-903/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SF 1, Article 4-Sexually Exploited Youth" summary:@"Sexually exploited youth means an individual who is alleged to have engaged in conduct which would, if committed by an adult, violate any federal, state, or local law relating to being hired, offering to be hired, or agree to be hired by another individual to engage in sexual penetration or sexual conduct." link:@"http://www.njjn.org/uploads/digital-library/Minnesota-Safe-Harbor-Youth-Victims-of-Sexual-Exploitation-SF-1.pdf" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"609.093-Juvenile Prostitutes; Diversion or Child Protection Proceedings" summary:@"This section applies to a 16 or 17 year old child alleged to have engaged in prostitution as defined in section 609.321 and has not been a previously adhjucated delinquent for engaging in prostitution, not completed a diversion program, and has not been place on probation or previously found to be in need of protection and agrees to complete the diversion program." link:@"http://law.justia.com/codes/minnesota/2011/609-624/609/609-093/" state:@"Minnesota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"SF 1 (2011)-Safe Harbor for Sex Trafficked Youth; Sexually Exploited Youth; Statewide Victim Services Model" summary:@"If sufficient funding from outside sources is donated, the commissioner of public safety shall develop a statewide model as provided in this section.  By June 30, 2012, the commissioner shall develop a victim services model to address the needs of sexually exploited youth." link:@"http://www.njjn.org/uploads/digital-library/Minnesota-Safe-Harbor-Youth-Victims-of-Sexual-Exploitation-SF-1.pdf" state:@"Minnesota"];
    [self insertNewObject:one];
    
    
    
    
    
    //Mississippi
    one = [[HTStateLawData alloc]init:@"97-3-54-Anti-human trafficking act; short title" summary:@"Sections 97-3-54 through 97-3-54.4 may be known and cited as the Mississippi Anti-Human Trafficking Act." link:@"http://law.justia.com/codes/mississippi/2010/title-97/3/97-3-54/" state:@"Mississippi"];
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
    one = [[HTStateLawData alloc]init:@"566.103-Promotion of online sexual solicitation- advertisements-notification of violation" summary:@"A person or entity commits the offense of promoting online sexual solicitation if they knowingly permit a web-based classified service owned or operated by such a person or entity to be used by individuals to post advertisements promoting prostitution, enticing a child to engage in sexual conduct, or promoting sex trafficking of a child." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566103/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.200-Definitions" summary:@"Provides meanings for terms commonly used in cases involving sexual offenses." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566200/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.203-Abusing an individual through forced labor penalty" summary:@"A person commits this crime by knowingly providing or obtaining the labor or services of a person by causing or threatening to cause serious physical harm, physically restraining or threatening to restrain, blackmailing, causing a person to believe they will be harmed if they do not comply, or by abusing the law." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566203/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.206-Trafficking for the purpose of slavery, involuntary servitude, peonage, of forced labor penalty" summary:@"A person commits tho crime if they knowingly recruit, entice, harbor, transport, provide, or obtain by any means another person for labor or services, for purposes of slavery, involuntary servitude, peonage, or forced labor, or benefits from participating in such activities." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566206/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.209-Trafficking for the purpose of sexual exploitation penalty" summary:@"A person commits this crime if they knowingly recruit, entice, harbor, transport, provide, or obtain by any means another person for the use of employment of such a person in sexual conduct, sexual performance, or production of explicit sexual material without consent or benefits from participating in such activities." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566209/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.212-Sexual trafficking of a child penalty" summary:@"A person commits the crime of sexual trafficking of a child if the individual knowingly recruits, entices, harbors, or obtains a person under the age of eighteen to participate in a commercial sex act or benefits from such activities, or causes a person under the age of eighteen to engage in a commercial sex act." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566212/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.213-Sexual trafficking of a child under age twelve affirmative defense not allowed, when penalty" summary:@"A person commits this crime if the individual knowingly recruits, entices, harbors, or obtains a person under the age of twelve to participate in a commercial sex act or benefits from such activities, or causes a person under the age of twelve to engage in a commercial sex act." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566213/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.215-Human trafficking through misuse of documentation" summary:@"A person commits this crime if they knowingly destroy, conceals, removes, confiscates, a valid or purportedly valid government identification from another person while committing crimes or prevents or restricts, without lawful authority, a person's ability to move in order to maintain labor or services." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566215/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.215.1-Contributing to human trafficking-penalty" summary:@"A person commits the crime of contributing to human trafficking through the misuse of documentation when they knowingly destroy, conceal, remove, or possess a valid or purportedly valid government identification with the intent to commit a crime o they prevent, restrict, or attempt either, a person's ability to move to maintain labor or services." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566215/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.218-Restitution required for certain offenders" summary:@"A court sentencing a defendant convicted of violating specified sections shall order the defendant to pay restitution to the victim regardless of whether the defendant is sentenced to a term o imprisonment or probation.  Minimum restitution shall be determined by the court necessary to compensate the victim for values of labor and/or rehabilitation of the family." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566218/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.223-Federal Trafficking Victims Protection Act of 2000 to apply" summary:@"Any person who is alleging that a violation of documented sections has occurred against them shall be afforded rights and protections granted by this act and the listed protocol should be followed, such as being coerced or threatened into prostitution acting as an affirmative defense and notifying the department of public safety with relevant information." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566223/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"566.265-Penalties for violation by corporation or business" summary:@"If a corporation or other business pleads guilty to or is found guilty of violating listed sections, in addition to the criminal penalties described in such sections and other remedies provided by the law, the court may order its dissolution, suspension or revocation of any license granted by the state, or the surrender of its charter or business certificate." link:@"http://law.justia.com/codes/missouri/2012/titlexxxviii/chapter566/section566265/" state:@"Missouri"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"513.607-Asset Forfeiture" summary:@"All property of every kind, including cash or other negotiable instruments, used or intended for use in the course of, derived from, or realized from, or realized through criminal activity is subject to civil forfeiture." link:@"http://law.justia.com/codes/missouri/2012/titlexxxv/chapter513/section513607/" state:@"Missouri"];
    [self insertNewObject:one];
    
    
    
    
    
    //Montana
    one = [[HTStateLawData alloc]init:@"45-5-305-Subjecting another to involuntary servitude definitions" summary:@"A person commits the offense of subjecting another to involuntary servitude if the person purposely or knowingly obtains or maintains the forced labor or services of another person by any of the actions mentioned in this section or threatening any of those actions." link:@"http://law.justia.com/codes/montana/2011/title45/chapter45-5/part45-5-3/section45-5-305/" state:@"Montana"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"45-5-306-Trafficking of persons for involuntary servitude" summary:@"A person commits the offense of trafficking of persons for involuntary servitude if they purposely or knowingly recruit, entice, harbor, transport, or obtains by any means, another person, knowing that they will be subject to involuntary servitude or they benefit in some way from the venture of this crime." link:@"http://law.justia.com/codes/montana/2011/title45/chapter45-5/part45-5-3/section45-5-306/" state:@"Montana"];
    [self insertNewObject:one];
    
    
    
    
    //Nebraska
    one = [[HTStateLawData alloc]init:@"28-830-Human trafficking; forced labor or services; terms, defined" summary:@"Provides meaning for terms commonly used in cases of human trafficking, specifically forced labor or services." link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-830/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"28-831-Human trafficking; forced labor or services; prohibited acts; penalties" summary:@"No person shall knowingly subject or attempt to subject another to forced labor or services.  No person shall knowingly recruit, entice, harbor, or obtain by any means a minor for the purpose of any sexual act or cause them to perform any sexual act.  Any person who knowingly does these or benefits from them is guilty of a felony." link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-831/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"28-832-Human trafficking; Attorney General; Department of Health and Human Services; duties" summary:@"The attorney general shall, no later than July 14, 2006, issue a report on how existing victim and witness laws and rules and regulations respond to the needs of victims. The Department of Health and Human Services shall issue a report on how existing social service programs respond or fail to respond to the needs of human trafficking victims." link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-832/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"28-1354-Terms, defined" summary:@"Provide meanings for terms commonly used in crimes relevant to this sections." link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-1354/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"28-1355-Pattern of racketeering activity or collection of an unlawful debt; prohibited acts" summary:@"It shall be unlawful for any person who has received any proceeds that they knew were derived, directly or indirectly, from a pattern of racketeering activity or collection of unlawful debt to use or invest such proceeds.  It shall also be unlawful for any person to acquire, maintain, or control any enterprise or real property through this crime." link:@"http://law.justia.com/codes/nebraska/2012/chapter-28/statute-28-1355/" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"LB 1145-Training for Law Enforcement" summary:@"It is the intent of the Legislature that law enforcement agencies, prosecutors, public defenders, and other relevant agencies involved in the juvenile justice system and criminal justice system, along with other relevant officials be provided mandatory training regarding issues in human trafficking." link:@"http://uniweb.legislature.ne.gov/FloorDocs/102/PDF/Slip/LB1145.pdf" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"LB 1145-Human Trafficking Task Force" summary:@"A task force is to be established within the Nebraska Commission on Law Enforcement and criminal Justice for the purposes of investigating and studying human trafficking, the methods for advertising human trafficking services, and the victimization of individuals coerced to participate in human trafficking." link:@"http://uniweb.legislature.ne.gov/FloorDocs/102/PDF/Slip/LB1145.pdf" state:@"Nebraska"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"LB 1145-Posting of Human Trafficking Hotline" summary:@"The Department of Labor shall work with the task force to develop or select informational posters for placement around the state.  The poster shall be in English, Spanish, and any other language deemed appropriate by the task force.  The poster shall also include a toll-free telephone number a person may call for assistance, preferably the NHTRCH." link:@"http://uniweb.legislature.ne.gov/FloorDocs/102/PDF/Slip/LB1145.pdf" state:@"Nebraska"];
    [self insertNewObject:one];
    
    
    
    
    //Nevada
    one = [[HTStateLawData alloc]init:@"200.463-Involuntary servitude; penalties" summary:@"A person who knowingly subjects, or attempts to subject, another to forced labor or services by causing or threatening to cause any of the following: physical harm anyone, physically restrain anyone, abuse the law or legal process, destroy government identification, extortion, or financial harm is guilt of holding a person involuntary servitude." link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.463/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"200.464-Recruiting, enticing, harboring, transporting, providing or obtaining another person to be held in involuntary servitude; benefiting from another person being held in involuntary servitude; penalty" summary:@"A person who knowingly recruits, entices, harbors, transports, provides, or obtains by any means another, intending or knowing that the person will be held in involuntary servitude or benefits from participation in a violation is guilty of a category B felony." link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.464/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"200.465-Assuming rights of ownership over another person; purchase or sale of person; penalty" summary:@"A person who assumes rights of ownership over another, sells a person to another, receives money in consideration of placing a person in the custody or under the control of another, buys a person, pays money to have a person placed under their control, knowingly aids or assist a violator, or attempts any of the stated is guilty of a class B felony." link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.465/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"200.467-Trafficking in persons for financial gain; penalties" summary:@"A person shall not in any way be associated with transporting another person into the State of Nevada who the person knows or has reason to know does not have the legal right to enter or remain in the US in exchange for money or other financial gain." link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.467/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"200.468-Trafficking in persons for illegal purposes; penalty" summary:@"A person shall not in any way be associated with transporting another person into the State of Nevada whom the person knows or has reason to know does not have legal right to enter or remain in the US with the intent to subject the person to involuntary servitude, violate state or federal labor laws, or commit any other crime." link:@"http://law.justia.com/codes/nevada/2011/chapter-200/statute-200.468/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"613.080-Involuntary servitude prohibited; wages; penalty" summary:@"The immigration to this State of all slaves and other people bound by contract to involuntary servitude for a term of years is herby prohibited.  It is unlawful to collect wages for the aforementioned person or to pay the owner of such a person for the labor of a slave or person bound by a contract to involuntary servitude." link:@"http://law.justia.com/codes/nevada/2011/chapter-613/statute-613.080/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"201.300-Pandering: Definition; penalties; exception" summary:@"A person who sways another person into becoming or continuing prostitution, using persuasion, promises, or threats, or receives money for procuring a person to become a prostitute is guilty of pandering." link:@"http://law.justia.com/codes/nevada/2011/chapter-201/statute-201.300/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"NRS 179.121-Forfeiture of personal property and conveyances used in commission of crime." summary:@"All property, including, without limitation, any tool, substance, weapon, machine, computer, money or security instrumentality in crimes such as murder, robbery, kidnapping, or aiding in terrorism is subject to forfeiture. Conveyances, including aircraft, vehicles, or vessels, which are used in a felony are subject to forfeiture unless specified." link:@"http://law.justia.com/codes/nevada/2011/chapter-179/statute-179.121/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"NRS 432B.610-Training for Law Enforcement" summary:@"The Peace Officers Standards and Training Commission shall require each category I peace officer to complete training for the detection and investigation of and response to cases of sexual abuse or exploitation of children under the age of 18, not certify a peace officer until training is complete, establish a training program, and adopt necessary regulations." link:@"http://law.justia.com/codes/nevada/2011/chapter-432b/statute-432b.610/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"NRS 432B.620-Certification of peace officers" summary:@"A peace officer assigned to investigate cases of sexual exploitation of children under the age of 18 years must be certified to carry out those duties by the Peace Officers Standards and Training Commission. These officers must complete the specified training program." link:@"http://law.justia.com/codes/nevada/2011/chapter-432b/statute-432b.620/" state:@"Nevada"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"NRS 176.515-Vacating Convictions" summary:@"The court may grant a new trial to a defendant if required as a mater of law or on the grounds of newly discovered evidence.  If trail was by court without jury, the court may vacate the judgment if entered, take additional testimony and direct the entry of a new judgement." link:@"http://law.justia.com/codes/nevada/2011/chapter-176/statute-176.515/" state:@"Nevada"];
    [self insertNewObject:one];
    
    
    
    
    
    //New Hampshire
    one = [[HTStateLawData alloc]init:@"633:5-Peonage" summary:@"An actor is guilty of a class A misdemeanor if such a person knowingly holds a victim in a condition of involuntary servitude in satisfaction of a debt owed to the actor." link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-5/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:6-Definitions" summary:@"Provides meanings for the terms 'commercial sex act', 'sex act', 'sexually-explicit performance', 'serious harm', and 'involuntary servitude'." link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-6/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:7-Trafficking in Persons" summary:@"It is a class A felony to knowingly subject a person to involuntary servitude, where the compulsion is accomplished by causing or threatening to cause serious harm, convening a person unlawfully, abusing the legal process, destroying or concealing government identification, coercion, etc." link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-7/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:8-Forfeiture of items used in connection with trafficking in persons" summary:@"All offenses under this section shall qualify as offenses for forfeiture and thereby upon petition of the attorney general, shall be subject to forfeiture to the star and said property interest shall be vested in the state: all materials used in violation, any property used in furtherance of violation, moneys, books, records, property included in violation." link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-8/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:9-Administrative forfeiture of items used in connection with trafficking in persons" summary:@"Interest in property subject to forfeiture under the provisions of RSA 633:8,I(a),I(b),I(c) and I(d), but not real property, shall be subject to administrative forfeiture by the department of justice provided that the total amount or value of such property dos not exceed $75,000." link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-9/" state:@"New Hampshire"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"633:10-Restitution and Compensation" summary:@"A person convicted under this section shall be ordered by the court to pay restitution to the victim. The court may also order a person conceited under this section to pay compensation to the victim." link:@"http://law.justia.com/codes/new-hampshire/2010/titlelxii/chapter633/section633-10/" state:@"New Hampshire"];
    [self insertNewObject:one];
    
    
    
    
    //New Jersey
    one = [[HTStateLawData alloc]init:@"2C:13-8-Human Trafficking" summary:@"A person commits the crime of human trafficking if they knowingly holds, recruits, lures, entices another to engage in sexual activity or to provide labor services by threats of physical harm or restraint, destroying government identification, or threatening to abuse the law or legal process." link:@"http://law.justia.com/codes/new-jersey/2009/title-2c/section-2c-13/2c-13-8/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2C:41-1(a)(1)(z)-Racketeering - Definitions" summary:@"Provides meaning for the terms 'racketeering activity', 'person', 'enterprise', 'pattern of racketeering activity', 'unlawful debt', 'documentary material', 'attorney general', and 'trade or commerce'." link:@"http://law.justia.com/codes/new-jersey/2009/title-2c/section-2c-41/2c-41-1/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"44:10-34-Definitions relative to welfare reform, eligibility" summary:@"Provides meanings for terms commonly used in cases of welfare reform, such as 'alternative work experience', 'dependent child', and 'standard of need'." link:@"http://law.justia.com/codes/new-jersey/2009/title-44/section-44-10/44-10-34/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"52:4B-44-Standards for law enforcement agencies to ensure rights of crime victims" summary:@"The Attorney General shall, through the Office of Victim-Wellness Advocacy in the Division of Criminal Justice in the Department of Law and Public Safety and in consultation with the county prosecutors, promulgate standards for law enforcement agencies to ensure that the rights of crime victims are enforced." link:@"http://law.justia.com/codes/new-jersey/2009/title-52/section-52-4b/52-4b-44/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2C:64-1-Property subject to forfeiture" summary:@"Controlled dangerous substances, unlawfully possessed firearms,  all property used in a criminal act, property that has become or is intended to become part of illegal activity, and proceeds from illegal activity are subject to forfeiture." link:@"http://law.justia.com/codes/new-jersey/2009/title-2c/section-2c-64/2c-64-1/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2A:4A-21-Purposes" summary:@"This act shall be construed so as to effectuate the purpose of preserving the unity of the family, being consistent with the protection of the public interest, separating juveniles from he family environment only when necessary for their health, safety, or welfare." link:@"http://law.justia.com/codes/new-jersey/2009/title-2a/section-2a-4a/2a-4a-21/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2A:4A-22-General definitions" summary:@"Provides meanings for the terms 'juvenile', 'adult', 'detention', 'shelter care', 'commit', 'guardian', 'juvenile-family crisis', 'repetitive disorderly persons offense', 'court', and 'commission'." link:@"http://law.justia.com/codes/new-jersey/2009/title-2a/section-2a-4a/2a-4a-22/" state:@"New Jersey"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"2A:4A-42-Predispositional evaluation" summary:@"" link:@"" state:@"New Jersey"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2A:4A-71-Review and processing of complaints" summary:@"The jurisdiction of the court in any compliant filed pursuant to section @A:4A-30 shall extend to the juvenile who is the subject of the compliant and his parents or guardian. Every complaint shall be reviewed by court intake services for recommendation as to whether the complaint should be dismissed, diverted, or referred for court action." link:@"http://law.justia.com/codes/new-jersey/2009/title-2a/section-2a-4a/2a-4a-71/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2A:4A-74-Court intake service conference" summary:@"Where the juvenile is diverted to a court intake service inference, notices of the conference shall be sent to the juvenile and his parents or guardian and to the complainant  or victim. The parties may be requested  to bring to the conference all pertinent documents in their possession, including medical, social, and school records." link:@"http://law.justia.com/codes/new-jersey/2009/title-2a/section-2a-4a/2a-4a-74/" state:@"New Jersey"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2C:34-1.-Prostitution and Related Offenses" summary:@"A person commits an offense if the actor engages in prostitution, promotes prostitution, knowingly promotes prostitution of a child under 18 whether or not the actor was led to believe the child was 18 or older, knowingly promotes prostitution of someone for whose care the actor is responsible, or knowingly engages in prostitution with anyone under 18." link:@"http://law.justia.com/codes/new-jersey/2009/title-2c/section-2c-34/2c-34-1/" state:@"New Jersey"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"52:4B-44.1-Establishment of standard protocols for provision of information and services to victims of human trafficking, minors charged with prostitution" summary:@"" link:@"" state:@"New Jersey"];
    //[self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"52:4B-11-Causes of personal injury or death" summary:@"" link:@"" state:@"New Jersey"];
    //[self insertNewObject:one];
    
    
    
    
    
    //New Mexico
    one = [[HTStateLawData alloc]init:@"30-52-1-Human Trafficking" summary:@"Human trafficking is knowingly recruiting, soliciting, enticing, transporting, or obtaining by any means another person with the intent or knowledge that force, fraud or coercion will be used  to subject the person to labor, services, or commercial sexual activity, or knowingly benefiting from such a venture." link:@"http://law.justia.com/codes/new-mexico/2011/chapter30/article52/section30-52-1/" state:@"New Mexico"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"30-52-2-Human trafficking; benefits and services for human trafficking victims" summary:@"Human trafficking victims shall be eligible for benefits and services from the state until they qualify by the federal Victims of Trafficking and Violence Act of 2000 if they aid in prosecution of the person charged with the crime. Benefits and services include case management, emergency temporary housing, health care, mental care, etc." link:@"http://law.justia.com/codes/new-mexico/2011/chapter30/article52/section30-52-2/" state:@"New Mexico"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"30-52-3-Temporary Provision; task force to combat human trafficking; membership; duties" summary:@"The task force to combat human trafficking is created and shall collaborate with the US attorney for the district of New Mexico, border patrol, and the US immigration and customs enforcement, collect and organize data on human trafficking, monitor and evaluate implementation of this act, develop training for law enforcement, and more." link:@"http://law.justia.com/codes/new-mexico/2011/chapter30/article52/section30-52-3/" state:@"New Mexico"];
    [self insertNewObject:one];
    
    
    
    
    //New York
    one = [[HTStateLawData alloc]init:@"230.34-Sex trafficking" summary:@"A person is guilty of sex trafficking if they intentionally advance or profit from prostitution by unlawfully providing a person who is patronized, with intent to impure their judgement, making material false statements to cause someone to engage in or continue prostitution, withholding or destroying government identification, or using force." link:@"http://law.justia.com/codes/new-york/2012/pen/part-3/title-m/article-230/230.34/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"230.36-Sex trafficking; accomplice" summary:@"In a prosecution for sex trafficking, a person from whose prostitution activity another person is alleged to have advanced or attempted to advance or profited or attempted to profit shall not be deemed to be an accomplice." link:@"http://law.justia.com/codes/new-york/2012/pen/part-3/title-m/article-230/230.36/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"135.35-Labor trafficking" summary:@"A person is guilty of labor trafficking if they couple or induce another  to engage in labor or recruits, entices, harbors such other persons by means of intentionally providing substances to impair judgement, unlawful debt, withholding or destroying government identification, or by force." link:@"http://law.justia.com/codes/new-york/2012/pen/part-3/title-h/article-135/135.35/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"135.36-Labor trafficking; accomplice" summary:@"In a prosecution for labor trafficking, a person who has been compelled or induced or recruited, enticed, harbor or transported to engage in labor shall not be deemed to be an accomplice." link:@"http://law.justia.com/codes/new-york/2012/pen/part-3/title-h/article-135/135.36/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"440.10-Motion to vacate judgement" summary:@"At any time after the entry of a judgment, the court in which it was entered may, upon motion of the defendant, vacate such judgment upon the grounds of the court not having such jurisdiction, misrepresentation, change in the state of evidence, or other such violations." link:@"http://law.justia.com/codes/new-york/2012/cpl/part-2/title-m/article-440/440.10" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"311.4-Substitution of petition or funding" summary:@"At any time in the proceedings the court, upon motion of a respondent or its own motion, may, with the consent of the presentment agency and with the consent of the respondent, substitute a petition alleging that the respondent is in need of supervision for a petition alleging that the respondent is a juvenile delinquent." link:@"http://law.justia.com/codes/new-york/2006/family-court/fct0311.4_311.4.html" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 447-a-Definitions" summary:@"Provides meanings for terms 'sexually exploited children', 'short-term safe house', 'advocate', 'safe house', and 'community-based program'." link:@"http://law.justia.com/codes/new-york/2012/sos/article-6/title-8-a/447-a/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 447-b-Services for exploited children" summary:@"Every local social services district shall as a component of the district's multi-year consolidated services plan address the needs of sexually exploited children and to what extend funds are available." link:@"http://law.justia.com/codes/new-york/2012/sos/article-6/title-8-a/447-b/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-aa-Definitions" summary:@"Provides meaning for the terms 'Human trafficking victim' and 'pre-certified victim of human trafficking'." link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-aa/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-bb-Services for victims of human trafficking" summary:@"The office of temporary and disability assistance may coordinate with and assist law enforcement agencies and district attorney's offices to access appropriate services for human trafficking victims." link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-bb/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-cc-Confirmation as a victim of human trafficking" summary:@"As soon as practicable afar a first encounter with a person who reasonably appears to a law enforcement agency or a district attorney's office to be a human trafficking victim, that agency or office shall notify the office of temporary disability assistance and the division of criminal justice services that they may be eligible or services under this article." link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-cc/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-dd-Law enforcement assistance with respect to immigration" summary:@"Upon the request of a human trafficking victim or a representative of a human trafficking victim, the state or local law enforcement agency or district attorney's office shall provide the victim with the United States Citizenship and Immigration Service Form I-194 Supplement B Declaration of Law Enforcement Officer for Victim of Trafficking in Persons." link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-dd/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"L 483-ee-Establishment of interagency task force on human trafficking" summary:@"There is established an interagency task force on trafficking in persons, which shall consist of: The commissioners of the division of criminal justice, temporary and disability assistance, health, office of mental health, labor, office of children and family services, directors of victim services and domestic violence and state police superintendent." link:@"http://law.justia.com/codes/new-york/2012/sos/article-10-d/483-ee/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"460.1-Definitions" summary:@"Provides meaning for the terms 'criminal act', 'enterprise', 'pattern of criminal activity', and 'criminal enterprise'." link:@"http://law.justia.com/codes/new-york/2012/pen/part-4/title-x/article-460/460.10/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"460.2-Enterprise corruption" summary:@"A person is guilty of enterprise corruption when, having  knowledge of being employed by one that participates in criminal enterprises, they: conduct or participate in affairs, acquire or maintain any interest, or participate in a pattern of criminal activity." link:@"http://law.justia.com/codes/new-york/2012/pen/part-4/title-x/article-460/460.20/" state:@"New York"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"700.05-Eavesdropping and video surveillance warrants; definitions of terms" summary:@"Provides meaning for the terms 'eavesdropping', 'eavesdropping warrant', 'intercepted communication', 'justice', 'applicant', 'law enforcement officer', 'exigent circumstances', 'designed offense', 'video surveillance', and 'video surveillance warrant'." link:@"http://law.justia.com/codes/new-york/2010/cpl/part-3/title-t/article-700/700-05" state:@"New York"];
    [self insertNewObject:one];
    
    
    
    
    //North Carolina
    one = [[HTStateLawData alloc]init:@"14-43.10-Definitions" summary:@"Provides meaning for the terms 'coercion', 'deception', 'involuntary servitude', 'minor', and 'sexual servitude'." link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article10a/section14-4310/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14-43.11-Human Trafficking" summary:@"A person commits the offense of human trafficking when that person knowingly recruits, entices, harbors, transports, provides, or obtains by any means another person with the intent that the other person be held in involuntary servitude or sexual servitude." link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article10a/section14-4311/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14-43.12-Involuntary Servitude" summary:@"A person commits the offense of involuntary servitude when that person knowingly and willfully holds another in involuntary servitude." link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article10a/section14-4312/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14-43.13-Sexual Servitude" summary:@"A person commits the offense of sexual servitude when that person knowingly subjects or maintains another in sexual servitude." link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article10a/section14-4313/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"7A-474.3-Eligible activities and limitations" summary:@"Funds appropriate under this Article shall be used only for the following purposes: to provide legal assistance to eligible clients, education to eligible clients regarding their rights and duties under the law, or to involve the private bar in the representation of eligible clients pursuant to this Article." link:@"http://law.justia.com/codes/north-carolina/2010/chapter7a/article37a/section7a-4743/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15A-266.3A-DNA sample required for DNA analysis upon arrest for certain offenses" summary:@"Unless a DNA sample has previously been obtained by lawful process and the DNA record stored in the state DNA Database, a DNA sample for DNA analysis and testing shall be obtained from any person who is arrested for committing an offense described in subsection (f) or (g) of this code." link:@"http://law.justia.com/codes/north-carolina/2010/chapter15a/article13/section15a-2663a/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15A-832-Responsibilities of the district attorney's office" summary:@"Within 21 days after the arrest of the accused, but not less than 24 hours before the accused's first probable-case hearing, the district attorney's office shall provide the victim with sufficient material for the victim to learn information about, right, responsibilities of the attorney's office, eligibility for compensation, suggestions, and contacts." link:@"http://law.justia.com/codes/north-carolina/2010/chapter15a/article46/section15a-832/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15C-1-Address confidentiality program. Purpose" summary:@"The purpose of this Chapter is to enable the State and the agencies of North Carolina to respond to requests for public records without disclosing the location of, and to enable interagency cooperation in providing address confidentiality for, victims of domestic violence, sexual offense, stalking, or human trafficking and the acceptance of a program participant's use of an address." link:@"http://law.justia.com/codes/north-carolina/2010/chapter15c/section15c-1/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15C-3-Address confidentiality program" summary:@"The General Assembly establishes the Address Confidentiality Program in the  Attorney General to protect the confidentiality of the address of a relocated victim of domestic violence, sexual offense, stalking, or human trafficking to prevent the victim's assailants or potential assailants from finding the victim through public records." link:@"http://law.justia.com/codes/north-carolina/2010/chapter15c/section15c-3/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15C-4-Filing and certification of applications; authorization card" summary:@"An individual who wants to participate in the Address Confidentiality Program shall file an application with the Attorney General with the assistance of an application assistant. An eligible applicant, upon properly completing the application and being certified by the Attorney General, will be issued a program authorization card." link:@"http://law.justia.com/codes/north-carolina/2010/chapter15c/section15c-4/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15C-10-Assistance for program applicants" summary:@"The Attorney General shall designate agencies of North Carolina and nonprofit organizations that provide counseling and shelter services to victims of domestic violence, sexual offense, stalking, or human trafficking to assist individuals applying to be program participants. This does not entail legal advice." link:@"http://law.justia.com/codes/north-carolina/2010/chapter15c/section15c-10/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"14-2.3-Forfeiture of gain acquired through criminal activity." summary:@"Except as is otherwise provided in Article 3 of Chapter 31A, in the case of any violation of Article 13A of chapter 14, or a general statue constituting a felony other than a non-willful homicide, any money our property or interest in property acquired thereby shall be forfeited to the State of North Carolina." link:@"http://law.justia.com/codes/north-carolina/2010/chapter14/article1/section14-23/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"75D-3-Definitions" summary:@"Provides meanings for the terms 'enterprise', 'pattern of racketeering activity', 'racketeering activity', 'documentary material', 'RICO lien notice', 'attorney General', 'beneficial interest', 'real property', 'trustee', 'criminal proceeding', and 'civil proceeding'." link:@"http://law.justia.com/codes/north-carolina/2010/chapter75d/section75d-3/" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB-950-5.3A.-Training for Law Enforcement" summary:@"" link:@"http://votesmart.org/static/billtext/41058.pdf" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"HB-950-15.3A.-Establishing Human Trafficking Commission" summary:@"There is established in the Department of Justice the North Carolina Human Trafficking Commission. The commission should conduct research, provide suggestions and assist with human trafficking policies." link:@"http://votesmart.org/static/billtext/41058.pdf" state:@"North Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"15A-831-Responsibilities of law enforcement agency" summary:@"As soon as practicable, but within 72 hours after identifying a victim covered by this Article, the investigating law enforcement agency shall provide the victim with information such as availability of medical services, availability of victim compensation, contact information of the district attorney's office, and other pertinent contact information." link:@"http://law.justia.com/codes/north-carolina/2010/chapter15a/article46/section15a-831/" state:@"North Carolina"];
    [self insertNewObject:one];
    
    
    
    
    
    //North Dakota
    one = [[HTStateLawData alloc]init:@"12.1-06.1-01-Racketeering Crime" summary:@"Provides meanings for terms commonly used in cases of racketeering crime for certain sections." link:@"http://law.justia.com/codes/north-dakota/2012/title-12.1/chapter-12.1-06.1/" state:@"North Dakota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"12.1-40-01-Human trafficking penalty" summary:@"A person is guilty of human trafficking if they benefit financially or receive anything of value from knowing participation in human trafficking or if they promote, recruit, entice, harbor, transport, or obtains another person by any means, knowing they will be subject to human trafficking." link:@"http://law.justia.com/codes/north-dakota/2012/title-12.1/chapter-12.1-40/" state:@"North Dakota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"12.1-40-02-Definitions" summary:@"Provides meaning for the terms 'forced labor or services', 'debt bondage', 'human trafficking', 'labor trafficking', and 'sex trafficking'." link:@"http://law.justia.com/codes/north-dakota/2012/title-12.1/chapter-12.1-40/" state:@"North Dakota"];
    [self insertNewObject:one];
    
    
    
    
    //Ohio
    one = [[HTStateLawData alloc]init:@"2905.01-Kidnapping" summary:@"No person, by force, threat, or deception shall remove another and restrain their liberty for the purpose of holding for ransom or hostage, terrorize, engage in physical activity, or to hold them in a condition of involuntary servitude." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-01/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2905.02(A)(3)-Abduction for the purpose of involuntary servitude" summary:@"No person, without privilege to do so, shall knowingly by force or threat, move a person from a place where they can be found, by force or threat, restrain the liberty of another person under circumstances that risk physical harm, or hold another person in a condition of involuntary servitude." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-02/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2905.31-Definitions" summary:@"Provides meaning for the terms 'involuntary servitude' and 'material that is obscene, sexually oriented, or nudity oriented'." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-31/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2905.32-Trafficking in persons" summary:@"No person shall knowingly recruit, lure, entice, isolate, harbor, transport, provide, obtain, or maintain another person knowingly that the person will be subject to involuntary servitude or be compelled to perform sexually explicit acts." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-32/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2905.33-Unlawful conduct with respect to documents" summary:@"No person, without privilege to do so, shall knowingly destroy, conceal, remove, confiscate, or possess any actual or purported government identification document or passport of another person in the course of a violation of, with intent to violate, or with intent to facilitate a violation of listed sections." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2905/section2905-33/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2929.01-Definitions" summary:@"Provides meaning for terms commonly used in penalties and sentencing, including 'basic probation supervision', 'community control', 'curfew', and 'mandatory prison term'." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2929/section2929-01/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2929.14-Definite prison terms" summary:@"Documents the appropriate sentencing times for for different classes and degrees of crime." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2929/section2929-14/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2923.32-Engaging in pattern of corrupt activity" summary:@"No person employed by, or associated with, any enterprise shall conduct or participate in, directly or indirectly, the affairs of the enterprise through a pattern of correct activity or the collection of an unlawful debt, and no such money should be used for any personal gain." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2923/section2923-32/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2941.1422-Human trafficking specification" summary:@"Imposition of a mandatory prison term of the Revised Code is precluded unless the offender is convicted of or pleads guilty to a felony violation of certain sections and unless the indictment, count in the indictment, or information charging specifies a human trafficking offense." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2941/section2941-1422/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2981.02-Asset Forfeiture" summary:@"Property subject to forfeiture to the state or a political subdivision include contraband involved in an offense,  proceeds derived from or acquired through the commission of an offense,  or instrument of crime, felony, or misdemeanor." link:@"http://law.justia.com/codes/ohio/2011/title29/chapter2981/section2981-02/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"109.73-Rule recommendations" summary:@"The Ohio peace officer training commission shall recommend rules to the attorney general with respect to certain circumstances, including approval or disapproval of officer training schools, minimum qualifications for instructors, and establishing minimum qualifications and requirements for certification for dogs utilized by law enforcement agencies." link:@"http://law.justia.com/codes/ohio/2011/title1/chapter109/section109-73/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"5502.63-Posting of NHTRC Hotline" summary:@"Criminal justice services in the department of public safety shall prepare a poster and brochure that describe safe firearms practices and contains typeface that is at least one-quarter inch tall. Copies will be provided free of charge to federally licensed firearms dealers." link:@"http://law.justia.com/codes/ohio/2011/title55/chapter5502/section5502-63/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2151.358-Expungment of Record for children" summary:@"The juvenile court shall expunge all records sealed under section 2151.356 of the Revised Code five years after the court issues a sealing order or upon the twenty-third birthday of the person who is the subject of the sealing order, whichever date is earlier." link:@"http://law.justia.com/codes/ohio/2011/title21/chapter2151/section2151-358/" state:@"Ohio"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"2152.021-Safe Harbor Provisions" summary:@"Any person having knowledge of a child who appears to be a juvenile traffick offender or to be a delinquent child may file a sworn complaint with respect to that child in the juvenile court of the county in which the child has a residence or legal settlement or in which the traffick offense or delinquent act allegedly occurred." link:@"http://law.justia.com/codes/ohio/2011/title21/chapter2152/section2152-021/" state:@"Ohio"];
    [self insertNewObject:one];
    
    
    
    
    
    //Oklahoma
    one = [[HTStateLawData alloc]init:@"21-446-Unlawful transport of alien - Concealing, harboring, or sheltering from detection - Destroying, hiding, altering, or keeping documentation" summary:@"It shall be unlawful for any person to transport, move, conceal, harbor, or shelter any alien from the State of Oklahoma with knowledge of illegal entry." link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-748-Human trafficking for forced labor or forced sexual exploitation" summary:@"Provides meaning for the terms 'coercion', 'commercial sex', 'debt bondage', 'human trafficking', 'human trafficking for labor', 'human trafficking for commercial sex', 'legal process', and 'minor'." link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-748.2vl-Guidelines for treatment of human trafficking victims - Right to civil action" summary:@"Human trafficking victims shall be housed in an appropriate shelter as soon as practicable, not be inappropriately detained, not be penalized for the trafficking, receive prompt medical attention, and be provided with protection if necessary." link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-748.2v2-Guidelines for treatment of human trafficking victims - Right to civil action" summary:@"Any person aggrieved by a violation of subsection B Section 748 may bring a civil action against the person or persons who committed the violation to recover actual and punitive damages and reasonable attorney fees." link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-1738-Seizure and forfeiture proceedings- Vehicles, airplanes, vessels, etc. used in attempt or commission of certain crimes" summary:@"" link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"21-866-Offense of Trafficking in Children" summary:@"The crime of trafficking in children is defined to consist of acts such as the acceptance, solicitation, offer, or payment for the legal or physical transfer of a minor child, advertising of services for compensation for assistance, and bringing a child to the state for the purpose of trafficking." link:@"http://law.justia.com/codes/oklahoma/2012/title-21/" state:@"Oklahoma"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"22-1402-Definitions for Racketeer-Influenced and Corrupt Organizations Act" summary:@"Provides meaning for the terms 'beneficial interest', 'enterprise', 'innocent party', 'lien notice', 'pattern of racketeering activity', 'pecuniary value', 'person', 'personal property', 'principal', 'racketeering activity', 'real property', 'trustee', and 'unlawful debt'." link:@"http://law.justia.com/codes/oklahoma/2012/title-22/" state:@"Oklahoma"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //Oregon
    one = [[HTStateLawData alloc]init:@"163.261-Definitions for ORS 163.263 and 163.264" summary:@"As used in ORS 163.263 and 163.264, services means activities performed by one person under the supervision or for the benefit of another person." link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-261/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.263-Subject another person to involuntary servitude in second degree" summary:@"A person commits the crime of subjecting another to involuntary servitude in the second degree if  the person knowingly and without lawful authority forces or attempts to force the other to engage in services by abuse, destroying government identification, threatening to collect unlawful debt, or instilling fear that the actor will withhold essential necessities." link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-263/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.264-Involuntary servitude in the first degree" summary:@"A person commits the crime of subjecting another to involuntary servitude in the first degree if they knowingly and without lawful authority force or attempt to force another to engage in services by causing physical harm or threatening death, or physically restraining another." link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-264/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.266-Trafficking in persons" summary:@"A person commits the crime of trafficking in persons if the person knowingly recruits, entices, harbors, or obtains by any means another person knowing they will be subject to involuntary servitude, or benefits from a venture of such a crime." link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-266/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"163.269-Victim assertation of defense of duress" summary:@"A person who is the victim of a crime described in ORS 163.263, 163.264, or 163.266 may assert the defense of duress, as described in ORS 161.270, if the person is prosecuted for conduct that constitutes services under ORS 163.261, that the person was caused to provide." link:@"http://law.justia.com/codes/oregon/2011/vol4/163/163-269/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"166.715-Definitions for Racketeering activity" summary:@"Provides clarification for what is written in ORS 166.715 to 166.735." link:@"http://law.justia.com/codes/oregon/2011/vol4/166/166-715/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"167.017-Compelling Prostitution" summary:@"A person commits the crime of compelling prostitution if the person knowingly uses force or intimidation to compel another to engage in prostitution, induces or cashes a person under 18 years of age to engage in prostitution, aids or facilitate the commission of prostitution by a person under 18 years of age, or induces a spouse or dependent to engage in prostitution." link:@"http://law.justia.com/codes/oregon/2011/vol4/167/167-017/" state:@"Oregon"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"192.854-Services for Human Trafficking Victims" summary:@"The Attorney General may designate employees of or volunteers serving public or private entities that provide counseling and shelter services to victims of domestic violence, a sexual offense, stalking or human trafficking as application assistants to assist individuals applying to participate in the Address Confidentiality Program." link:@"http://law.justia.com/codes/oregon/2011/vol5/192/192-854/" state:@"Oregon"];
    [self insertNewObject:one];
    
    
    
    
    
    //Pennsylvania
   // one = [[HTStateLawData alloc]init:@"18-911-Definition of Racketeering Activity" summary:@"" link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-9/section-911/" state:@"Pennsylvania"];
   // [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3001-Definition" summary:@"Provides meaning for the terms 'criminal coercion', 'forced labor or services', and 'traffics'." link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-30/section-3001/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3002-Trafficking of persons subjected to forced labor" summary:@"A person commits an offense if the person knowingly traffics or knowingly attempts to traffic another person, knowing that the other person will be subjected to forced labor or services." link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-30/section-3002/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3003-Restitution for offenses" summary:@"A person convicted of an offense under this chapter shall, in addition to any other remedy deemed appropriate by the court, be sentenced to pay the victim restitution including the greater of the gross income or value of the labor or services performed by the victim or the value of the victim's labor based on minimum wage." link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-30/section-3003/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18-3004-Forfeiture" summary:@"Provides the circumstances of forfeiture, rules of forfeiture, custody and transfer of property, and the processes and procedures for forfeiture." link:@"http://law.justia.com/codes/pennsylvania/2012/title-18/chapter-30/section-3004/" state:@"Pennsylvania"];
    [self insertNewObject:one];
    
    
    
    
    
    //Rhode Island
    one = [[HTStateLawData alloc]init:@"11-67-1-Definitions" summary:@"Provides meanings for the terms 'intimidation', 'commercial sexual activity', 'forced labor', 'labor', 'maintain', 'obtain', 'sex act', and 'victim'." link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-1/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-2-Involuntary servitude" summary:@"Whoever knowingly subjects, attempts to subject, or engages in a conspiracy to subject another person to forced labor or commercial sexual activity by physical harm, restraint, abuse, or destroying government identification, or intimidation is guilty of a felony." link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-2/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-3-Trafficking of persons for forced labor or commercial sexual activity" summary:@"Any person who knowingly recruits, entices, harbors, transports, provides, or obtains by any means another person with the intent of subjecting them to forced labor or to commit a commercial sexual act or knowingly benefits from a venture of such activity, is guilty of a felony." link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-3/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-4-Restitution" summary:@"In addition to an other amount of loss identified, the court shall order restitution including the greater of the gross income or value to the defendant of the victim's labor or commercial sexual activity, or the value of the victim's labor guaranteed by the minimum wage law." link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-4/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-5-Forfeitures" summary:@"A person found guilty of violating section 11-67-2 or 11-67-3 shall forfeit to the state of Rhode Island any profits or proceeds and all interest in property acquired through the violation of this act." link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-5/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-6-Sex Trafficking of a Minor" summary:@"A person who recruits, employs, entices, solicits, isolates, harbors, or obtains a minor for commercial sex acts, sells or purchases a minor for commercial sex acts, or benefits from the participation in a venture of such acts." link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-6/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-7-Interagency task force on trafficking in persons created - Composition - Duties and responsibilities" summary:@"A task force has been created which will examine and report upon the extent of the existence of human trafficking for commercial sexual activity within the State of Rhode Island. The task force shall consist of representatives from the listed organizations." link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-7/" state:@"Rhode Island"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"11-67-8-Reporting" summary:@"Semi-annually, each law enforcement agency in the state shall file with the listed persons/representatives a report concerning the agency's enforcement of this chapter during the preceding six month period, which contains the number of arrests, number convicted, number pled guilty, fines/sentences, and summary of the amounts of fines levied." link:@"http://law.justia.com/codes/rhode-island/2012/title-11/chapter-11-67/chapter-11-67-8/" state:@"Rhode Island"];
    [self insertNewObject:one];
    
    
    
    
    
    //South Carolina
    one = [[HTStateLawData alloc]init:@"16-3-20-Punishment for murder; separate sentencing proceeding when death penalty sought" summary:@"A person guilty of murder must be punished by death or life imprisonment, meaning imprisonment until death of the defendant without parole.  Depending on whether or not there is statutory aggravating circumstance, the defendant must be sentenced to at least the thirty year minimum imprisonment." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-20/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-652(1)(b)-Criminal sexual conduct in the first degree" summary:@"A person is guilty of criminal sexual conduct in the first degree if the actor engages in sexual battery with the victim and if the actor uses aggravated force, victim submits to sexual battery by the actor under circumstances such as kidnapping, trafficking, or extortion, or causes the victim to be physically or mentally helpless through providing controlled substance." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-652/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-655(D)(2)(A)(ix)-Criminal sexual conduct with a minor; aggravating and mitigating circumstances; penalties; repeat offenders" summary:@"Provides classification of the degree of sexual crime  and the penalties for such crimes." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-655/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2010-Definitions" summary:@"Provides meanings for the terms 'business', 'charitable organization', 'debt bond', 'force labor', 'involuntary servitude', 'person', 'sex trafficking', 'services', 'trafficking in persons', and 'victim of trafficking in persons' or 'victim'." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2010/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2020-Human Trafficking" summary:@"A person who recruits, entices, solicits, isolates, harbors, or obtains a person with the intent of subjecting them to forced labor or sex trafficking is guilty of trafficking in persons. This section documents penalties for such an offense." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2020/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2040-Restitution for Victims" summary:@"An offender convicted of a violation of this article must be ordered to pay mandatory restitution to the victim as provided in this section. If the victim of trafficking dies as a result of being trafficked, a surviving spouse is eligible for restitution.  If no surviving spouse, the restitution is to be paid to the descendants or estate." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2040/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2050-Human Trafficking Task Force" summary:@"An interagency task force is established to develop and implement a State Plan for the Prevention of Trafficking in Persons. The task force shall meet quarterly to discuss all aspects of trafficking in persons." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2050/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2060-Civil Remedy" summary:@"A person who is a victim of trafficking in persons may bring a civil action in the court of common pleas. The court may award damages upon proof, other appropriate relief, and attorney's fees and costs." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2060/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2070-Victim Assistance" summary:@"Victims of trafficking in persons pursuant to this article are considered victims for purposes of the Victim's Bill of Rights and are entitled to all appropriate forms of compensation available pursuant to the State Crime Victim's Compensation Fund. The identity of the victim and the victim's family must be confidential by not being released to the public." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2070/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2080-Shelter for Victims" summary:@"A person who maliciously or with criminal negligence publishes, disseminates, or otherwise discloses the location of a trafficking victim, a trafficking shelter, a domestic violence shelter, or another place designated as a trafficking shelter  or domestic violence shelter, without the authorization is guilty of a misdemeanor and, must be imprisoned 3 years or less." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2080/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"16-3-2090-Asset Forfeiture" summary:@"Any property stated subject to forfeiture by this section may be seized by the investigation agency having authority upon warrant issued by any court with jurisdiction over the property. In certain cases, the seizure without process is allowed." link:@"http://law.justia.com/codes/south-carolina/2012/title-16/chapter-3/section-16-3-2090/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"17-25-45-Life sentence for person convicted for certain crimes" summary:@"Provides documentation for how sentencing should be handled for certain crimes which call for a life sentence, giving information for types of offenses and the number of offenses." link:@"http://law.justia.com/codes/south-carolina/2012/title-17/chapter-25/section-17-25-45/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"23-3-490-Public inspection of offender registry" summary:@"Information collected for the offender registry is open to public inspection, upon request to the county sheriff.  A sheriff must release information regarding persons required to register under this article to a member of the public if the request is made in writing." link:@"http://law.justia.com/codes/south-carolina/2012/title-23/chapter-3/section-23-3-490/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"23-3-535-Limitation on places of residence of certain sex offenders; exceptions; violations; local government ordinances; school districts required to provide certain information" summary:@"It is unlawful for a sex offender who has been convicted of criminal sexual conduct with a minor in the first or second degree, assault with intent to commit criminal sexual conduct with a minor, kidnapping, or trafficking a minor to reside within one thousand feet of a school, daycare center, children's recreational facility, park, or public playground." link:@"http://law.justia.com/codes/south-carolina/2012/title-23/chapter-3/section-23-3-535/" state:@"South Carolina"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"23-3-540-Electronic monitoring; reporting damage to or removing monitoring device" summary:@"Upon conviction of a person for committing criminal sexual conduct with a minor in the first degree or third degree, upon release from incarceration, the person must pay for electronic monitoring devices to be used by Parole and Pardon Services.  Should the person damage or remove the device, they shall be fined or imprisoned." link:@"http://law.justia.com/codes/south-carolina/2012/title-23/chapter-3/section-23-3-540/" state:@"South Carolina"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //South Dakota
    one = [[HTStateLawData alloc]init:@"22-49-1Human Trafficking Prohibited" summary:@"No person may recruit, harbor, transport, provide, or obtain by any means, another person knowing that force, fraud, or coercion will be used to cause the person to engage in prostitution, force labor, or involuntary servitude, nor shall anyone knowingly benefit from such a venture.  These acts constitute the crime of human trafficking." link:@"http://law.justia.com/codes/south-dakota/2012/title22/chapter49/22-49-1/" state:@"South Dakota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"22-49-2 First degree human trafficking-felony" summary:@"If the acts or the venture set forth in Section22-49-1: Involve committing or attempting to commit kidnapping, involve a victim under the age of sixteen years, involve prostitution or procurement for prostitution, or result in the death of a victim, any person guilty has committed human trafficking in the first degree." link:@"http://law.justia.com/codes/south-dakota/2012/title22/chapter49/22-49-2/" state:@"South Dakota"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"22-49-3 Second degree human trafficking-felony" summary:@"A person is guilty of human trafficking in the second degree if that person recruits, harbors, provides, or obtains another person knowing that force, fraud, or coercion will be used to cause the person to engage in prostitution, forced labor, or involuntary servitude, or benefits from participating in such a venture." link:@"http://law.justia.com/codes/south-dakota/2012/title22/chapter49/22-49-3/" state:@"South Dakota"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //Tennessee
    one = [[HTStateLawData alloc]init:@"39-13-308  Trafficking for forced labor or services" summary:@"A person commits a trafficking offense if they are knowingly involved in the act of trafficking, either providing or obtaining, for involuntary servitude or are benefitting from it. Also, The court may order restitution to the victims. Trafficking for force labor or services is a Class C felony." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-308/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-309 Trafficking for sexual servitude" summary:@"A person commits a trafficking offense if they are knowingly involved in the act of  trafficking, either providing or obtaining, for sexual services. Trafficking for sexual services is a Class B felony." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-309" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-310 Separate offenses 39-13-308 and 39-13-309" summary:@"39-13-308 and 39-13-309 should be counted as separate offenses." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-310/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-311 Violations by corporations" summary:@"A corporation can be prosecuted of 39-13-308 and 39-13-309 if an agent committed the crime while authorized by the company." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-311/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-13-307 Involuntary labor servitude restitution" summary:@"A person commits the offense of involuntary servitude when they force someone into servitude through means such as abuse, threats, physical restraint, and blackmail.  The court may order restitution to the victims as a result of such acts. This is a Class C felony unless the servitude resulted in serious bodily injury, servitude lasted more then a year, or ten or more victims were held at any time." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-13/part-3/39-13-307/" state:@"Tennessee"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"39-11-703 Asset Forfeiture" summary:@"Any property acquired directly or indirectly in the violation is subject to judicial forfeiture." link:@"http://law.justia.com/codes/tennessee/2010/title-39/chapter-11/part-7/39-11-703" state:@"Tennessee"];
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
    one = [[HTStateLawData alloc]init:@"20A.01  Definitions" summary:@"Provides definitions for relevant terms such as child, forced labor or services, sexual conduct, and traffic." link:@"http://law.justia.com/codes/texas/2011/penal-code/title-5/chapter-20a/" state:@"Texas"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"20A.02 Trafficking of persons" summary:@"A person commits an offense if they participate in trafficking with the use of force, fraud, or coercion, if they benefit from the trafficking, if they seek a trafficked individual, etc." link:@"http://law.justia.com/codes/texas/2011/penal-code/title-5/chapter-20a/" state:@"Texas"];
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
    one = [[HTStateLawData alloc]init:@"67-5-22.7-Multi-agency strike force to combat violent and other major felony crimes associated with illegal immigration and human trafficking - Fraudulent documents identification unit" summary:@"The office of the Attorney General is authorized to administer and coordinate the operation of a multi-agency strike force to combat violent and other major felony crimes committed within the state that are associated with illegal immigration and human trafficking and shall establish a Fraudulent Documents Identification Unit." link:@"http://law.justia.com/codes/utah/2012/title-67/article-5/section-22.7/" state:@"Utah"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"76-5-308-Human Trafficking" summary:@"A person commits human trafficking for forced labor or sexual exploitation if the actor recruits, harbors, transports, or obtains a person through force, fraud, or coercion by means of threatening physical harm, tampering government documentation, abuse of the legal process, or unlawful debt." link:@"http://law.justia.com/codes/utah/2012/title-76/article-5/section-308/" state:@"Utah"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"76-5-309-Human trafficking and human smuggling - penalties" summary:@"Describes what degree of a felony different acts of human trafficking and smuggling classify as." link:@"http://law.justia.com/codes/utah/2012/title-76/article-5/section-309/" state:@"Utah"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"76-5-310-Aggravated human trafficking and aggravated human smuggling - penalties" summary:@"An actor commits aggravated human trafficking for forced labor or forced sexual exploitation or aggravated human smuggling if, in the course of committing a human trafficking for forced labor or sexual servitude the offense results in death, serious bodily injury,  or involves rape, object rape, forcible sodomy, sodomy on a child, or aggravated sexual assault/abuse." link:@"http://law.justia.com/codes/utah/2012/title-76/article-5/section-310/" state:@"Utah"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"76-10-1602-Definition of unlawful activity under corrupt enterprise statute" summary:@"Provides meaning for the terms 'enterprise', 'pattern of unlawful activity', 'person', and 'unlawful activity'." link:@"http://law.justia.com/codes/utah/2012/title-76/article-10/section-1602/" state:@"Utah"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //Vermont
    one = [[HTStateLawData alloc]init:@"13-2635-Slave traffic" summary:@"A person shall not induce, entice or procure a person to come into the state or to go from the star for the purpose of prostitution or for an immoral purpose, knowingly aid a person in obtaining transportation to or within the state for such purposes, place a person in the custody of another person for immoral purposes, or compel such a person to live a life of prostitution." link:@"http://law.justia.com/codes/vermont/2011/title13/chapter59/section2635/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-5401-Sex offender registration. Law enforcement notification. Definitions" summary:@"Provides meaning for the terms 'address', 'department', 'local law enforcement agency', 'mental abnormality', 'minor', 'personality disorder', 'predatory', 'release', 'registry', 'sex offender', 'sexually violent offense', 'sexually violent predator', 'employed, carries on a vocation', 'student', 'conviction', and 'risk'." link:@"http://law.justia.com/codes/vermont/2011/title13/chapter167/section5401/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13-5411a-Electronic posting of the sex offender registry" summary:@"The department shall electronically post information on the Internet in accordance with subsection (b) of this section regarding the listed types of sex offenders, upon their release from confinement." link:@"http://law.justia.com/codes/vermont/2011/title13/chapter167/section5411a/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2651-Definitions" summary:@"Provides meaning for the terms 'blackmail', 'coercion', 'commercial sex act', 'debt bondage', 'family member', 'human trafficking', 'labor servitude', 'serious bodily injury', 'sexual act', 'sexual conduct', 'sexually explicit performance', 'venture', and 'victim of human trafficking'." link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2651/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2652-Human Trafficking" summary:@"No person shall knowingly recruit, entice, harbor, transport, provide, or obtain by any means, a person for the purpose of a commercial sex act, compels another through force, fraud, or coercion to engage in a commercial sex act, benefit from such a venture, or does any of the former with the intent of labor servitude." link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2652/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2661-Posting of NHTRC Hotline" summary:@"A notice offering help to victims of human trafficking shall be accessible on the official website of the Vermont department of labor and may be posted in a prominent and accessible location in workplaces. The expected contents of this notice is given in this section." link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2661/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2663-Classification of Victims" summary:@"Within a reasonable time, a victim of human trafficking may be given either United States citizenship and immigration service form, U nonimmigrant status certification, or both if they meet certain criteria." link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2663/" state:@"Vermont"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13 V.S.A. 2662-Civil Remedy" summary:@"A victim of human trafficking may bring an action against the offender in the civil division of the superior court for damages, injunctive relief, punitive damages in the case of a willful violation, and reasonable costs and attorney's fees." link:@"http://law.justia.com/codes/vermont/2011/title13/chapter60/section2662/" state:@"Vermont"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"13 V.S.A. 2658-Vacating Convictions" summary:@"" link:@"" state:@"Vermont"];
    //[self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"H. 153 (2011)-Task Force" summary:@"According to the report of the Vermont Human Trafficking Task Force, the number of estimated enslaved reached over 27 million worldwide, the highest in recorded history, and Vermont is one of the only remaining satiate in the Northeast and one of five in the nation lacking legislation on the issue." link:@"http://www.leg.state.vt.us/docs/2012/Acts/ACT055.PDF" state:@"Vermont"];
    [self insertNewObject:one];
    
    
    
    
    
    
    //Virginia
    one = [[HTStateLawData alloc]init:@"9.1-102-Training for Law Enforcement" summary:@"Provides a list of powers and duties the Department of Criminal Justice Services has been granted for policy-making." link:@"http://law.justia.com/codes/virginia/2011/title9-1/chapter1/9-1-102/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-47-Abduction and kidnapping defined; punishment" summary:@"Any person who, by force, intimidation or deception, and without legal justification or excuse, seizes, ties, transpires, detains or secretes another person with the intent to deprive such other person of their personal liberty or to withhold or conceal them from any person, authority or institution lawfully entitled to his charge, is guilty of 'abduction'." link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter4/18-2-47/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-59-Extortion of money, property or pecuniary benefit" summary:@"Any person who threatens injury to the character, person, or property of another person, accuses them of any offense, or knowingly tampers with government identification  and extorts money, property, or other evidence of debt, if guilty of a Class 5 felony. " link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter4/18-2-59/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-48-Abduction with intent to extort money or for immoral purpose" summary:@"Abduction of any person with the intent to extort money or pecuniary benefit, of any person with intent to define such person, of any child under sixteen for prostitution, of any person for prostitution, or of any minor for child pornography shall be punishable as a Class 2 felony." link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter4/18-2-48/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-356-Receiving money for procuring person" summary:@"Any person who receives any money or other valuable thing for or on account of procuring for or placing in a house of prostitution or elsewhere any person for the purpose of causing such person to engage in unlawful sexual intercourse  or causing anyone to engage in force labor or services, prostitution, or manufacturing child pornography shall be guilty of a Class 4 felony." link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter8/18-2-356/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"18.2-513-Definition of Racketeering Activity" summary:@"Provides meaning for the terms 'criminal street gang', 'enterprise', 'proceeds', and 'racketeering activity'." link:@"http://law.justia.com/codes/virginia/2011/title18-2/chapter13/18-2-513/" state:@"Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"40.1-11.3-Posting of NHTRC Hotline" summary:@"Any employer who operates a business that provides entertainment commonly known as stripteasing or topless entertainment that requires employees who are not clad above or below the waist or operates a truck stop must post a notice about the human trafficking hotline to alert potential victims of assistance is subject to a civil penalty." link:@"http://leg1.state.va.us/cgi-bin/legp504.exe?000+cod+40.1-11.3" state:@"Virginia"];
    [self insertNewObject:one];
   // one = [[HTStateLawData alloc]init:@"258-1-Develop plan for Victim Services" summary:@"" link:@"" state:@"Virginia"];
   // [self insertNewObject:one];
    
    
    
    
    
    //Washington
    one = [[HTStateLawData alloc]init:@"7.68.360-Human trafficking- Coordinated state agency protocols" summary:@"The director of the department of community, trade,and economic development, or the director's designee, shall within existing resources convene and chair a work group to develop written protocols for delivery of services to victims of trafficking of humans." link:@"http://law.justia.com/codes/washington/2011/title7/7-68/7-68-360.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.73.230-Interception of Communications" summary:@"As a bona fide criminal investigation, the chief law enforcement officer of a law enforcement agency or their designee about the rank of first line supervisor may authorize the interception, transmission, or recording of a conversation or communication by officers under circumstances such as consent of at least one party or probable cause of serious crime." link:@"http://law.justia.com/codes/washington/2011/title9/9-73/9-73-230.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.68A.100-Commerical Sexual Abuse of a Minor" summary:@"A person is guilty of commercial sexual abuse of a minor if they pay a fee for a minor to engage in sexual conduct with them, solicits, offers, or requests to engage in sexual conduct with a minor in return for a fee." link:@"http://law.justia.com/codes/washington/2011/title9/9-68a/9-68a-100.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.68A.101-Promoting Sexual Abuse of a Minor" summary:@"A person is guilty of promoting commercial sexual abuse of a minor if they knowingly advance commercial sexual abuse of a minor or profits from a minor engaged in sexual conduct." link:@"http://law.justia.com/codes/washington/2011/title9/9-68a/9-68a-101.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9.96.060-Vacating Convictions" summary:@"Every person convicted of a misdemeanor who had completed all terms of the sentence for the misdemeanor may apply to the sentencing court for a vacation of the applicant's record of conviction of offense. This can be done by withdrawing a plea of guilty and replacing with not guilty or setting aside the verdict of guilty." link:@"http://law.justia.com/codes/washington/2011/title9/9-96/9-96-060.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9A.40.100-Trafficking" summary:@"A person is guilty of trafficking when they recruit, harbor, transport, provide, or obtain by any means another, knowing that force, fraud, or coercion will be used to cause the person to engage in forced labor or involuntary servitude, or benefits from such a venture." link:@"http://law.justia.com/codes/washington/2011/title9a/9a-40/9a-40-100.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9A.82.100-Civil Remedy" summary:@"A person who sustains injury to their person, business, or property by an act of criminal profiteering that is part of a pattern of criminal profiteering activity, or by an offense defined in RCW 9A.40.100, or by a violation of RCW 9A.82.060 or 9A.82.080 may file an action in superior court for the recovery of damages and the costs of the suit." link:@"http://law.justia.com/codes/washington/2011/title9a/9a-82/9a-82-100.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"9A.88.0001-Asset Forfeiture" summary:@"" link:@"http://waengage.com/wp-content/uploads/2012/09/WA-Law-Rating-by-Polaris-Project-2012.pdf" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13.32A.030-Family reconciliation act - Definitions" summary:@"Provides meaning for terms used in relation to the family reconciliation act." link:@"http://law.justia.com/codes/washington/2011/title13/13-32a/13-32a-030.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"13.40.219-Arrest for prostitution or prostitution loitering - Alleged offender - Victim of severe form of trafficking, commercial sex abuse of a minor" summary:@"In any proceeding under this chapter related to an arrest for prostitution or prostitution loitering, there is a presumption that the alleged offender meets the criteria for a certification as a victim of a severe form of trafficking in persons, and that the alleged offender is also a vicim of commercial sex abuse of a minor." link:@"http://law.justia.com/codes/washington/2011/title13/13-40/13-40-219.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.010-Definitions" summary:@"Provides meaning for the terms 'domestic employers of foreign workers' or 'domestic employer', 'foreign worker' or 'worker', and 'international labor recruitment agency'." link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-010.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.020-Disclosure statement" summary:@"Except in certain cases, domestic employers of foreign workers and international labor recruitment agencies must provide a disclosure statement as described in this section for foreign workers who have been referred to or hired by a Washington employer on or after June 10, 2010." link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-020.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.030-Personal jurisdiction" summary:@"For purposes of establishing personal jurisdiction under this chapter, an entity is deemed to be doing business in Washington and is subject to the jurisdiction of the courts of Washington state if the agency or employer contracts for employment services with a Washington resident or is considered to be doing business under any other provision or rule of law." link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-030.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.040-Liability" summary:@"Any entity employing a foreign worker, which fails to complete the requirements of this chapter with respect to any foreign worker is liable to that foreign worker in a civil action by the foreign worker. The court shall award to a foreign worker between two hundred dollars and five hundred dollars, or actual damages, whichever is greater, and also award other equitable relief." link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-040.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"19.320.050-Assistance information" summary:@"The department of labor and industries shall integrate information on assisting victims of human trafficking in posters and brochures, as deemed appropriate by the department. The information shall include the toll-free telephone number of the national human trafficking resource center and the Washington state office of crime victims advocacy." link:@"http://law.justia.com/codes/washington/2011/title19/19-320/19-320-050.html" state:@"Washington"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"47.38.080-Human trafficking informational posters at rest areas" summary:@"The department may work with human trafficking victim advocates in developing informational posters for placement in rest areas and at minimum, must be placed in bathroom stalls. The posters may be in a variety of languages and include toll-free telephone numbers a person may call for assistance." link:@"http://law.justia.com/codes/washington/2011/title47/47-38/47-38-080.html" state:@"Washington"];
    [self insertNewObject:one];
    //one = [[HTStateLawData alloc]init:@"SB 6476-Training for Law Enforcement" summary:@"" link:@"" state:@"Washington"];
    //[self insertNewObject:one];
    
    
    
    
    //West Virginia
    one = [[HTStateLawData alloc]init:@"30-29-3-Duties of the Governor’s committee and the subcommittee." summary:@"Upon recommendation of the subcommittee, the Governor's committee shall provide funding for the establishment and support of law enforcement training academies in the state, establish standards for the operation of training academies, establish minimum law enforcement instructor qualifications, certify qualified instructors, and more." link:@"http://law.justia.com/codes/west-virginia/2012/chapter30/article29/30-29-3/" state:@"West Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"30-29-11-Authorizing Training for Law Enforcement" summary:@"The certification of a law enforcement officer who is separated from his or her employment with a West Virginia law enforcement agency, shall immediately become inactive and remain inactive until the subcommittee authorizes reactivation of the officer's certification pursuant to the procedure set forth in this section." link:@"http://law.justia.com/codes/west-virginia/2011/chapter30/article29/30-29-11/" state:@"West Virginia"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"61-2-17-Human Trafficking; Criminal penalties" summary:@"Provides details on what constitutes the crimes of 'debt bondage', 'forced labor or services', 'human trafficking', 'labor trafficking', 'sex trafficking of minors', and 'sex trafficking of adults', as well as the penalties for such crimes." link:@"http://law.justia.com/codes/west-virginia/2012/chapter61/article2/61-2-17/" state:@"West Virginia"];
    [self insertNewObject:one];
    
    
    
    
    
    //Wisconsin
    one = [[HTStateLawData alloc]init:@"181.1420-Grounds for administrative dissolution" summary:@"The department may bring a proceeding under section 181.1421 to administratively dissolve a corporation if there is nonpayment, failure to file annual report, failure to maintain registered agent or office, failure to notify department of change, failure of domesticating corporation to file required notice, duration expires, or human trafficking." link:@"http://law.justia.com/codes/wisconsin/2011/181/181.1420.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"940.302-Human Trafficking" summary:@"Except as provided by section 948.051, whoever knowingly engages in trafficking is guilty of a Class D felony if they traffick for the purpose of labor or a commercial sex act, cause or threaten bodily or financial harm, restrain an individual, violate the law, tamper with government identification, extortion, fraud or deception., or debt bondage." link:@"http://law.justia.com/codes/wisconsin/2011/940/940.302.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"946.82-Definition of Racketeering Activity" summary:@"Provides meaning for the terms 'commission of a crime', 'enterprise', 'pattern of racketeering activity', 'racketeering activity', and 'pattern of racketeering'." link:@"http://law.justia.com/codes/wisconsin/2011/946/946.82.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"948.051-Trafficking of a Child" summary:@"Whoever knowingly recruits, entices, provides, obtains, or harbors, or knowingly attempts any of the former, to any child for the purpose of commercial sex acts or sexually explicit performance or benefits from such a violation, is guilty of a Class C felony." link:@"http://law.justia.com/codes/wisconsin/2011/948/948.051.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"968.28-Interception of Communications" summary:@"The attorney general together with the district attorney of any county may approve a request of an investigative or law enforcement officer to apply to the chief judge of the judicial administrative district for the county where the interception is to take place for an order authorizing or approving the interception of wire, electronic, or oral communications." link:@"http://law.justia.com/codes/wisconsin/2011/968/968.28.html" state:@"Wisconsin"];
    [self insertNewObject:one];
    
    
    
    
    
    //Wyoming
    one = [[HTStateLawData alloc]init:@"6-2-701.-Definitions" summary:@"Provides meaning for terms used in cases of human trafficking." link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-702.-Human trafficking in first degree" summary:@"A person is guilty of human trafficking in the first degree when the person intentionally or knowingly recruits, transports, transfers, harbors, obtains, or entices an individual for forced labor or servitude, sexual servitude, or sexual servitude of a minor." link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-703.-Human trafficking in second degree" summary:@"A person is guilty of human trafficking in the second degree when they recklessly recruit, transport, transfer, harbor, obtain, or entice an individual for forced labor or servitude, sexual servitude, or sexual servitude of a minor." link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-704.-Forced labor" summary:@"A person is guilty of forced labor or servitude when the person intentionally, knowingly or recklessly uses coercion, deception or fraud to compel an individual to provide forced services." link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-705.-Sexual servitude of an adult" summary:@"A person is guilty of sexual servitude of an adult when the person intentionally, knowingly or recklessly uses coercion, deception or fraud to compel an individual 18 years of age or older to engage in commercial sexual services." link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-706.-Sexual servitude of a minor" summary:@"A person is guilty of sexual servitude of a minor when the person intentionally, knowingly or recklessly offers, obtains, procures or provides an individual less than 18 years of age to engage in commercial sexual services." link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-707.-Patronizing a victim of sexual servitude" summary:@"A person is guilty of patronizing a victim of sexual servitude she the person pays, agree to pay or offers to pay anything of value so that the person or another may engage in sexual activity with an individual when the person knows that the individual is a victim of sexual servitude in violation W.S. 6-2-705 or 6-2-706." link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    one = [[HTStateLawData alloc]init:@"6-2-708.-Victim defenses; vacating convictions" summary:@"A victim of human trafficking is not criminally liable for any commercial sex act or other acts committed as a direct result of being a victim of human trafficking.  At any time after the entry of a conviction, the court in which it was entered may vacate the conviction if the defendant's participation if found to be a result of having been a victim." link:@"http://legisweb.state.wy.us/2013/Bills/HB0133.pdf" state:@"Wyoming"];
    [self insertNewObject:one];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Adds all state laws to the list and makes labels for the states with laws available.
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

// Creates cells representing each state with available laws.
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
