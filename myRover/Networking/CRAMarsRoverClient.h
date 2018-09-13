//
//  CRAMarsRoverClient.h
//  myRover
//
//  Created by Cody on 9/12/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CRAMarsPhoto.h"
#import "CRAMarsRover.h"

@class CRAMarsRover;
@class CRAMarsPhoto;

@interface CRAMarsRoverClient : NSObject

- (void) fetchAllMarsRoversWithCompletion: (void(^)(NSArray *roverNames, NSError *error))completion;
- (void)fetchMissionManifestForRoverNamed:(NSString *)name completion:(void(^)(CRAMarsRover *rover, NSError *error))completion;
- (void)fetchPhotosFromRover:(CRAMarsRover *)rover onSol:(NSInteger)sol completion:(void(^)(NSArray *photos, NSError *error))completion;
- (void)fetchImageDataForPhoto:(CRAMarsPhoto *)photo completion:(void(^)(NSData *imageData, NSError *error))completion;

@end
