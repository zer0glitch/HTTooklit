//
//  HTStateLawData.h
//  HTToolkit
//
//  Created by Everett Williams on 6/3/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTStateLawData : NSObject

@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *caseName;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *link;

-(id)init: (NSString *)caseName summary:(NSString *) summary link:(NSString *) link state:(NSString *)state;

@end
