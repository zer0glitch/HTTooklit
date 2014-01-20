//
//  DataElement.h
//  HTToolkit
//
//  Created by james whetsell on 1/17/14.
//  Copyright (c) 2014 SRC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataElement : NSObject {
    NSInteger groupKey;
    NSInteger oid;
    NSInteger dataKey;
    NSString *fieldName;
    NSString *value;
    NSInteger fieldType;
}

@property (nonatomic) NSInteger groupKey;
@property (nonatomic) NSInteger oid;
@property (nonatomic) NSInteger dataKey;
@property (nonatomic, retain) NSString *fieldName;
@property (nonatomic, retain) NSString *value;
@property (nonatomic) NSInteger fieldType;

@end
