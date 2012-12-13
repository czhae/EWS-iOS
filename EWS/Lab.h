//
//  Lab.h
//  EWS
//
//  Created by Jay Chae  on 12/5/12.
//  Copyright (c) 2012 com.chaebacca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Lab : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *buildingName;
@property (nonatomic, copy) NSString *computerPlatformName;

@property (nonatomic) NSUInteger maxCapacity;
@property (nonatomic) NSUInteger currentLabUsage;



-(id)initWithName:(NSString *)labName
        Capacity:(NSUInteger)labCapacity
        Building:(NSString *)buildingName
        Platform:(NSString *)computerPlatFormName;



//-(void) setUsageToLab:(NSUInteger)usage;
@end
