//
//  HTContactsViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/4/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTFullData.h"
#import <iAd/iAd.h>

@interface HTContactsViewController : UITableViewController  <ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;

@property (nonatomic, weak) HTFullData* data;

@end
