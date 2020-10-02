//
//  FGTTimedTask.h
//  TimeTracker
//
//  Created by FGT MAC on 10/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FGTTimedTask : NSObject

@property NSString *client;
@property NSString *summary;
@property NSNumber *rate;
@property NSNumber *hours;
@property (readonly) NSNumber *total;

- (instancetype)initWithClient: (NSString *)client summary:(NSString *)summary rate: (NSNumber *)rate hours: (NSNumber *)hours total: (NSNumber *)total;


@end

NS_ASSUME_NONNULL_END
