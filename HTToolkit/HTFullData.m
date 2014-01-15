//
//  HTFullData.m
//  HTToolkit
//
//  Created by Everett Williams on 5/28/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTFullData.h"

@implementation HTFullData

-(id)initWithName:(NSString *)state jurisdiction:(NSString *)jurisdiction agencyName:(NSString *) agencyName contact:(NSString *)contact email:(NSString *)email {
    self = [super init];
    if(self){
        _state = state;
        _jurisdiction = jurisdiction;
        _agencyName = agencyName;
        _contact = contact;
        _email = email;
        _phoneNumbers = [[NSMutableArray alloc]init];
        return self;
    }
    
    return nil;
}

-(void)addNumber:(NSString *) num{
    
    if (!_phoneNumbers) {
        _phoneNumbers = [[NSMutableArray alloc]init];
    }
    NSLog(@"Adding Phone Number %@ to %@", num, _contact);
    [self.phoneNumbers addObject:num];
}

-(void)printNumbers {
    NSLog(@"print %d numbers", _phoneNumbers.count);
    for (int i=0;i<self.phoneNumbers.count;i++) {
        NSLog(@"Phone : %@", [self.phoneNumbers objectAtIndex:i]);
    }
}

@end
