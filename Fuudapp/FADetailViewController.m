//
//  FADetailViewController.m
//  Fuudapp
//
//  Created by Abbin Varghese on 22/09/16.
//  Copyright © 2016 Fuudapp. All rights reserved.
//

#import "FADetailViewController.h"
#import "FADetailTableViewCellOne.h"

@interface FADetailViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *detailTableView;

@end

@implementation FADetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailTableView.estimatedRowHeight = 44;
    self.detailTableView.rowHeight = UITableViewAutomaticDimension;
    [self.detailTableView setContentInset:UIEdgeInsetsMake(-22, 0, 0, 0)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FADetailTableViewCellOne *cell = [tableView dequeueReusableCellWithIdentifier:@"FADetailTableViewCellOne"];
    return cell;
}

@end
