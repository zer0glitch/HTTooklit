//
//  HTStateLawViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/3/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface HTStateLawViewController : UITableViewController <ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;

@property (nonatomic, copy) NSMutableArray *Laws;

@end
