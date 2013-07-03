//
//  HTStateLawData.m
//  HTToolkit
//
//  Created by Everett Williams on 6/3/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTStateLawData.h"

@implementation HTStateLawData

-(id)init:(NSString *)caseName summary:(NSString *)summary link:(NSString *)link state:(NSString *)state{
    self = [super init];
    if(self){
        _caseName = caseName;
        _summary = summary;
        _link = link;
        _state = state;
        return self;
    }
    
    return nil;
}

@end
