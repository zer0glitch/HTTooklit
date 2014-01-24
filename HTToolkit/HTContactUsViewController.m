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
//  HTContactUsViewController.m
//  HTToolkit
//
//  Created by james whetsell on 1/17/14.
//  Copyright (c) 2014 SRC. All rights reserved.
//

#import "HTContactUsViewController.h"
#import "PITableViewCell.h"
#import "DataElement.h"
#import "TextBoxViewController.h"

@implementation HTContactUsViewController
//@synthesize saveButton;
//@synthesize tableViewOutlet;
@synthesize headers, fields, _textField, fieldHeaders, keyboardShown, keyboardOverlap, activeCellIndexPath;

int currentRow = 0;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    /*
     @property (nonatomic, retain) NSString *fieldName;
     @property (nonatomic, retain) NSString *value;
     @property (nonatomic) NSInteger fieldType;
     */
    
    // Initalize Arrays
    fields = [[NSMutableArray alloc] init];
    textFields = [[NSMutableArray alloc] init];
    labels = [[NSMutableArray alloc] init];
    headers = [[NSMutableArray alloc] init];
    
    [headers addObject:@"General Info"];
    [headers addObject:@"Address"];
    
    
    DataElement *de = [[DataElement alloc] init];
    de.fieldName = @"Name";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    // NSLog(@"fields lengt %d", [fields count]);
    
    de = [[DataElement alloc] init];
    de.fieldName = @"Department";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    
    de = [[DataElement alloc] init];
    de.fieldName = @"Jurisdiction";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    
    
    de = [[DataElement alloc] init];
    de.fieldName = @"Email";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
  
    de = [[DataElement alloc] init];
    de.fieldName = @"Phone";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    
    de = [[DataElement alloc] init];
    de.fieldName = @"Address";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    
    de = [[DataElement alloc] init];
    de.fieldName = @"City";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    
    de = [[DataElement alloc] init];
    de.fieldName = @"State";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    
    de = [[DataElement alloc] init];
    de.fieldName = @"Zip";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    
    // NSLog(@"fields lengt %d", [fields count]);
    
    // Initalize the fields and labels
    
    for (int i=0;i<[fields count];i++) {
        DataElement *data = [fields objectAtIndex:i];
        
        
        CGRect bound2 = CGRectMake(0,0,320.0, 44.0);
        bound2.origin.y = bound2.origin.y - 5;
        CGRect rect2 = CGRectInset(bound2, 10.0, 10.0);
        rect2.size.width=220;
        rect2.size.height=20;
        
        UILabel *label = [[UILabel alloc] init] ;
        label.frame = rect2;
        label.text = data.fieldName;
        
        [labels addObject:label];
        
       // CGRect rect =
        CGRect bounds = CGRectMake(0,0,320.0, 44.0);
        bounds.origin.y = bounds.origin.y + 20;
        CGRect rect = CGRectInset(bounds, 10.0, 10.0);
        NSString *tag = @"13234"; //[NSString stringWithFormat:@"%d%d%d",DCallSection+1,indexPath.row+1,3];
        int _tag = i;
        [tag intValue];
        UITextField *txt = [self setTextField:rect setTag:_tag];
        //       // [txt setBorderStyle:UITextBorderStyleRoundedRect];
        NSString *placeholder = [NSString stringWithFormat:@"Tap here to enter %@", data.fieldName];
        [txt setPlaceholder:placeholder];
        // txt.text = @"other"; //[mutdict objectForKey:@"tollfree"];
        if (data.fieldName == data.value) txt.placeholder= data.fieldName;
        else txt.text = data.value; // [fields objectAtIndex:indexPath.row + indexPath.section];
        txt.returnKeyType = UIReturnKeyDone;
        
        [textFields addObject:txt];
        
    }
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
//    

    
    // tableView = [[UITableView init] alloc];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - View lifecycle


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    //return NO;
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   // if (section == 0)
       // return 5;
    return [fields count];
}

