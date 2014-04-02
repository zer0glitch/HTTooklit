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
//  HTContactUsViewController.h
//  HTToolkit
//
//  Created by james whetsell on 1/17/14.
//  Copyright (c) 2014 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

#import "TextBoxViewController.h"

#define kOFFSET_FOR_KEYBOARD .8;

@interface HTContactUsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate, UITextViewDelegate, UIAlertViewDelegate> {
    NSMutableArray *headers;
    NSMutableArray *fields;
    NSMutableArray *fieldHeaders;
    UITextField *_textField;
    
    NSMutableArray *textFields;
    NSMutableArray *labels;
    
     NSIndexPath *activeCellIndexPath;
    
    int nextTagValue;
    
    TextBoxViewController *viewController;
}
@property (retain, nonatomic) IBOutlet UITableView *tableViewOutlet;

@property (retain, nonatomic) NSMutableArray *headers;
@property (retain, nonatomic) NSMutableArray *fields;
@property (retain, nonatomic) NSMutableArray *fieldHeaders;
@property (retain, nonatomic) UITextField *_textField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (nonatomic) BOOL keyboardShown;
@property (nonatomic) int keyboardOverlap;
@property (retain, nonatomic) NSIndexPath *activeCellIndexPath;

- (IBAction)closeWindow:(id)sender;
- (IBAction)closeDataWindow:(id)sender;

-(UITextField*)setTextField:(CGRect)rect setTag:(int)_tag;
-(void)setViewMovedUp:(BOOL)movedUp;
//- (void) loadAboutMeData;
- (IBAction)saveData:(id)sender;

@end

