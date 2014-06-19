//
//  WalletTableViewCell.m
//  KumaMoney
//
//  Created by kuma on 2014. 6. 20..
//  Copyright (c) 2014년 kuma. All rights reserved.
//

#import "WalletTableViewCell.h"

@implementation WalletTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
