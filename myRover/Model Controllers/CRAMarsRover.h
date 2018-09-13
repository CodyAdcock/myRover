//
//  CRAMarsRover.h
//  myRover
//
//  Created by Cody on 9/12/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CRAMarsRoverStatus) {
    CRAMarsRoverStatusActive,
    CRAMarsRoverStatusComplete,
};

@interface CRAMarsRover : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, strong, readonly) NSDate *launchDate;
@property (nonatomic, strong, readonly) NSDate *landingDate;

@property (nonatomic, readonly) CRAMarsRoverStatus status;

@property (nonatomic, readonly) NSInteger maxSol;
@property (nonatomic, strong, readonly) NSDate *maxDate;

@property (nonatomic, readonly) NSInteger numberOfPhotos;

@property (nonatomic, strong, readonly) NSArray *solDescriptions;

@end
