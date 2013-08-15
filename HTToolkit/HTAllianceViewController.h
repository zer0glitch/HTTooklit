//
//  HTViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/5/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//
//  Used to contain the information of all alliances, including federal alliances.
//

#import <UIKit/UIKit.h>
#import "HTAllianceData.h"

@interface HTAllianceViewController : UITableViewController

@property (nonatomic, copy) NSMutableArray *USattorneys;
@property (nonatomic, copy) NSMutableArray *attorneyGenerals;
@property (nonatomic, copy) NSMutableArray *districtAttornies;
@property (nonatomic, copy) NSMutableArray *fed;

@end