- (NSString *)tableView:(UITableView *)aTableView titleForHeaderInSection:(NSInteger)section {
    //// NSLog(@"Header %@", [headers objectAtIndex:section]);
   // return [headers objectAtIndex:section];
    return @"";
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    DataElement *de = [fields objectAtIndex: indexPath.row];
    
    if (de.fieldType == 1) return 60 ;
    else return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"MyIdentifier";
    PITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
   //  DataElement *data = [fields objectAtIndex:indexPath.row];
    
	if (cell == nil) {
        cell = [[PITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
        
 //       DataElement *de = [fields objectAtIndex: indexPath.row];
        
//        if (de.fieldType == 1) [cell setSelectionStyle:UITableViewCellAccessoryNone];
//        else [cell setSelectionStyle:UITableViewCellStateDefaultMask];
//
        
        // NSLog(@"The cell is nil");

	} else {
        // NSLog(@"The cell is not nil");
    }
    
    // NSLog(@"size... height %f width %f", [cell.contentView bounds].size.height, [cell.contentView bounds].size.width);
    
    for (UIView *subview in cell.contentView.subviews) {
        [subview removeFromSuperview];
    }
    
    [cell.contentView addSubview:[labels objectAtIndex:indexPath.row]];
    [cell.contentView addSubview:[textFields objectAtIndex:indexPath.row]];
    
    if (indexPath.row == 0) {
       // [[textFields objectAtIndex:indexPath.row] becomeFirstResponder];
    }
  
    return cell;
}

-(UITextField*)setTextField:(CGRect)rect setTag:(int)_tag{
	UITextField *txtcell = [[UITextField alloc] init];
	rect.size.width=220;
    rect.size.height=20;
	txtcell.frame = rect;
	txtcell.tag = _tag;
    // NSLog(@"tag == %d", _tag);
    //  txtcell.enabled = FALSE;
    // [txtcell setEnabled:YES];
	[txtcell setReturnKeyType:UIReturnKeyDone];
	[txtcell setDelegate:self];
	[txtcell setBackgroundColor:[UIColor whiteColor]];
	[txtcell setOpaque:YES];
	return txtcell;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
     NSLog(@"text: %@", text);
    // Any new character added is passed in as the "text" parameter
    if ([text isEqualToString:@"\n"]) {
        // Be sure to test for equality using the "isEqualToString" message
        [textView resignFirstResponder];
        
        // Return FALSE so that the final '\n' character doesn't get added
        return FALSE;
    }
    // For any other character return TRUE so that the text gets added to the view
    return TRUE;
}

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
    
    DataElement *de = [fields objectAtIndex: indexPath.row];
    
    if (de.fieldType == 2) return UITableViewCellAccessoryDetailDisclosureButton ;
    else return UITableViewCellAccessoryNone;
    //return UITableViewCellAccessoryDisclosureIndicator;
}

- (void) tableView: (UITableView *) tableView accessoryButtonTappedForRowWithIndexPath: (NSIndexPath *) indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    // NSLog(@"select: %d", indexPath.row);
    
    DataElement *de = [fields objectAtIndex: indexPath.row];
    
    if (de == Nil) // NSLog(@"it's nil");
    
    @try {
        // NSLog(@"select: %d", de.groupKey);
    } @catch (NSException *e) {
        // NSLog(@"select: %@", e);
    }
    
    
    if (!viewController) viewController = [[TextBoxViewController alloc] initWithNibName:@"TextBoxViewController" bundle:Nil];
    
    
    if (viewController) [self presentModalViewController:viewController animated:YES];
    viewController.fieldTitle.text = de.fieldName;
    viewController.fieldValue.text = de.value;
    viewController.row = indexPath.row;
    
    //  [de release];
    //
    //    // NSLog(@"row %d", indexPath.row);
}

-(void)textFieldDidBeginEditing:(UITextField *)sender {
    // // NSLog(@"text field editing begins here");
    
    _textField = sender;
    
    // if ([sender isEqual:_textField]) {
    // NSLog(@"text field editing should begins here %d ", sender.tag);
    //move the main view, so that the keyboard does not hide it.
    // NSLog(@"orgin y %f", self.view.frame.origin.y);
    if  (self.view.frame.origin.y >= 0) {
        currentRow = sender.tag;
       // [self setViewMovedUp:YES];
    }
    // }
}


- (void)textFieldDidEndEditing:(UITextField *)textField{
    DataElement *de = [fields objectAtIndex:textField.tag];
    
    de.value = textField.text;
    // NSLog(@"update the value text feild %d value %@", textField.tag, textField.text);
    
    
}

