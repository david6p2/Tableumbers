//
//  DosTresTableViewCell.m
//  TableNumbers
//
//  Created by David Céspedes on 26/08/16.
//  Copyright © 2016 LSR Marketing Service. All rights reserved.
//

#import "DosTresTableViewCell.h"

@implementation DosTresTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.textLabel.textColor = [UIColor colorWithRed:1 green:212/255 blue:212/255 alpha:0.75];
    self.textLabel.textAlignment = NSTextAlignmentRight;
    [self setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, 10)];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
