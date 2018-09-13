//
//  CRASolDescription.m
//  myRover
//
//  Created by Cody on 9/12/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

#import "CRASolDescription.h"

@implementation CRASolDescription

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _sol = [dictionary[@"sol"] integerValue];
        _numberOfPhotos = [dictionary[@"total_photos"] integerValue];
        _cameras = [dictionary[@"cameras"] copy];
    }
    return self;
}

@end

