//
//  HTServiceData.m
//  HTToolkit
//
//  Created by Everett Williams on 6/11/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTServiceData.h"

@implementation HTServiceData

-(id)init:(NSString *)state city:(NSString *) city gender:(NSString *) gender agency:(NSString *)agency address:(NSString *)address info:(NSString *)info{
    self = [super init];
    if(self){
        _gender = gender;
        _city = city;
        _info = info;
        _agency = agency;
        _address = address;
        _state = state;
        _phoneNumbers = [[NSMutableArray alloc]init];
        return self;
        
    }
    return nil;
}

-(void)addNumber:(NSString *) num{
    [self.phoneNumbers addObject:num];
}

@end
