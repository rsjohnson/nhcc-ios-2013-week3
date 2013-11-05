//
//  NHFakeStudents.h
//  Week 3
//
//  Created by Ryan Johnson on 11/4/13.
//  Copyright (c) 2013 NHCC. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const NHFakeStudentDidLogoutNotification;

@interface NHFakeStudent : NSObject

+ (NSMutableArray*) allFakeStudents;
+ (void) saveAllStudents;
+ (void) loadAllStudents;


@property (strong) NSString *name;
@property (strong) NSString *imageName;
@property (strong, readonly) UIImage *image;

@end
