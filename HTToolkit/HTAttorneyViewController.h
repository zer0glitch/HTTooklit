//
//  HTAttorneyViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/28/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTAllianceData.h"
#import <iAd/iAd.h>

@interface HTAttorneyViewController : UITableViewController
 <ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;

@property (weak, nonatomic) HTAllianceData* entry;

@end
