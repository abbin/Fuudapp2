//
//  FirstViewController.m
//  Fuudapp
//
//  Created by Abbin Varghese on 22/09/16.
//  Copyright © 2016 Fuudapp. All rights reserved.
//

#import "FirstViewController.h"
#import "FANearbyTableViewCell.h"
#import "FADetailViewController.h"
#import "UIViewController+YMSPhotoHelper.h"

@interface FirstViewController ()<UITableViewDataSource,UITableViewDelegate,YMSPhotoPickerViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *itemsTableview;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.itemsTableview.estimatedRowHeight = 301;
    self.itemsTableview.rowHeight = UITableViewAutomaticDimension;
    [self.itemsTableview setContentInset:UIEdgeInsetsMake(-22, 0, 0, 0)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FANearbyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FANearbyTableViewCell"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FADetailViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"FADetailViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)titleButtonClicked:(id)sender {
    
}

- (IBAction)add:(id)sender {
    // Custom selection number
    YMSPhotoPickerViewController *pickerViewController = [[YMSPhotoPickerViewController alloc] init];
    pickerViewController.numberOfPhotoToSelect = 3;
    
    UIColor *customColor = [UIColor colorWithRed:248.0/255.0 green:217.0/255.0 blue:44.0/255.0 alpha:1.0];
    
    pickerViewController.theme.titleLabelTextColor = [UIColor blackColor];
    pickerViewController.theme.navigationBarBackgroundColor = customColor;
    pickerViewController.theme.tintColor = [UIColor blackColor];
    pickerViewController.theme.orderTintColor = customColor;
    pickerViewController.theme.orderLabelTextColor = [UIColor blackColor];
    pickerViewController.theme.cameraVeilColor = customColor;
    pickerViewController.theme.cameraIconColor = [UIColor whiteColor];
    pickerViewController.theme.statusBarStyle = UIStatusBarStyleDefault;
    
    [self yms_presentCustomAlbumPhotoView:pickerViewController delegate:self];
}

@end