-(BOOL)textFieldShouldBeginEditing: (UITextField *)textField {
    UIToolbar * keyboardToolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    
    keyboardToolBar.barStyle = UIBarStyleDefault;
    [keyboardToolBar setItems: [NSArray arrayWithObjects:
                                [[UIBarButtonItem alloc]initWithTitle:@"Previous" style:UIBarButtonItemStyleBordered target:self action:@selector(buttonPressed:)],
                                
                                [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleBordered target:self action:@selector(buttonPressed:)],
                                [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                                [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(buttonPressed:)],
                                nil]];
    textField.inputAccessoryView = keyboardToolBar;
    
    return TRUE;
    
}


-(void) buttonPressed : (id) sender{
    
  //  if (1==1) return;
    UIBarButtonItem *clicked = (UIBarButtonItem *) sender;
    
    // NSLog(@"button label: %@", clicked.title);
    
    // NSLog(@"xxxxx compare xxxxxx %d",[@"Next" compare:clicked.title] );
    
    if ([@"Next" compare:clicked.title] == 0) {
        nextTagValue = _textField.tag + 1;
        
    } else if ([@"Previous" compare:clicked.title] == 0) {
        nextTagValue = _textField.tag - 1;
    } else {
        nextTagValue = 100;
    }
     // NSLog(@" tag %d",_textField.tag);//Here you know which button has pressed
    
    NSInteger nextTag = nextTagValue;  //textField.tag + 1;
    
    // NSLog(@"nxt tag value %d", nextTag);
    // Try to find next responder
    // UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    
    // // NSLog(@"Next Tag %@", nextResponder);
    if (nextTag < [textFields count]) {
       NSIndexPath *scrollIndexPath = [NSIndexPath indexPathForRow:(nextTagValue) inSection:0];
        [[self tableViewOutlet] scrollToRowAtIndexPath:scrollIndexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
        UIResponder *nextResponder = [textFields objectAtIndex:nextTag];
        // Found next responder, so set it.
        [nextResponder becomeFirstResponder];
    } else {
        // Not found, so remove keyboard.
         NSLog(@"CLOSE THIS THING");
        [_textField resignFirstResponder];
       // [self setViewMovedUp:NO];
    }
    
   
    
    nextTagValue = 100;
    

//    [self textFieldShouldReturn:_textField];
   
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    //  if ([textField.t isEqualToString:@"\n"]) {
    // Be sure to test for equality using the "isEqualToString" message
   // [textField resignFirstResponder];
   // [self setViewMovedUp:NO];

    NSInteger nextTag = nextTagValue;  //textField.tag + 1;
    
    // NSLog(@"nxt tag value %d", nextTag);
    // Try to find next responder
   // UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    
   // // NSLog(@"Next Tag %@", nextResponder);
    if (nextTag < [textFields count]) {
       UIResponder *nextResponder = [textFields objectAtIndex:nextTag];
       // Found next responder, so set it.
       [nextResponder becomeFirstResponder];
    } else {
            // Not found, so remove keyboard.
        NSLog(@"CLOSE THIS THING");
      [textField resignFirstResponder];
     // [self setViewMovedUp:NO];
    }
    
    nextTagValue = 100;
    return NO; // We do not want UITextField to insert line-breaks.
}

//method to move the view up/down whenever the keyboard is shown/dismissed
-(void)setViewMovedUp:(BOOL)movedUp {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5]; // if you want to slide up the view
    
    [UIView commitAnimations];
}


- (void)keyboardWillShow:(NSNotification *)aNotification {
     NSLog(@"keyboardWillShow");
    
    if(keyboardShown)
        return;
    
    keyboardShown = YES;
    
    // Get the keyboard size
    UIScrollView *tableView;
    if([self.tableViewOutlet.superview isKindOfClass:[UIScrollView class]])
        tableView = (UIScrollView *)self.tableViewOutlet.superview;
    else tableView = self.tableViewOutlet;
    
    NSDictionary *userInfo = [aNotification userInfo];
    NSValue *aValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [tableView.superview convertRect:[aValue CGRectValue] fromView:nil];
    
    // Get the keyboard's animation details
    NSTimeInterval animationDuration;
    [[userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] getValue:&animationDuration];
    UIViewAnimationCurve animationCurve;
    [[userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey] getValue:&animationCurve];
    
    // Determine how much overlap exists between tableView and the keyboard
    CGRect tableFrame = tableView.frame;
    CGFloat tableLowerYCoord = tableFrame.origin.y + tableFrame.size.height;
   
    keyboardOverlap = tableLowerYCoord - keyboardRect.origin.y;
    if(self.inputAccessoryView && keyboardOverlap>0)
    {
        CGFloat accessoryHeight = self.inputAccessoryView.frame.size.height;
        keyboardOverlap -= accessoryHeight;
        
        tableView.contentInset = UIEdgeInsetsMake(0, 0, accessoryHeight, 0);
        tableView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 0, accessoryHeight, 0);
    }
    
    if(keyboardOverlap < 0)
        keyboardOverlap = 0;
    
    if(keyboardOverlap != 0)
    {
        tableFrame.size.height -= keyboardOverlap;
        
        NSTimeInterval delay = 0;
        if(keyboardRect.size.height)
        {
            delay = (1 - keyboardOverlap/keyboardRect.size.height)*animationDuration;
            animationDuration = animationDuration * keyboardOverlap/keyboardRect.size.height;
        }
        
        [UIView animateWithDuration:animationDuration delay:delay
                            options:UIViewAnimationOptionBeginFromCurrentState
                         animations:^{ tableView.frame = tableFrame; }
                         completion:^(BOOL finished){ [self tableAnimationEnded:nil finished:nil contextInfo:nil]; }];
    }
    
   // [self.tableViewOutlet reloadData];
}

