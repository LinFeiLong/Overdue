//
//  CCTask.m
//  Overdue
//
//  Created by Fernand LIME on 16/07/14.
//  Copyright (c) 2014 Fernand LIME. All rights reserved.
//

#import "CCTask.h"

@implementation CCTask

-(id)initWithData:(NSDictionary *)data
{
    self = [super init];
    
    if (self)
    {
        self.title = data[TASK_TITLE];
        self.description = data[TASK_DESCRIPTION];
        self.date = data[TASK_DATE];
        self.isCompleted = [data[TASK_COMPLETION] boolValue];
    }
    
    return self;
}

-(id)init
{
    self = [self initWithData:nil];
    
    return self;
}


@end
