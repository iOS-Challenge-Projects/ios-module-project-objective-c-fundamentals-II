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

@property (nonatomic) NSMutableArray<FGTTimedTask *> *timeTasks;

- (void)createTimedTaskWithClient: (NSString *)client summary:(NSString *)summary rate: (NSString *)rate hours: (NSString *)hours;
 
@end

NS_ASSUME_NONNULL_END
