//
//  HTServiceData.h
//  HTToolkit
//
//  Created by Everett Williams on 6/11/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTServiceData : NSObject

@property (nonatomic, copy) NSString * info;
@property (nonatomic, copy) NSString * state;
@property (nonatomic, copy) NSString * agency;
@property (nonatomic, copy) NSString * address;
@property (nonatomic, copy) NSString * gender;
@property (nonatomic, copy) NSString * city;
@property (nonatomic, copy) NSMutableArray * phoneNumbers;

-(id)init: (NSString*)state city:(NSString*) city gender:(NSString*)gender agency:(NSString*)agency address:(NSString*)address info:(NSString*)info;

-(void)addNumber:(NSString *) num;

@end
