//
//  HTFullData.h
//  HTToolkit
//
//  Created by Everett Williams on 5/28/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTFullData : NSObject

@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *jurisdiction;
@property (nonatomic, copy) NSString *agencyName;
@property (nonatomic, copy) NSMutableArray *phoneNumbers;
@property (nonatomic, copy) NSString *contact;
@property (nonatomic, copy) NSString *email;

-(id)initWithName: (NSString *)state jurisdiction:(NSString *) jurisdiction agencyName:(NSString *) agencyName contact:(NSString *)contact email:(NSString *)email;
-(void)addNumber: (NSString *)num;

@end
