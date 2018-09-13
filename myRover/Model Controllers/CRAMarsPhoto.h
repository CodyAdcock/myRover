//
//  CRAMarsPhoto.h
//  myRover
//
//  Created by Cody on 9/12/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRAMarsPhoto : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, readonly) NSInteger identifier;
@property (nonatomic, readonly) NSInteger sol;
@property (nonatomic, strong, readonly) NSString *cameraName;
@property (nonatomic, strong, readonly) NSDate *earthDate;

@property (nonatomic, strong, readonly) NSURL *imageURL;

@end

