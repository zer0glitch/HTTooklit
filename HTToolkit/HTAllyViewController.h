//
//  HTAllyViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/5/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTAllianceData.h"

@interface HTAllyViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextView *summary;
@property (weak, nonatomic) IBOutlet UITextView *number;
@property (nonatomic, weak) HTAllianceData * data;

@end
