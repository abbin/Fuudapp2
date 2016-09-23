//
//  FADetailViewController.m
//  Fuudapp
//
//  Created by Abbin Varghese on 22/09/16.
//  Copyright © 2016 Fuudapp. All rights reserved.
//

#import "FADetailViewController.h"
#import "FADetailTableViewCellOne.h"
#import "FAColor.h"
#import "FAImageCollectionTableViewCell.h"
#import "FAIsOpenTableViewCell.h"
#import "FAWorkingdaysTableViewCell.h"
#import "FAReviewTableViewCell.h"
#import "FAReadMoreReviewTableViewCell.h"
#import "FAHeaderTableViewCell.h"

@interface FADetailViewController ()<UITableViewDelegate,UITableViewDataSource,UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *detailTableView;

@end

@implementation FADetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailTableView.estimatedRowHeight = 44;
    self.detailTableView.rowHeight = UITableViewAutomaticDimension;
//    [self.detailTableView setContentInset:UIEdgeInsetsMake(-22, 0, 0, 0)];
    [self.navigationController.interactivePopGestureRecognizer setDelegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        FADetailTableViewCellOne *cell = [tableView dequeueReusableCellWithIdentifier:@"FADetailTableViewCellOne"];
        return cell;
    }
    else if (indexPath.row == 1){
        FAIsOpenTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAIsOpenTableViewCell"];
        NSMutableAttributedString *atString = [[NSMutableAttributedString alloc] initWithString:@"Open now : 9 AM to 7 PM"];
        [atString addAttribute:NSFontAttributeName
                         value:[UIFont fontWithName:@"HelveticaNeue" size:13.0]
                         range:NSMakeRange(0, atString.length)];
        [atString addAttribute:NSFontAttributeName
                         value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:15.0]
                         range:NSMakeRange(0, 8)];
        [atString addAttribute:NSForegroundColorAttributeName
                         value:[FAColor FAGreen]
                         range:NSMakeRange(0, 8)];
        cell.cellTextLabel.attributedText = atString;
        return cell;
    }
    else if (indexPath.row == 2){
        FAHeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAHeaderTableViewCell"];
        cell.cellTextLabel.text = @"Photos";
        return cell;
    }
    else if (indexPath.row == 3){
        FAImageCollectionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAImageCollectionTableViewCell"];
        return cell;
    }
    else if (indexPath.row == 4){
        FAHeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAHeaderTableViewCell"];
        cell.cellTextLabel.text = @"Reviews";
        return cell;
    }
    else if (indexPath.row == 5){
        FAReviewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAReviewTableViewCell"];
        return cell;
    }
    else if (indexPath.row == 6){
        FAReviewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAReviewTableViewCell"];
        return cell;
    }
    else if (indexPath.row == 7){
        FAReadMoreReviewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAReadMoreReviewTableViewCell"];
        return cell;
    }
    else if (indexPath.row == 8){
        FAHeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAHeaderTableViewCell"];
        cell.cellTextLabel.text = @"Working Hours";
        return cell;
    }
    else if (indexPath.row == 9){
        FAWorkingdaysTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FAWorkingdaysTableViewCell"];
        return cell;
    }
    else{
        return nil;
    }
}

- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
