//
//  CCTask.h
//  Overdue
//
//  Created by Fernand LIME on 16/07/14.
//  Copyright (c) 2014 Fernand LIME. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCTask : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSDate *date;
@property (nonatomic) BOOL isCompleted;

-(id)initWithData:(NSDictionary *)data;

@end
