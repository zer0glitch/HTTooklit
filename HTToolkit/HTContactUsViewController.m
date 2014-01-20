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
@synthesize headers, fields, _textField, fieldHeaders;

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
    
    
    DataElement *de = [[DataElement alloc] init];
    de.fieldName = @"Name";
    de.value = @"";
    de.fieldType = 1;
    [fields addObject:de];
    NSLog(@"fields lengt %d", [fields count]);
    
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
    
    NSLog(@"fields lengt %d", [fields count]);
    
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
    
    
    // tableView = [[UITableView init] alloc];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - View lifecycle


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [fields count];
}

- (NSString *)tableView:(UITableView *)aTableView titleForHeaderInSection:(NSInteger)section {
    //NSLog(@"Header %@", [headers objectAtIndex:section]);
    //return [headers objectAtIndex:section];
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
        
        NSLog(@"The cell is nil");

	} else {
        NSLog(@"The cell is not nil");
    }
    
    NSLog(@"size... height %f width %f", [cell.contentView bounds].size.height, [cell.contentView bounds].size.width);
    
    for (UIView *subview in cell.contentView.subviews) {
        [subview removeFromSuperview];
    }
    
    [cell.contentView addSubview:[labels objectAtIndex:indexPath.row]];
    [cell.contentView addSubview:[textFields objectAtIndex:indexPath.row]];
    
    if (indexPath.row == 0) {
        [[textFields objectAtIndex:indexPath.row] becomeFirstResponder];
    }

    
//    CGRect bound2 = [cell.contentView bounds];
//    bound2.origin.y = bound2.origin.y - 5;
//    CGRect rect2 = CGRectInset(bound2, 10.0, 10.0);
//    rect2.size.width=220;
//    rect2.size.height=20;
//    
//    UILabel *label = [[UILabel alloc] init] ;
//    label.frame = rect2;
//    label.text = data.fieldName;
//     [cell.contentView addSubview:label];
//    
//    if (data.fieldType == 1) {
//        CGRect bounds = [cell.contentView bounds];
//        bounds.origin.y = bounds.origin.y + 20;
//        CGRect rect = CGRectInset(bounds, 10.0, 10.0);
//        NSString *tag = @"13234"; //[NSString stringWithFormat:@"%d%d%d",DCallSection+1,indexPath.row+1,3];
//        int _tag = indexPath.row;
//        [tag intValue];
//        UITextField *txt = [self setTextField:rect setTag:_tag];
//       // [txt setBorderStyle:UITextBorderStyleRoundedRect];
//        NSString *placeholder = [NSString stringWithFormat:@"Tap here to enter %@", data.fieldName];
//        [txt setPlaceholder:placeholder];
//        // txt.text = @"other"; //[mutdict objectForKey:@"tollfree"];
//        if (data.fieldName == data.value) txt.placeholder= data.fieldName;
//        else txt.text = data.value; // [fields objectAtIndex:indexPath.row + indexPath.section];
//        txt.returnKeyType = UIReturnKeyDone;
//        [cell.contentView addSubview:txt];
//        
//    } else {
//        CGRect bound3 = [cell.contentView bounds];
//        bound3.origin.y = bound3.origin.y + 20;
//        CGRect rect3 = CGRectInset(bound3, 10.0, 10.0);
//        rect3.size.width=220;
//        rect3.size.height=20;
//        
//        
//        UILabel *label2 = [[UILabel alloc] init];
//        label2.frame = rect3;
//        label2.text = data.value;
//        [cell.contentView addSubview:label2];
//        
//    }
//    
    return cell;
}

-(UITextField*)setTextField:(CGRect)rect setTag:(int)_tag{
	UITextField *txtcell = [[UITextField alloc] init];
	rect.size.width=220;
    rect.size.height=20;
	txtcell.frame = rect;
	txtcell.tag = _tag;
    NSLog(@"tag == %d", _tag);
    //  txtcell.enabled = FALSE;
    // [txtcell setEnabled:YES];
	//[txtcell setReturnKeyType:UIReturnKeyDone];
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
       // [textView resignFirstResponder];
        
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
    
    NSLog(@"select: %d", indexPath.row);
    
    DataElement *de = [fields objectAtIndex: indexPath.row];
    
    if (de == Nil) NSLog(@"it's nil");
    
    @try {
        NSLog(@"select: %d", de.groupKey);
    } @catch (NSException *e) {
        NSLog(@"select: %@", e);
    }
    
    
    if (!viewController) viewController = [[TextBoxViewController alloc] initWithNibName:@"TextBoxViewController" bundle:Nil];
    
    
    if (viewController) [self presentModalViewController:viewController animated:YES];
    viewController.fieldTitle.text = de.fieldName;
    viewController.fieldValue.text = de.value;
    viewController.row = indexPath.row;
    
    //  [de release];
    //
    //    NSLog(@"row %d", indexPath.row);
}

