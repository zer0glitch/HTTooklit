//
//  HTMasterViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 5/28/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <iAd/iAd.h>

@interface HTMasterViewController : UITableViewController <ADBannerViewDelegate, NSXMLParserDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}

@property (strong, nonatomic) IBOutlet UIBarButtonItem *refreshButton;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,assign) BOOL bannerIsVisible;

@property (nonatomic, copy) NSMutableArray *masterList;
@property (nonatomic, copy) NSMutableArray *labels;

- (void)loadData;

@end