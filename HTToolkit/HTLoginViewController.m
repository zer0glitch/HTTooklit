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
//  HTLoginViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 8/13/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTLoginViewController.h"
#import "HTMasterViewController.h"

@interface HTLoginViewController ()

@end

@implementation HTLoginViewController
@synthesize email, pass;
NSString *auth;

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
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    [email setDelegate:self];
    [pass setDelegate:self];
    
    

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"ToolkitPasscode.plist"];
    if([[NSFileManager defaultManager] fileExistsAtPath:path]){
    NSDictionary *properties = [[NSDictionary alloc]init];
    properties = [NSDictionary dictionaryWithContentsOfFile:path];
    NSString *code = [properties objectForKey:@"passcode"];
    NSString *mail = [properties objectForKey:@"email"];
    auth = [properties objectForKey:@"authorization"];
    pass.text = code;
    email.text = mail;
    }
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    [theTextField resignFirstResponder];
    return YES;
}
-(void)dismissKeyboard {
    [pass resignFirstResponder];
    [email resignFirstResponder];
}

- (IBAction)authenticate:(id)sender {
        NSDictionary *rootObj;
        NSString * code = pass.text;
        NSString * mail = email.text;
        rootObj = [NSDictionary dictionaryWithObjects: [NSArray arrayWithObjects: code, mail, auth, nil] forKeys:[NSArray arrayWithObjects:@"passcode",@"email", @"authorization", nil]];
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSString *path = [documentsDirectory stringByAppendingPathComponent:@"ToolkitPasscode.plist"];
        [rootObj writeToFile:path atomically:YES];
        HTMasterViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HTMasterViewController"];
        [self.navigationController pushViewController:detailViewController animated:YES];
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
