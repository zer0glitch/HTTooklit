//
//  HTFedLawViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 5/31/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//
//  A list of federal human trafficking laws.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface HTFedLawViewController : UITableViewController  <ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;

@property (nonatomic, copy) NSMutableArray *Laws;

@end
