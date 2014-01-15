//
//  HTSerCityViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/14/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface HTSerCityViewController : UITableViewController <ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;

@property (nonatomic,copy) NSMutableArray* list;
@property (nonatomic,copy) NSMutableArray* cities;

@end
