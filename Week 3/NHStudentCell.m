//
//  NHStudentCell.m
//  Week 3
//
//  Created by Ryan Johnson on 11/4/13.
//  Copyright (c) 2013 NHCC. All rights reserved.
//

#import "NHStudentCell.h"

@implementation NHStudentCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) prepareForReuse {
  self.studentImageView.image = nil;
  self.nameLabel.text = nil;
}

@end
