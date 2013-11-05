//
//  NHFakeStudents.m
//  Week 3
//
//  Created by Ryan Johnson on 11/4/13.
//  Copyright (c) 2013 NHCC. All rights reserved.
//

#import "NHFakeStudent.h"


NSString * const NHFakeStudentDidLogoutNotification = @"NHFakeStudentDidLogoutNotification";

@implementation NHFakeStudent

+ (NSMutableArray*) allFakeStudents {
  static dispatch_once_t onceToken;
  static NSMutableArray * allStudents;
  dispatch_once(&onceToken, ^{
    allStudents = [[NSMutableArray alloc] init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"students" ofType:@"plist"];
    NSMutableArray *students = [[NSMutableArray alloc]initWithContentsOfFile:path];
    for(NSDictionary *studentDictionary in students) {
      NHFakeStudent *student = [[NHFakeStudent alloc] init];
      [student setValuesForKeysWithDictionary:studentDictionary];
      [allStudents addObject:student];
    }
  });
  
  return allStudents;
}

- (UIImage *) image {
  return [UIImage imageNamed:self.imageName];
}

@end
