//
//  HTUSstateViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 7/10/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface HTUSstateViewController : UITableViewController
<ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;

@property (nonatomic, copy) NSMutableArray *districts;
@property (nonatomic, copy) NSMutableArray *list;

@end
