//
//  HTLoginViewController.m
//  HTToolkit
//
//  Created by Everett Williams on 8/13/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTLoginViewController.h"

@interface HTLoginViewController ()

@end

@implementation HTLoginViewController
@synthesize text;

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
    [text setDelegate:self];
    
    

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"ToolkitPasscode.plist"];
    if([[NSFileManager defaultManager] fileExistsAtPath:path]){
    NSDictionary *properties = [[NSDictionary alloc]init];
    properties = [NSDictionary dictionaryWithContentsOfFile:path];
    NSString *code = [properties objectForKey:@"passcode"];
    text.text = code;
    [self authenticate: self];
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
    [text resignFirstResponder];
}

- (IBAction)authenticate:(id)sender {
    BOOL correct = FALSE;
    if([text.text isEqual: @"ice"]){
        correct = TRUE;
    }
    else{
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Incorrect Passcode" message:@"This passcode is case sensitive." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [message show];
    }
    if(correct)  // authenticated---> BOOL Value assign True only if Login Success
    {
        NSDictionary *rootObj;
        NSString *pass = text.text;
        rootObj = [NSDictionary dictionaryWithObjects: [NSArray arrayWithObjects: pass, nil] forKeys:[NSArray arrayWithObjects:@"passcode", nil]];
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        NSString *path = [documentsDirectory stringByAppendingPathComponent:@"ToolkitPasscode.plist"];
        [rootObj writeToFile:path atomically:YES];
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        UITabBarController *obj=[storyboard instantiateViewControllerWithIdentifier:@"tab"];
        self.navigationController.navigationBarHidden=YES;
        [self.navigationController pushViewController:obj animated:YES];
    }
}
@end
