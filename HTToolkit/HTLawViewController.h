//
//  HTLawViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/6/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTFedLawData.h"
#import <iAd/iAd.h>

@interface HTLawViewController : UITableViewController <ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;

@property (retain, nonatomic) HTFedLawData* data;

@end
