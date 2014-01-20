//
//  HTContactUsViewController.h
//  HTToolkit
//
//  Created by james whetsell on 1/17/14.
//  Copyright (c) 2014 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextBoxViewController.h"

#define kOFFSET_FOR_KEYBOARD .8;

@interface HTContactUsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate, UITextViewDelegate> {
    NSMutableArray *headers;
    NSMutableArray *fields;
    NSMutableArray *fieldHeaders;
    UITextField *_textField;
    
    NSMutableArray *textFields;
    NSMutableArray *labels;
    
    int nextTagValue;
    
    TextBoxViewController *viewController;
}
@property (retain, nonatomic) IBOutlet UITableView *tableViewOutlet;

@property (retain, nonatomic) NSMutableArray *headers;
@property (retain, nonatomic) NSMutableArray *fields;
@property (retain, nonatomic) NSMutableArray *fieldHeaders;
@property (retain, nonatomic) UITextField *_textField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *saveButton;

- (IBAction)closeWindow:(id)sender;
- (IBAction)closeDataWindow:(id)sender;

-(UITextField*)setTextField:(CGRect)rect setTag:(int)_tag;
-(void)setViewMovedUp:(BOOL)movedUp;
//- (void) loadAboutMeData;
- (IBAction)saveData:(id)sender;

@end

