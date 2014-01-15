//
//  HTUSattViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/26/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTAllianceData.h"
#import <iAd/iAd.h>

@interface HTUSattViewController : UITableViewController <ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;

@property (retain, nonatomic) HTAllianceData* entry;

@end
