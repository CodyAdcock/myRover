//
//  CRASolDescription.h
//  myRover
//
//  Created by Cody on 9/12/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRASolDescription : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, readonly) NSInteger sol;
@property (nonatomic, readonly) NSInteger numberOfPhotos;
@property (nonatomic, strong, readonly) NSArray *cameras;

@end
