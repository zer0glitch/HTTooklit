//
//  HTFedSerInfoViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/12/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTServiceData.h"
#import <iAd/iAd.h>

@interface HTFedSerInfoViewController : UITableViewController <ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;


@property (nonatomic, weak) HTServiceData* entry;

@end
