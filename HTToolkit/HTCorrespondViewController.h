//
//  HTCorrespondViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 3/31/14.
//  Copyright (c) 2014 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface HTCorrespondViewController : UIViewController <UITextViewDelegate, UITextFieldDelegate, UIPickerViewDelegate>

- (IBAction)closeWindow:(id)sender;
- (IBAction)saveData:(id)sender;
- (IBAction)chooseEdit:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *section;
@property (retain, nonatomic) IBOutlet UIButton *action;
@property (retain, nonatomic) IBOutlet UITextView *explanation;
@property (retain, nonatomic) IBOutlet UIPickerView *editOption;
@property (strong, nonatomic) IBOutlet UIView *editView;

@end
