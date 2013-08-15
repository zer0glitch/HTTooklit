//
//  HTAllianceData.m
//  HTToolkit
//
//  Created by Everett Williams on 6/5/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//
//  Allows for objects of this class to be created and add phone numbers through the use of a function.
//

#import "HTAllianceData.h"

@implementation HTAllianceData

-(id)init:(NSString *)title state:(NSString *)state district:(NSString *)district contact:(NSString *)contact summary:(NSString *)summary address:(NSString *)address website:(NSString *)website email:(NSString *)email{
    self = [super init];
    if(self){
        _address = address;
        _title = title;
        _summary = summary;
        _district = district;
        _state = state;
        _contact = contact;
        _email = email;
        _website = website;
        _phoneNumbers = [[NSMutableArray alloc]init];
        return self;
    }
    return nil;
}

-(void)addNumber:(NSString *) num{
    [self.phoneNumbers addObject:num];
}

@end
