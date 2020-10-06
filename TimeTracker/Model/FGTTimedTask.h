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

//Use nonatomic to prevent over release (Dont increase ARC count)
//Copy will create a new object copy/pointer every time is changed
@property (nonatomic, copy) NSString *client;
@property (nonatomic,copy) NSString *summary;
@property (nonatomic) double rate;
@property (nonatomic) double hours;

//Use readonly to crete our own setter instead of automatically create it
@property (readonly,nonatomic) double total;

- (instancetype)initWithClient: (NSString *)client summary:(NSString *)summary rate: (double)rate hours: (double)hours;


@end

NS_ASSUME_NONNULL_END
