//
//  NHPintrestActivity.m
//  Week 3
//
//  Created by Ryan Johnson on 11/4/13.
//  Copyright (c) 2013 NHCC. All rights reserved.
//

#import "NHPintrestActivity.h"

@implementation NHPintrestActivity
{
  UIImage * _image;
  NSString * _string;
}


- (NSString*) activityType {
  return @"net.nhcc.pinterest";
}

- (NSString*) activityTitle {
  return @"Pinterest";
}

- (UIImage*) activityImage {
  return [UIImage imageNamed:nil];
}

- (BOOL) canPerformWithActivityItems:(NSArray *)activityItems {
  
  
  return YES;
}

- (void) performActivity {
  //call to pinterest API do some
  [self activityDidFinish:YES];
}

@end
