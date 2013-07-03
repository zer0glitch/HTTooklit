//
//  HTFedLawData.h
//  HTToolkit
//
//  Created by Everett Williams on 5/31/13.
//  Copyright (c) 2013 SRC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTFedLawData : NSObject

@property (nonatomic, copy) NSString *caseName;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *link;

-(id)init: (NSString *)caseName summary:(NSString *) summary link:(NSString *) link;

@end
