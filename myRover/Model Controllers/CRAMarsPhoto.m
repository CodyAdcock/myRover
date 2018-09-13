//
//  CRAMarsPhoto.m
//  myRover
//
//  Created by Cody on 9/12/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

#import "CRAMarsPhoto.h"

@implementation CRAMarsPhoto

+ (NSDateFormatter *)dateFormatter
{
    static NSDateFormatter *dateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatter.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
        dateFormatter.dateFormat = @"yyyy-MM-dd";
    });
    return dateFormatter;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        if (!dictionary[@"id"]) { return nil; }
        _identifier = [dictionary[@"id"] integerValue];
        _sol = [dictionary[@"sol"] integerValue];
        _cameraName = dictionary[@"camera"][@"name"];
        NSString *earthDateString = dictionary[@"earth_date"];
        _earthDate = [[[self class] dateFormatter] dateFromString:earthDateString];
        _imageURL = [NSURL URLWithString:dictionary[@"img_src"]];
        if (!_imageURL) { return nil; }
    }
    return self;
}

- (BOOL)isEqual:(id)object
{
    if (!object || ![object isKindOfClass:[CRAMarsPhoto class]]) { return NO; }
    CRAMarsPhoto *photo = object;
    if (photo.identifier != self.identifier) { return NO; }
    if (photo.sol != self.sol) { return NO; }
    if (![photo.cameraName isEqualToString:self.cameraName]) { return NO; }
    if (![photo.earthDate isEqualToDate:self.earthDate]) { return NO; }
    return YES;
}

- (NSUInteger)hash
{
    return (NSUInteger)self.identifier;
}

@end