- (void)keyboardWillHide:(NSNotification *)aNotification {
    
     NSLog(@"keyboardWillHide");
    if (!keyboardShown) return;
    
    keyboardShown = NO;
    
    UIScrollView *tableView;
    if([self.tableViewOutlet.superview isKindOfClass:[UIScrollView class]])
        tableView = (UIScrollView *)self.tableViewOutlet.superview;
    else
        tableView = self.tableViewOutlet;
    if(self.inputAccessoryView) {
        tableView.contentInset = UIEdgeInsetsZero;
        tableView.scrollIndicatorInsets = UIEdgeInsetsZero;
    }
    
    if (keyboardOverlap == 0) return;
    
    // Get the size & animation details of the keyboard
    NSDictionary *userInfo = [aNotification userInfo];
    NSValue *aValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [tableView.superview convertRect:[aValue CGRectValue] fromView:nil];
    
    NSTimeInterval animationDuration;
    [[userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] getValue:&animationDuration];
    UIViewAnimationCurve animationCurve;
    [[userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey] getValue:&animationCurve];
    
    CGRect tableFrame = tableView.frame;
    tableFrame.size.height += keyboardOverlap;
    
    if(keyboardRect.size.height)
        animationDuration = animationDuration * keyboardOverlap/keyboardRect.size.height;
    
    [UIView animateWithDuration:animationDuration delay:0
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{ tableView.frame = tableFrame; }
                     completion:nil];
}

- (void) tableAnimationEnded:(NSString*)animationID finished:(NSNumber *)finished contextInfo:(void *)context {
    // Scroll to the active cell
    
     activeCellIndexPath = [NSIndexPath indexPathForRow:(currentRow) inSection:0];

    if (self.activeCellIndexPath) {
        [self.tableViewOutlet scrollToRowAtIndexPath:self.activeCellIndexPath atScrollPosition:UITableViewScrollPositionNone animated:YES];
        [self.tableViewOutlet selectRowAtIndexPath:self.activeCellIndexPath animated:NO scrollPosition:UITableViewScrollPositionNone];
    }
}

- (void) didDismissSecondViewController {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    // register for keyboard notifications
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    

    
    if (viewController) {
        // NSLog(@"the view controller is real %d", viewController.row);
        DataElement *de = [fields objectAtIndex:viewController.row];
        
        de.value = (NSString *)viewController.fieldValue.text;
        
        //[self.tableViewOutlet reloadData];
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    // unregister for keyboard notifications while not visible.
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

- (IBAction)closeDataWindow:(id)sender {
    // NSLog(@"HERE HER EHERE");
    [viewController dismissModalViewControllerAnimated:YES];
    
}

- (IBAction)closeWindow:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
    
}

- (IBAction)saveData:(id)sender {
    
    NSString *emailData = @"";
    
    for (DataElement *data in fields) {
      //   NSLog(@"Data Name %@ = %@", data.fieldName, data.value);
        
        emailData = [emailData stringByAppendingFormat:@"%@: %@\n", data.fieldName, data.value];
        
    }
    
    NSLog(@"email String %@", emailData);
    
    NSArray *tos = [NSArray arrayWithObjects:@"dharold@scires.com", @"jdwfoo@gmail.com", nil];
    
    MFMailComposeViewController* controller = [[MFMailComposeViewController alloc] init];
    controller.mailComposeDelegate = self;
    [controller setSubject:@"HTT Agency Request"];
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
    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(didDismissSecondViewController)
//                                                 name:@"SecondViewControllerDismissed"
//                                               object:nil];
}

@end

