/*
 Copyright (c) 2014 Scientific Research Corporation
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */
//
//  HTViewController.h
//  HTToolkit
//
//  Created by Everett Williams on 6/5/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//
//  Used to contain the information of all alliances, including federal alliances.
//

#import <UIKit/UIKit.h>
#import "HTAllianceData.h"
#import <iAd/iAd.h>
#import "HTContactUsViewController.h"

@interface HTAllianceViewController : UITableViewController<ADBannerViewDelegate> {
    
    ADBannerView *adView;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;
@property (nonatomic, copy) NSMutableArray *USattorneys;
@property (nonatomic, copy) NSMutableArray *attorneyGenerals;
@property (nonatomic, copy) NSMutableArray *districtAttornies;
@property (nonatomic, copy) NSMutableArray *fed;

- (IBAction)contactUsButtonClick:(id)sender;

@end
