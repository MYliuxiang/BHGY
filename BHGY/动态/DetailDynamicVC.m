//
//  DetailDynamicVC.m
//  BHGY
//
//  Created by liuxiang on 2020/7/12.
//  Copyright © 2020 liuxiang. All rights reserved.
//

#import "DetailDynamicVC.h"

@interface DetailDynamicVC ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation DetailDynamicVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.customNavBar.title = @"动态详情";
  
}


#pragma  mark --------UITableView Delegete----------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *identifire = @"cellID";
    DynamicCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"DynamicCell" owner:nil options:nil] lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    cell.model = self.model;
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.tableView cellHeightForIndexPath:indexPath model:self.model keyPath:@"model" cellClass:[DynamicCell class] contentViewWidth:kScreenWidth];
    
    //    return [self.tableView cellHeightForIndexPath:indexPath cellClass:[DynamicCell class] cellContentViewWidth:kScreenWidth cellDataSetting:^(UITableViewCell * _Nonnull cell) {
    //
    //        DynamicCell *myCell = (DynamicCell *)cell;
    //        myCell.model = self.dataList[indexPath.section];
    //
    //    }];
    
    //    return [DynamicCell whc_CellHeightForIndexPath:indexPath tableView:tableView];
    
    return [self.tableView cellHeightForIndexPath:indexPath cellContentViewWidth:kScreenWidth tableView:self.tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 10;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
    
}
- (UIView *)tableView:(UITableView *)tableView viewFooterInSection:(NSInteger)section
{
    return [UIView new];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //    DemoVC *vc = [[DemoVC alloc] init];
    //    [self.navigationController pushViewController:vc animated:YES];
    //
}


@end
