//
//  HTLoginViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 8/13/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTLoginViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *text;
- (IBAction)authenticate:(id)sender;

@end
