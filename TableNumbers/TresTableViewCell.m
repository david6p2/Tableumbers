//
//  TresTableViewCell.m
//  TableNumbers
//
//  Created by David Céspedes on 26/08/16.
//  Copyright © 2016 LSR Marketing Service. All rights reserved.
//

#import "TresTableViewCell.h"

@implementation TresTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.textLabel.textColor = [UIColor blueColor];
    self.textLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
