//
//  HTLawViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/6/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTFedLawData.h"

@interface HTLawViewController : UITableViewController

@property (weak, nonatomic) HTFedLawData* data;
@property (weak, nonatomic) IBOutlet UITextView *summary;
@property (weak, nonatomic) IBOutlet UITextView *link;

@end
