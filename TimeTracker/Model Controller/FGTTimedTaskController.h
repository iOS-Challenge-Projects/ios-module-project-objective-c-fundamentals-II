//
//  FGTTimedTaskController.h
//  TimeTracker
//
//  Created by FGT MAC on 10/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FGTTimedTask.h"

NS_ASSUME_NONNULL_BEGIN

@interface FGTTimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray<FGTTimedTask *> *timeTasks;

- (instancetype)initWithTimeTasks: (NSMutableArray *)timeTasks;

- (void)createTimedTaskWithClient: (NSString *)client summary:(NSString *)summary rate: (NSNumber *)rate hours: (NSNumber *)hours;
 
@end

NS_ASSUME_NONNULL_END
