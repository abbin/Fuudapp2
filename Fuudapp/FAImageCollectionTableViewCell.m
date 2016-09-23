//
//  FAImageCollectionTableViewCell.m
//  Fuudapp
//
//  Created by Abbin Varghese on 23/09/16.
//  Copyright © 2016 Fuudapp. All rights reserved.
//

#import "FAImageCollectionTableViewCell.h"
#import "FAImageCollectionViewCell.h"

@interface FAImageCollectionTableViewCell ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation FAImageCollectionTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    FAImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FAImageCollectionViewCell" forIndexPath:indexPath];
    return cell;
}
@end
