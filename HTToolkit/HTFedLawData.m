//
//  HTFedLawData.m
//  HTToolkit
//
//  Created by Everett Williams on 5/31/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import "HTFedLawData.h"

@implementation HTFedLawData

-(id)init:(NSString *)caseName summary:(NSString *)summary link:(NSString *)link{
    self = [super init];
    if(self){
        _caseName = caseName;
        _summary = summary;
        _link = link;
        return self;
    }
    
    return nil;
}

@end
