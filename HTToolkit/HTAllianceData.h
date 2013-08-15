//
//  HTAllianceData.h
//  HTToolkit
//
//  Created by Everett Williams on 6/5/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//
//  Used in all alliance information, such as district attorneys, attorney generals, and US attorneys.
//

#import <Foundation/Foundation.h>

@interface HTAllianceData : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *district;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *website;
@property (nonatomic, copy) NSString *contact;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSMutableArray *phoneNumbers;
@property (nonatomic, copy) NSString *address;

-(id)init: (NSString *)title state:(NSString *)state district:(NSString*)district contact:(NSString *)contact summary:(NSString *) summary address:(NSString *) address website:(NSString *)website email:(NSString *)email;
-(void)addNumber: (NSString *)num;

@end
