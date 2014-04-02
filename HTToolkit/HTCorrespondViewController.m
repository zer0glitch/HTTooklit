//
//  HTCorrespondViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 3/31/14.
//  Copyright (c) 2014 SRC. All rights reserved.
//

#import "HTCorrespondViewController.h"
#import "DataElement.h"

@interface HTCorrespondViewController ()

@end

@implementation HTCorrespondViewController

@synthesize section, action;            //buttons
@synthesize explanation;                //text view
@synthesize editOption;    //picker views
@synthesize editView;      //picker container
NSMutableArray *arrayPlace, *arrayEdit;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    arrayPlace = [[NSMutableArray alloc] init];
    [arrayPlace addObject:@"Contacts"];
    [arrayPlace addObject:@"Laws"];
    [arrayPlace addObject:@"Training"];
    [arrayPlace addObject:@"Alliance"];
    [arrayPlace addObject:@"Social Services"];
    
    arrayEdit = [[NSMutableArray alloc] init];
    [arrayEdit addObject:@"Comment"];
    [arrayEdit addObject:@"Add New"];
    [arrayEdit addObject:@"Remove"];
    [arrayEdit addObject:@"Update"];
    
    [editView setHidden:TRUE];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
    return 2;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if(component == 0){[section setTitle:[arrayPlace objectAtIndex:row] forState:UIControlStateNormal];}
    else{[action setTitle:[arrayEdit objectAtIndex:row] forState:UIControlStateNormal];}
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
    if(component == 0){return [arrayPlace count];}
    else{return [arrayEdit count];}
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
    if(component == 0){return [arrayPlace objectAtIndex:row];}
    else{return [arrayEdit objectAtIndex:row];}
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)closeWindow:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
    
}

- (IBAction)chooseEdit:(id)sender {
    [editView setHidden:FALSE];
    //[editOption setHidden:FALSE];
}

- (IBAction)done:(id)sender {
    [editView setHidden:TRUE];
    //[editOption setHidden:TRUE];
}

- (IBAction)saveData:(id)sender {
    NSString *emailData = @"";
    NSInteger row1, row2;
    row1 = [editOption selectedRowInComponent:0];
    row2 = [editOption selectedRowInComponent:1];
    
        emailData = [emailData stringByAppendingFormat:@"%@: %@\n", @"Section Name", [arrayPlace objectAtIndex:row1]];
        emailData = [emailData stringByAppendingFormat:@"%@: %@\n\n", @"Change Category", [arrayEdit objectAtIndex:row2]];
        emailData = [emailData stringByAppendingFormat:@"%@: %@\n", @"Explanation", explanation.text];
    
    
    NSLog(@"email String %@", emailData);
    
    NSArray *tos = [NSArray arrayWithObjects:@"httapp.contact@srcle.com", nil];
    
    MFMailComposeViewController* controller = [[MFMailComposeViewController alloc] init];
    controller.mailComposeDelegate = self;
    [controller setSubject:@"Change Request"];
    [controller setToRecipients:tos];
    [controller setMessageBody:emailData isHTML:NO];
    if (controller) [self presentModalViewController:controller animated:YES];
    
}

- (void)mailComposeController:(MFMailComposeViewController*)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError*)error; {
    
    if (result == MFMailComposeResultSent) {
        NSLog(@"It's away!");
    }
    [self dismissViewControllerAnimated:YES completion:^ {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
}

- (BOOL) textView: (UITextView*) textView
shouldChangeTextInRange: (NSRange) range
  replacementText: (NSString*) text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

@end
