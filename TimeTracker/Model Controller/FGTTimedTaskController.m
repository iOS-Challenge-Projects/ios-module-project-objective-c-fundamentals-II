//
//  FGTTimedTaskController.m
//  TimeTracker
//
//  Created by FGT MAC on 10/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "FGTTimedTaskController.h"

@implementation FGTTimedTaskController


//Implement the init method to set the properties
- (instancetype)initWithTimeTasks: (NSMutableArray *)timeTasks{
    
    self = [super init];
    
    if (self){
        _timeTasks = [[NSMutableArray alloc]  init];
    }
    
    return self;
}


//Implement the second method
- (void)createTimedTaskWithClient: (NSString *)client summary:(NSString *)summary rate: (NSNumber *)rate hours: (NSNumber *)hours{
 
    //Init a new FGTTimedTask object
    FGTTimedTask *newTask = [[FGTTimedTask alloc] initWithClient:client summary:summary rate:rate hours:hours];
    
    //Add the newly created FGTTimedTask object to the array of FGTTimedTask's
    [_timeTasks addObject:newTask];
};


@end