-(void)textFieldDidBeginEditing:(UITextField *)sender {
    // NSLog(@"text field editing begins here");
    
    _textField = sender;
    
    // if ([sender isEqual:_textField]) {
    NSLog(@"text field editing should begins here %d ", sender.tag);
    //move the main view, so that the keyboard does not hide it.
    NSLog(@"orgin y %f", self.view.frame.origin.y);
    if  (self.view.frame.origin.y >= 0) {
        currentRow = sender.tag;
        [self setViewMovedUp:YES];
    }
    // }
}


- (void)textFieldDidEndEditing:(UITextField *)textField{
    DataElement *de = [fields objectAtIndex:textField.tag];
    
    de.value = textField.text;
    NSLog(@"update the value text feild %d value %@", textField.tag, textField.text);
    
    
}

-(BOOL)textFieldShouldBeginEditing: (UITextField *)textField

{
    UIToolbar * keyboardToolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    
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
    UIBarButtonItem *clicked = (UIBarButtonItem *) sender;
    
    NSLog(@"button label: %@", clicked.title);
    
    NSLog(@"xxxxx compare xxxxxx %d",[@"Next" compare:clicked.title] );
    
    if ([@"Next" compare:clicked.title] == 0) {
        nextTagValue = _textField.tag + 1;
        
    } else if ([@"Previous" compare:clicked.title] == 0) {
        nextTagValue = _textField.tag - 1;
    } else {
        nextTagValue = 100;
    }
     NSLog(@" tag %d",_textField.tag);//Here you know which button has pressed

//    [self textFieldShouldReturn:_textField];
   
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    //  if ([textField.t isEqualToString:@"\n"]) {
    // Be sure to test for equality using the "isEqualToString" message
   // [textField resignFirstResponder];
   // [self setViewMovedUp:NO];

    NSInteger nextTag = nextTagValue;  //textField.tag + 1;
    
    NSLog(@"nxt tag value %d", nextTag);
    // Try to find next responder
   // UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    
   // NSLog(@"Next Tag %@", nextResponder);
    if (nextTag < [textFields count]) {
       UIResponder *nextResponder = [textFields objectAtIndex:nextTag];
       // Found next responder, so set it.
       [nextResponder becomeFirstResponder];
    } else {
            // Not found, so remove keyboard.
        NSLog(@"CLOSE THIS THING");
    //  [textField resignFirstResponder];
      [self setViewMovedUp:NO];
    }
    
    nextTagValue = 100;
    return NO; // We do not want UITextField to insert line-breaks.
}

//method to move the view up/down whenever the keyboard is shown/dismissed
-(void)setViewMovedUp:(BOOL)movedUp {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.5]; // if you want to slide up the view
    
//    float moveAmount = currentRow * 80.0;
//    
//    //if (moveAmount > 250)
//        moveAmount = 250;
//    
//    CGRect rect = self.view.frame;
//    if (movedUp) {
//        // 1. move the view's origin up so that the text field that will be hidden come above the keyboard
//        // 2. increase the size of the view so that the area behind the keyboard is covered up.
//        rect.origin.y -= moveAmount;
//        rect.size.height += moveAmount;
//        
//    } else {
//        // revert back to the normal state.
//        rect.origin.y += moveAmount;
//        rect.size.height -=  moveAmount;
//    }
//    
//   // _tableViewOutlet.frame = rect;
//   self.view.frame = rect;
    
    [UIView commitAnimations];
}

- (void)keyboardWillShow:(NSNotification *)notif {
    //keyboard will be shown now. depending for which textfield is active, move up or move down the view appropriately
    
    if ([_textField isFirstResponder] && self.view.frame.origin.y >= 0) {
        [self setViewMovedUp:YES];
    } else if (![_textField isFirstResponder] && self.view.frame.origin.y < 0) {
        //  [self setViewMovedUp:NO];
    }
}


- (void)viewWillAppear:(BOOL)animated {
    // register for keyboard notifications
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification object:self.view.window];
    
    if (viewController) {
        NSLog(@"the view controller is real %d", viewController.row);
        DataElement *de = [fields objectAtIndex:viewController.row];
        
        de.value = (NSString *)viewController.fieldValue.text;
        
        [self.tableViewOutlet reloadData];
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    // unregister for keyboard notifications while not visible.
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
}

- (IBAction)closeDataWindow:(id)sender {
    NSLog(@"HERE HER EHERE");
    [viewController dismissModalViewControllerAnimated:YES];
    
}

- (IBAction)closeWindow:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
    
}

- (IBAction)saveData:(id)sender {
    
    for (DataElement *data in fields) {
        NSLog(@"Data Name %@ = %@", data.fieldName, data.value);
    }
    
//    if (_textField.text != nil) [self textFieldDidEndEditing:_textField];
//    
//    SQLManager *sqlManager = [[SQLManager alloc] init];
//    NSLog(@"Calling Save Data");
//    [sqlManager saveData:fields];
//    NSLog(@"After Save Data Called");
//    
//    [sqlManager release];
//    // [sqlManager dealloc];
//    [self dismissModalViewControllerAnimated:YES];
}



@end

