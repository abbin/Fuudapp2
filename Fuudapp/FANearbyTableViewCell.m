//
//  FANearbyTableViewCell.m
//  Fuudapp
//
//  Created by Abbin Varghese on 22/09/16.
//  Copyright © 2016 Fuudapp. All rights reserved.
//

#import "FANearbyTableViewCell.h"

@interface FANearbyTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UIImageView *cellUserImageView;
@property (weak, nonatomic) IBOutlet UILabel *cellUserNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *cellItemNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *cellRestaurantNameLabel;

@end

@implementation FANearbyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.cellImageView.layer.cornerRadius = [UIScreen mainScreen].bounds.size.width/60;
    self.cellImageView.layer.masksToBounds = YES;
    self.cellUserImageView.layer.cornerRadius = 15;
    self.cellUserImageView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
