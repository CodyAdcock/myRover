//
//  CRAMarsRoverClient.m
//  myRover
//
//  Created by Cody on 9/12/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

#import "CRAMarsRoverClient.h"


@implementation CRAMarsRoverClient

- (void) fetchAllMarsRoversWithCompletion: (void(^)(NSArray *roverNames, NSError *error))completion{
    
    
    
}
- (void)fetchMissionManifestForRoverNamed:(NSString *)name completion:(void(^)(CRAMarsRover *rover, NSError *error))completion{
    
    
    
}
- (void)fetchPhotosFromRover:(CRAMarsRover *)rover onSol:(NSInteger)sol completion:(void(^)(NSArray *photos, NSError *error))completion{
    
    
    
}
- (void)fetchImageDataForPhoto:(CRAMarsPhoto *)photo completion:(void(^)(NSData *imageData, NSError *error))completion{
    
    
    
}

+ (NSString *)apiKey {
    static NSString *apiKey = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *apiKeysURL = [[NSBundle mainBundle] URLForResource:@"APIKeys" withExtension:@"plist"];
        if (!apiKeysURL) {
            NSLog(@"Error! APIKeys file not found!");
            return;
        }
        NSDictionary *apiKeys = [[NSDictionary alloc] initWithContentsOfURL:apiKeysURL];
        apiKey = apiKeys[@"APIKey"];
    });
    return apiKey;
}

@end
